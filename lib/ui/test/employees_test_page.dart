import 'package:cinema_app/gen/api/movie_api.swagger.dart';
import 'package:flutter/material.dart';

const baseUrl = "http://localhost:8080/api";

MovieApi movieApi = MovieApi.create(
  baseUrl: Uri.parse(baseUrl),
);

Future<void> hardCodeDelayed() async {
  await Future.delayed(const Duration(milliseconds: 500));
}

class EmployeesTestPage extends StatefulWidget {
  const EmployeesTestPage({super.key});

  @override
  State<EmployeesTestPage> createState() => _TestPageState();
}

class _TestPageState extends State<EmployeesTestPage> {
  List<EmployeeResponse>? employees = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchCustomer();
  }

  Future<void> fetchCustomer() async {
    setState(() => isLoading = true);
    try {
      final response = await movieApi.employeesGet();
      await hardCodeDelayed();
      setState(() {
        employees = response.body;
        isLoading = false;
      });
    } catch (e) {
      setState(() => isLoading = false);
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employees'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: fetchCustomer,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AddEmployeesPage.go(context);
        },
        child: const Icon(Icons.add),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : SafeArea(
              child: RefreshIndicator(
                onRefresh: () async => await fetchCustomer(),
                child: employees == null || employees!.isEmpty
                    ? const Center(child: Text('No Employees'))
                    : ListView.builder(
                        itemCount: employees?.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            onTap: () async {
                              await EmployeesDetailPage.go(context, employees?[index].employeeId ?? 0);
                              await fetchCustomer();
                            },
                            leading: const CircleAvatar(
                              child: Icon(Icons.person, color: Colors.grey),
                            ),
                            title: Text(employees?[index].name ?? ''),
                            subtitle: Text(employees?[index].email ?? ''),
                          );
                        },
                      ),
              ),
            ),
    );
  }
}

class EmployeesDetailPage extends StatefulWidget {
  const EmployeesDetailPage({super.key, required this.id});

  final int id;

  static Future<void> go(BuildContext context, int id) async {
    await Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => EmployeesDetailPage(id: id),
    ));
  }

  @override
  State<EmployeesDetailPage> createState() => _EmployeesDetailPageState();
}

class _EmployeesDetailPageState extends State<EmployeesDetailPage> {
  EmployeeResponse? employee;
  bool isLoading = false;
  late final TextEditingController nameController;
  late final TextEditingController emailController;
  late final TextEditingController phoneController;
  late final TextEditingController positionController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    positionController = TextEditingController();
  }

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    await fetchEmployeeDetail(widget.id);
  }

  Future<void> fetchEmployeeDetail(int id) async {
    setState(() => isLoading = true);
    try {
      final response = await movieApi.employeesIdGet(id: id);
      employee = response.body;
      isLoading = false;
      await hardCodeDelayed();
      setState(() => isLoading = false);

      if (response.statusCode == 200) {
        setState(() {
          nameController.text = employee?.name ?? '';
          emailController.text = employee?.email ?? '';
          phoneController.text = employee?.phone ?? '';
          positionController.text = employee?.position ?? '';
        });
      } else {
        debugPrint("Error fetching employee: ${response.error.toString()}");
      }
    } catch (error) {
      setState(() => isLoading = false);
      debugPrint("Error fetching employee: ${error.toString()}");
    }
  }

  // update employee
  Future<void> updateEmployee() async {
    setState(() => isLoading = true);
    try {
      final response = await movieApi.employeesPut(
        body: EmployeeRequest(
          employeeId: employee?.employeeId,
          name: nameController.text,
          email: emailController.text,
          phone: phoneController.text,
          position: positionController.text,
          password: '',
        ),
      );
      await hardCodeDelayed();

      if (response.statusCode == 200) {
        setState(() {
          isLoading = false;
          Navigator.pop(context);
        });
      } else {
        setState(() => isLoading = false);
        debugPrint("Error updating employee: ${response.statusCode}");
      }
    } catch (error) {
      setState(() => isLoading = false);
      debugPrint("Error updating employee: ${error.toString()}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Employee Detail'), actions: [
        IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: () async {
            await fetchEmployeeDetail(widget.id);
          },
        )
      ]),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 30),
                const CircleAvatar(
                  radius: 70,
                  child: Icon(Icons.person, size: 100),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 100, child: Text("Họ và Tên:")),
                          Expanded(
                            child: TextField(
                              controller: nameController,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const SizedBox(width: 100, child: Text("Email:")),
                          Expanded(
                            child: TextField(
                              controller: emailController,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const SizedBox(width: 100, child: Text("SĐT:")),
                          Expanded(
                            child: TextField(
                              controller: phoneController,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const SizedBox(width: 100, child: Text("Chức vụ:")),
                          Expanded(
                            child: TextField(
                              controller: positionController,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: ElevatedButton(
                          onPressed: () async {
                            await updateEmployee();
                          },
                          child: const Text("Update"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}

class AddEmployeesPage extends StatefulWidget {
  const AddEmployeesPage({super.key});

  static Future<void> go(BuildContext context) async {
    await Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const AddEmployeesPage(),
    ));
  }

  @override
  State<AddEmployeesPage> createState() => _AddEmployeesPageState();
}

class _AddEmployeesPageState extends State<AddEmployeesPage> {
  bool isLoading = false;
  var errorMessage = '';
  late final TextEditingController nameController;
  late final TextEditingController emailController;
  late final TextEditingController phoneController;
  late final TextEditingController positionController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    positionController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    positionController.dispose();
    super.dispose();
  }

  Future<void> addEmployee() async {
    setState(() => isLoading = true);
    try {
      final response = await movieApi.employeesPost(
        body: EmployeeRequest(
          name: nameController.text,
          email: emailController.text,
          phone: phoneController.text,
          position: positionController.text,
          password: '123456',
        ),
      );
      await hardCodeDelayed();
      setState(() => isLoading = false);
      if (response.statusCode == 201) {
        setState(() => errorMessage = '');
        Navigator.pop(context);
      } else {
        debugPrint("Error add employee: ${response.error.toString()}");
        setState(() => errorMessage = response.error.toString());
      }
    } catch (error) {
      setState(() => isLoading = false);
      debugPrint("Error add employee: ${error.toString()}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Employee')),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 100, child: Text("Họ và Tên:")),
                    Expanded(
                      child: TextField(
                        controller: nameController,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(width: 100, child: Text("Email:")),
                    Expanded(
                      child: TextField(
                        controller: emailController,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(width: 100, child: Text("SĐT:")),
                    Expanded(
                      child: TextField(
                        controller: phoneController,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(width: 100, child: Text("Chức vụ:")),
                    Expanded(
                      child: TextField(
                        controller: positionController,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: () async {
                      await addEmployee();
                    },
                    child: const Text("Add Employee"),
                  ),
                ),
                const SizedBox(height: 20),
                if (errorMessage.isNotEmpty) Text(errorMessage),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:cinema_app/gen/api/movie_api.swagger.dart';
import 'package:flutter/material.dart';

const baseUrl = "http://localhost:8080/api";

MovieApi movieApi = MovieApi.create(
  baseUrl: Uri.parse(baseUrl),
);

Future<void> hardCodeDelayed() async {
  await Future.delayed(const Duration(milliseconds: 500));
}

class CustomerTestPage extends StatefulWidget {
  const CustomerTestPage({super.key});

  @override
  State<CustomerTestPage> createState() => _TestPageState();
}

class _TestPageState extends State<CustomerTestPage> {
  List<CustomerResponse>? customers;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchCustomer();
  }

  Future<void> fetchCustomer() async {
    setState(() => isLoading = true);
    try {
      final response = await movieApi.customersGet();
      customers = response.body;
      isLoading = false;
      await hardCodeDelayed();
      setState(() {});
    } catch (_) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Customer List')),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : SafeArea(
              child: RefreshIndicator(
                onRefresh: () async => await fetchCustomer(),
                child: ListView.builder(
                  itemCount: customers?.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        CustomerDetail.go(context, customers?[index].customerId ?? 0);
                      },
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(customers?[index].avatar ?? "https://mighty.tools/mockmind-api/content/human/44.jpg"),
                      ),
                      title: Text(customers?[index].name ?? ''),
                      subtitle: Text(customers?[index].email ?? ''),
                    );
                  },
                ),
              ),
            ),
    );
  }
}

class CustomerDetail extends StatefulWidget {
  const CustomerDetail({super.key, required this.id});

  final int id;

  static void go(BuildContext context, int id) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => CustomerDetail(id: id),
    ));
  }

  @override
  State<CustomerDetail> createState() => _CustomerDetailState();
}

class _CustomerDetailState extends State<CustomerDetail> {
  CustomerResponse? customer;
  bool isLoading = false;

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    await fetchCustomerDetail(widget.id);
  }

  Future<void> fetchCustomerDetail(int id) async {
    setState(() => isLoading = true);
    try {
      final response = await movieApi.customersIdGet(id: id);
      customer = response.body;
      isLoading = false;
      await hardCodeDelayed();
      setState(() {});
    } catch (_) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Customer Detail'), actions: [
        IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: () async {
            await fetchCustomerDetail(widget.id);
          },
        )
      ]),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 30),
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(customer?.avatar ?? "https://mighty.tools/mockmind-api/content/human/44.jpg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Họ và Tên: ${customer?.name}"),
                      const Divider(),
                      const SizedBox(height: 10),
                      Text("Email: ${customer?.email}"),
                      const Divider(),
                      const SizedBox(height: 10),
                      Text("SĐT: ${customer?.phone}"),
                      const Divider(),
                      const SizedBox(height: 10),
                      Text("Membership: ${customer?.membershipStatus?.value}"),
                      const Divider(),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}

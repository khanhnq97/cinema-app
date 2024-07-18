import 'movie_api.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:chopper/chopper.dart' as chopper;
import 'movie_api.enums.swagger.dart' as enums;
export 'movie_api.enums.swagger.dart';
export 'movie_api.models.swagger.dart';

part 'movie_api.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class MovieApi extends ChopperService {
  static MovieApi create({
    ChopperClient? client,
    Authenticator? authenticator,
    Converter? converter,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$MovieApi(client);
    }

    final newClient = ChopperClient(
        services: [_$MovieApi()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$MovieApi(newClient);
  }

  ///List all movies
  Future<chopper.Response<List<MovieResponse>>> moviesGet() {
    generatedMapping.putIfAbsent(
        MovieResponse, () => MovieResponse.fromJsonFactory);

    return _moviesGet();
  }

  ///List all movies
  @Get(path: '/movies')
  Future<chopper.Response<List<MovieResponse>>> _moviesGet();

  ///Create a new movie
  Future<chopper.Response<MovieResponse>> moviesPost(
      {required MovieRequest? body}) {
    generatedMapping.putIfAbsent(
        MovieResponse, () => MovieResponse.fromJsonFactory);

    return _moviesPost(body: body);
  }

  ///Create a new movie
  @Post(
    path: '/movies',
    optionalBody: true,
  )
  Future<chopper.Response<MovieResponse>> _moviesPost(
      {@Body() required MovieRequest? body});

  ///Update details of a specific movie
  Future<chopper.Response<MovieResponse>> moviesPut(
      {required MovieRequest? body}) {
    generatedMapping.putIfAbsent(
        MovieResponse, () => MovieResponse.fromJsonFactory);

    return _moviesPut(body: body);
  }

  ///Update details of a specific movie
  @Put(
    path: '/movies',
    optionalBody: true,
  )
  Future<chopper.Response<MovieResponse>> _moviesPut(
      {@Body() required MovieRequest? body});

  ///Get details of a specific movie
  ///@param id
  Future<chopper.Response<MovieResponse>> moviesIdGet({required int? id}) {
    generatedMapping.putIfAbsent(
        MovieResponse, () => MovieResponse.fromJsonFactory);

    return _moviesIdGet(id: id);
  }

  ///Get details of a specific movie
  ///@param id
  @Get(path: '/movies/{id}')
  Future<chopper.Response<MovieResponse>> _moviesIdGet(
      {@Path('id') required int? id});

  ///Delete a specific movie
  ///@param id
  Future<chopper.Response> moviesIdDelete({required int? id}) {
    return _moviesIdDelete(id: id);
  }

  ///Delete a specific movie
  ///@param id
  @Delete(path: '/movies/{id}')
  Future<chopper.Response> _moviesIdDelete({@Path('id') required int? id});

  ///List all showtimes
  Future<chopper.Response<List<ShowtimeResponse>>> showtimesGet() {
    generatedMapping.putIfAbsent(
        ShowtimeResponse, () => ShowtimeResponse.fromJsonFactory);

    return _showtimesGet();
  }

  ///List all showtimes
  @Get(path: '/showtimes')
  Future<chopper.Response<List<ShowtimeResponse>>> _showtimesGet();

  ///Create a new showtime
  Future<chopper.Response<ShowtimeResponse>> showtimesPost(
      {required ShowtimeRequest? body}) {
    generatedMapping.putIfAbsent(
        ShowtimeResponse, () => ShowtimeResponse.fromJsonFactory);

    return _showtimesPost(body: body);
  }

  ///Create a new showtime
  @Post(
    path: '/showtimes',
    optionalBody: true,
  )
  Future<chopper.Response<ShowtimeResponse>> _showtimesPost(
      {@Body() required ShowtimeRequest? body});

  ///Update details of a specific showtime
  Future<chopper.Response<ShowtimeResponse>> showtimesPut(
      {required ShowtimeRequest? body}) {
    generatedMapping.putIfAbsent(
        ShowtimeResponse, () => ShowtimeResponse.fromJsonFactory);

    return _showtimesPut(body: body);
  }

  ///Update details of a specific showtime
  @Put(
    path: '/showtimes',
    optionalBody: true,
  )
  Future<chopper.Response<ShowtimeResponse>> _showtimesPut(
      {@Body() required ShowtimeRequest? body});

  ///Get details of a specific showtime
  ///@param id
  Future<chopper.Response<ShowtimeResponse>> showtimesIdGet(
      {required int? id}) {
    generatedMapping.putIfAbsent(
        ShowtimeResponse, () => ShowtimeResponse.fromJsonFactory);

    return _showtimesIdGet(id: id);
  }

  ///Get details of a specific showtime
  ///@param id
  @Get(path: '/showtimes/{id}')
  Future<chopper.Response<ShowtimeResponse>> _showtimesIdGet(
      {@Path('id') required int? id});

  ///Delete a specific showtime
  ///@param id
  Future<chopper.Response> showtimesIdDelete({required int? id}) {
    return _showtimesIdDelete(id: id);
  }

  ///Delete a specific showtime
  ///@param id
  @Delete(path: '/showtimes/{id}')
  Future<chopper.Response> _showtimesIdDelete({@Path('id') required int? id});

  ///List all bookings
  Future<chopper.Response<List<BookingResponse>>> bookingsGet() {
    generatedMapping.putIfAbsent(
        BookingResponse, () => BookingResponse.fromJsonFactory);

    return _bookingsGet();
  }

  ///List all bookings
  @Get(path: '/bookings')
  Future<chopper.Response<List<BookingResponse>>> _bookingsGet();

  ///Create a new booking
  Future<chopper.Response<BookingResponse>> bookingsPost(
      {required BookingRequest? body}) {
    generatedMapping.putIfAbsent(
        BookingResponse, () => BookingResponse.fromJsonFactory);

    return _bookingsPost(body: body);
  }

  ///Create a new booking
  @Post(
    path: '/bookings',
    optionalBody: true,
  )
  Future<chopper.Response<BookingResponse>> _bookingsPost(
      {@Body() required BookingRequest? body});

  ///Update details of a specific booking (e.g., add/remove tickets)
  Future<chopper.Response<BookingResponse>> bookingsPut(
      {required BookingRequest? body}) {
    generatedMapping.putIfAbsent(
        BookingResponse, () => BookingResponse.fromJsonFactory);

    return _bookingsPut(body: body);
  }

  ///Update details of a specific booking (e.g., add/remove tickets)
  @Put(
    path: '/bookings',
    optionalBody: true,
  )
  Future<chopper.Response<BookingResponse>> _bookingsPut(
      {@Body() required BookingRequest? body});

  ///Get details of a specific booking
  ///@param id
  Future<chopper.Response<BookingResponse>> bookingsIdGet({required int? id}) {
    generatedMapping.putIfAbsent(
        BookingResponse, () => BookingResponse.fromJsonFactory);

    return _bookingsIdGet(id: id);
  }

  ///Get details of a specific booking
  ///@param id
  @Get(path: '/bookings/{id}')
  Future<chopper.Response<BookingResponse>> _bookingsIdGet(
      {@Path('id') required int? id});

  ///Cancel a booking
  ///@param id
  Future<chopper.Response> bookingsIdDelete({required int? id}) {
    return _bookingsIdDelete(id: id);
  }

  ///Cancel a booking
  ///@param id
  @Delete(path: '/bookings/{id}')
  Future<chopper.Response> _bookingsIdDelete({@Path('id') required int? id});

  ///List all customers
  Future<chopper.Response<List<CustomerResponse>>> customersGet() {
    generatedMapping.putIfAbsent(
        CustomerResponse, () => CustomerResponse.fromJsonFactory);

    return _customersGet();
  }

  ///List all customers
  @Get(path: '/customers')
  Future<chopper.Response<List<CustomerResponse>>> _customersGet();

  ///Register a new customer
  Future<chopper.Response<CustomerResponse>> customersPost(
      {required CustomerRequest? body}) {
    generatedMapping.putIfAbsent(
        CustomerResponse, () => CustomerResponse.fromJsonFactory);

    return _customersPost(body: body);
  }

  ///Register a new customer
  @Post(
    path: '/customers',
    optionalBody: true,
  )
  Future<chopper.Response<CustomerResponse>> _customersPost(
      {@Body() required CustomerRequest? body});

  ///Update details of a specific customer
  Future<chopper.Response<CustomerResponse>> customersPut(
      {required CustomerRequest? body}) {
    generatedMapping.putIfAbsent(
        CustomerResponse, () => CustomerResponse.fromJsonFactory);

    return _customersPut(body: body);
  }

  ///Update details of a specific customer
  @Put(
    path: '/customers',
    optionalBody: true,
  )
  Future<chopper.Response<CustomerResponse>> _customersPut(
      {@Body() required CustomerRequest? body});

  ///Get details of a specific customer
  ///@param id
  Future<chopper.Response<CustomerResponse>> customersIdGet(
      {required int? id}) {
    generatedMapping.putIfAbsent(
        CustomerResponse, () => CustomerResponse.fromJsonFactory);

    return _customersIdGet(id: id);
  }

  ///Get details of a specific customer
  ///@param id
  @Get(path: '/customers/{id}')
  Future<chopper.Response<CustomerResponse>> _customersIdGet(
      {@Path('id') required int? id});

  ///Delete a customer account (only admin users can perform this action)
  ///@param id
  Future<chopper.Response> customersIdDelete({required int? id}) {
    return _customersIdDelete(id: id);
  }

  ///Delete a customer account (only admin users can perform this action)
  ///@param id
  @Delete(path: '/customers/{id}')
  Future<chopper.Response> _customersIdDelete({@Path('id') required int? id});

  ///List all employees
  Future<chopper.Response<List<EmployeeResponse>>> employeesGet() {
    generatedMapping.putIfAbsent(
        EmployeeResponse, () => EmployeeResponse.fromJsonFactory);

    return _employeesGet();
  }

  ///List all employees
  @Get(path: '/employees')
  Future<chopper.Response<List<EmployeeResponse>>> _employeesGet();

  ///Add a new employee
  Future<chopper.Response<EmployeeResponse>> employeesPost(
      {required EmployeeRequest? body}) {
    generatedMapping.putIfAbsent(
        EmployeeResponse, () => EmployeeResponse.fromJsonFactory);

    return _employeesPost(body: body);
  }

  ///Add a new employee
  @Post(
    path: '/employees',
    optionalBody: true,
  )
  Future<chopper.Response<EmployeeResponse>> _employeesPost(
      {@Body() required EmployeeRequest? body});

  ///Update details of a specific employee
  Future<chopper.Response<EmployeeResponse>> employeesPut(
      {required EmployeeRequest? body}) {
    generatedMapping.putIfAbsent(
        EmployeeResponse, () => EmployeeResponse.fromJsonFactory);

    return _employeesPut(body: body);
  }

  ///Update details of a specific employee
  @Put(
    path: '/employees',
    optionalBody: true,
  )
  Future<chopper.Response<EmployeeResponse>> _employeesPut(
      {@Body() required EmployeeRequest? body});

  ///Get details of a specific employee
  ///@param id
  Future<chopper.Response<EmployeeResponse>> employeesIdGet(
      {required int? id}) {
    generatedMapping.putIfAbsent(
        EmployeeResponse, () => EmployeeResponse.fromJsonFactory);

    return _employeesIdGet(id: id);
  }

  ///Get details of a specific employee
  ///@param id
  @Get(path: '/employees/{id}')
  Future<chopper.Response<EmployeeResponse>> _employeesIdGet(
      {@Path('id') required int? id});

  ///Delete an employee (only admin users can perform this action)
  ///@param id
  Future<chopper.Response> employeesIdDelete({required int? id}) {
    return _employeesIdDelete(id: id);
  }

  ///Delete an employee (only admin users can perform this action)
  ///@param id
  @Delete(path: '/employees/{id}')
  Future<chopper.Response> _employeesIdDelete({@Path('id') required int? id});

  ///List all promotions
  Future<chopper.Response<List<Promotion>>> promotionsGet() {
    generatedMapping.putIfAbsent(Promotion, () => Promotion.fromJsonFactory);

    return _promotionsGet();
  }

  ///List all promotions
  @Get(path: '/promotions')
  Future<chopper.Response<List<Promotion>>> _promotionsGet();

  ///Create a new promotion
  Future<chopper.Response<Promotion>> promotionsPost(
      {required Promotion? body}) {
    generatedMapping.putIfAbsent(Promotion, () => Promotion.fromJsonFactory);

    return _promotionsPost(body: body);
  }

  ///Create a new promotion
  @Post(
    path: '/promotions',
    optionalBody: true,
  )
  Future<chopper.Response<Promotion>> _promotionsPost(
      {@Body() required Promotion? body});

  ///Get details of a specific promotion
  ///@param id
  Future<chopper.Response<Promotion>> promotionsIdGet({required int? id}) {
    generatedMapping.putIfAbsent(Promotion, () => Promotion.fromJsonFactory);

    return _promotionsIdGet(id: id);
  }

  ///Get details of a specific promotion
  ///@param id
  @Get(path: '/promotions/{id}')
  Future<chopper.Response<Promotion>> _promotionsIdGet(
      {@Path('id') required int? id});

  ///Update an existing promotion
  ///@param id
  Future<chopper.Response<Promotion>> promotionsIdPut({
    required int? id,
    required Promotion? body,
  }) {
    generatedMapping.putIfAbsent(Promotion, () => Promotion.fromJsonFactory);

    return _promotionsIdPut(id: id, body: body);
  }

  ///Update an existing promotion
  ///@param id
  @Put(
    path: '/promotions/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<Promotion>> _promotionsIdPut({
    @Path('id') required int? id,
    @Body() required Promotion? body,
  });

  ///Delete a promotion
  ///@param id
  Future<chopper.Response> promotionsIdDelete({required int? id}) {
    return _promotionsIdDelete(id: id);
  }

  ///Delete a promotion
  ///@param id
  @Delete(path: '/promotions/{id}')
  Future<chopper.Response> _promotionsIdDelete({@Path('id') required int? id});

  ///Get revenue report
  Future<chopper.Response<Object>> reportsRevenueGet() {
    return _reportsRevenueGet();
  }

  ///Get revenue report
  @Get(path: '/reports/revenue')
  Future<chopper.Response<Object>> _reportsRevenueGet();

  ///Get movie attendance report
  Future<chopper.Response<Object>> reportsAttendanceGet() {
    return _reportsAttendanceGet();
  }

  ///Get movie attendance report
  @Get(path: '/reports/attendance')
  Future<chopper.Response<Object>> _reportsAttendanceGet();

  ///Get list of popular movies
  Future<chopper.Response<List<PopularMovie>>> reportsPopularMoviesGet() {
    generatedMapping.putIfAbsent(
        PopularMovie, () => PopularMovie.fromJsonFactory);

    return _reportsPopularMoviesGet();
  }

  ///Get list of popular movies
  @Get(path: '/reports/popular-movies')
  Future<chopper.Response<List<PopularMovie>>> _reportsPopularMoviesGet();
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

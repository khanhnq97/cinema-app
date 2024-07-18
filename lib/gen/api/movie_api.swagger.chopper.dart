// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_api.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$MovieApi extends MovieApi {
  _$MovieApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = MovieApi;

  @override
  Future<Response<List<MovieResponse>>> _moviesGet() {
    final Uri $url = Uri.parse('/movies');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<MovieResponse>, MovieResponse>($request);
  }

  @override
  Future<Response<MovieResponse>> _moviesPost({required MovieRequest? body}) {
    final Uri $url = Uri.parse('/movies');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<MovieResponse, MovieResponse>($request);
  }

  @override
  Future<Response<MovieResponse>> _moviesPut({required MovieRequest? body}) {
    final Uri $url = Uri.parse('/movies');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<MovieResponse, MovieResponse>($request);
  }

  @override
  Future<Response<MovieResponse>> _moviesIdGet({required int? id}) {
    final Uri $url = Uri.parse('/movies/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<MovieResponse, MovieResponse>($request);
  }

  @override
  Future<Response<dynamic>> _moviesIdDelete({required int? id}) {
    final Uri $url = Uri.parse('/movies/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<ShowtimeResponse>>> _showtimesGet() {
    final Uri $url = Uri.parse('/showtimes');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<ShowtimeResponse>, ShowtimeResponse>($request);
  }

  @override
  Future<Response<ShowtimeResponse>> _showtimesPost(
      {required ShowtimeRequest? body}) {
    final Uri $url = Uri.parse('/showtimes');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ShowtimeResponse, ShowtimeResponse>($request);
  }

  @override
  Future<Response<ShowtimeResponse>> _showtimesPut(
      {required ShowtimeRequest? body}) {
    final Uri $url = Uri.parse('/showtimes');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ShowtimeResponse, ShowtimeResponse>($request);
  }

  @override
  Future<Response<ShowtimeResponse>> _showtimesIdGet({required int? id}) {
    final Uri $url = Uri.parse('/showtimes/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ShowtimeResponse, ShowtimeResponse>($request);
  }

  @override
  Future<Response<dynamic>> _showtimesIdDelete({required int? id}) {
    final Uri $url = Uri.parse('/showtimes/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<BookingResponse>>> _bookingsGet() {
    final Uri $url = Uri.parse('/bookings');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<BookingResponse>, BookingResponse>($request);
  }

  @override
  Future<Response<BookingResponse>> _bookingsPost(
      {required BookingRequest? body}) {
    final Uri $url = Uri.parse('/bookings');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<BookingResponse, BookingResponse>($request);
  }

  @override
  Future<Response<BookingResponse>> _bookingsPut(
      {required BookingRequest? body}) {
    final Uri $url = Uri.parse('/bookings');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<BookingResponse, BookingResponse>($request);
  }

  @override
  Future<Response<BookingResponse>> _bookingsIdGet({required int? id}) {
    final Uri $url = Uri.parse('/bookings/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<BookingResponse, BookingResponse>($request);
  }

  @override
  Future<Response<dynamic>> _bookingsIdDelete({required int? id}) {
    final Uri $url = Uri.parse('/bookings/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<CustomerResponse>>> _customersGet() {
    final Uri $url = Uri.parse('/customers');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<CustomerResponse>, CustomerResponse>($request);
  }

  @override
  Future<Response<CustomerResponse>> _customersPost(
      {required CustomerRequest? body}) {
    final Uri $url = Uri.parse('/customers');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<CustomerResponse, CustomerResponse>($request);
  }

  @override
  Future<Response<CustomerResponse>> _customersPut(
      {required CustomerRequest? body}) {
    final Uri $url = Uri.parse('/customers');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<CustomerResponse, CustomerResponse>($request);
  }

  @override
  Future<Response<CustomerResponse>> _customersIdGet({required int? id}) {
    final Uri $url = Uri.parse('/customers/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<CustomerResponse, CustomerResponse>($request);
  }

  @override
  Future<Response<dynamic>> _customersIdDelete({required int? id}) {
    final Uri $url = Uri.parse('/customers/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<EmployeeResponse>>> _employeesGet() {
    final Uri $url = Uri.parse('/employees');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<EmployeeResponse>, EmployeeResponse>($request);
  }

  @override
  Future<Response<EmployeeResponse>> _employeesPost(
      {required EmployeeRequest? body}) {
    final Uri $url = Uri.parse('/employees');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<EmployeeResponse, EmployeeResponse>($request);
  }

  @override
  Future<Response<EmployeeResponse>> _employeesPut(
      {required EmployeeRequest? body}) {
    final Uri $url = Uri.parse('/employees');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<EmployeeResponse, EmployeeResponse>($request);
  }

  @override
  Future<Response<EmployeeResponse>> _employeesIdGet({required int? id}) {
    final Uri $url = Uri.parse('/employees/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<EmployeeResponse, EmployeeResponse>($request);
  }

  @override
  Future<Response<dynamic>> _employeesIdDelete({required int? id}) {
    final Uri $url = Uri.parse('/employees/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<Promotion>>> _promotionsGet() {
    final Uri $url = Uri.parse('/promotions');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<Promotion>, Promotion>($request);
  }

  @override
  Future<Response<Promotion>> _promotionsPost({required Promotion? body}) {
    final Uri $url = Uri.parse('/promotions');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Promotion, Promotion>($request);
  }

  @override
  Future<Response<Promotion>> _promotionsIdGet({required int? id}) {
    final Uri $url = Uri.parse('/promotions/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Promotion, Promotion>($request);
  }

  @override
  Future<Response<Promotion>> _promotionsIdPut({
    required int? id,
    required Promotion? body,
  }) {
    final Uri $url = Uri.parse('/promotions/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Promotion, Promotion>($request);
  }

  @override
  Future<Response<dynamic>> _promotionsIdDelete({required int? id}) {
    final Uri $url = Uri.parse('/promotions/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Object>> _reportsRevenueGet() {
    final Uri $url = Uri.parse('/reports/revenue');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Object>> _reportsAttendanceGet() {
    final Uri $url = Uri.parse('/reports/attendance');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<List<PopularMovie>>> _reportsPopularMoviesGet() {
    final Uri $url = Uri.parse('/reports/popular-movies');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<PopularMovie>, PopularMovie>($request);
  }
}

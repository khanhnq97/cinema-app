// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_api.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieRequest _$MovieRequestFromJson(Map<String, dynamic> json) => MovieRequest(
      movieId: (json['movieId'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      releaseDate: json['releaseDate'] == null
          ? null
          : DateTime.parse(json['releaseDate'] as String),
      genre: json['genre'] as String?,
      director: json['director'] as String?,
      cast: json['cast'] as String?,
    );

Map<String, dynamic> _$MovieRequestToJson(MovieRequest instance) =>
    <String, dynamic>{
      'movieId': instance.movieId,
      'title': instance.title,
      'description': instance.description,
      'duration': instance.duration,
      'releaseDate': instance.releaseDate?.toIso8601String(),
      'genre': instance.genre,
      'director': instance.director,
      'cast': instance.cast,
    };

MovieResponse _$MovieResponseFromJson(Map<String, dynamic> json) =>
    MovieResponse(
      movieId: (json['movieId'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      releaseDate: json['releaseDate'] == null
          ? null
          : DateTime.parse(json['releaseDate'] as String),
      genre: json['genre'] as String?,
      director: json['director'] as String?,
      cast: json['cast'] as String?,
    );

Map<String, dynamic> _$MovieResponseToJson(MovieResponse instance) =>
    <String, dynamic>{
      'movieId': instance.movieId,
      'title': instance.title,
      'description': instance.description,
      'duration': instance.duration,
      'releaseDate': instance.releaseDate?.toIso8601String(),
      'genre': instance.genre,
      'director': instance.director,
      'cast': instance.cast,
    };

ShowtimeRequest _$ShowtimeRequestFromJson(Map<String, dynamic> json) =>
    ShowtimeRequest(
      showtimeId: (json['showtimeId'] as num?)?.toInt(),
      movieId: (json['movieId'] as num?)?.toInt(),
      theaterId: (json['theaterId'] as num?)?.toInt(),
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ShowtimeRequestToJson(ShowtimeRequest instance) =>
    <String, dynamic>{
      'showtimeId': instance.showtimeId,
      'movieId': instance.movieId,
      'theaterId': instance.theaterId,
      'startTime': instance.startTime?.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'price': instance.price,
    };

ShowtimeResponse _$ShowtimeResponseFromJson(Map<String, dynamic> json) =>
    ShowtimeResponse(
      showtimeId: (json['showtimeId'] as num?)?.toInt(),
      movieId: (json['movieId'] as num?)?.toInt(),
      theaterId: (json['theaterId'] as num?)?.toInt(),
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ShowtimeResponseToJson(ShowtimeResponse instance) =>
    <String, dynamic>{
      'showtimeId': instance.showtimeId,
      'movieId': instance.movieId,
      'theaterId': instance.theaterId,
      'startTime': instance.startTime?.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'price': instance.price,
    };

BookingRequest _$BookingRequestFromJson(Map<String, dynamic> json) =>
    BookingRequest(
      bookingId: (json['bookingId'] as num?)?.toInt(),
      customerId: (json['customerId'] as num?)?.toInt(),
      showtimeId: (json['showtimeId'] as num?)?.toInt(),
      bookingDate: json['bookingDate'] == null
          ? null
          : DateTime.parse(json['bookingDate'] as String),
      totalAmount: (json['totalAmount'] as num?)?.toDouble(),
      ticketPrice: (json['ticketPrice'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$BookingRequestToJson(BookingRequest instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'customerId': instance.customerId,
      'showtimeId': instance.showtimeId,
      'bookingDate': instance.bookingDate?.toIso8601String(),
      'totalAmount': instance.totalAmount,
      'ticketPrice': instance.ticketPrice,
    };

BookingResponse _$BookingResponseFromJson(Map<String, dynamic> json) =>
    BookingResponse(
      bookingId: (json['bookingId'] as num?)?.toInt(),
      customerId: (json['customerId'] as num?)?.toInt(),
      showtimeId: (json['showtimeId'] as num?)?.toInt(),
      bookingDate: json['bookingDate'] == null
          ? null
          : DateTime.parse(json['bookingDate'] as String),
      totalAmount: (json['totalAmount'] as num?)?.toDouble(),
      ticketPrice: (json['ticketPrice'] as num?)?.toDouble(),
      movieId: (json['movieId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BookingResponseToJson(BookingResponse instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'customerId': instance.customerId,
      'showtimeId': instance.showtimeId,
      'bookingDate': instance.bookingDate?.toIso8601String(),
      'totalAmount': instance.totalAmount,
      'ticketPrice': instance.ticketPrice,
      'movieId': instance.movieId,
    };

CustomerRequest _$CustomerRequestFromJson(Map<String, dynamic> json) =>
    CustomerRequest(
      customerId: (json['customerId'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      avatar: json['avatar'] as String?,
      membershipStatus:
          customerRequestMembershipStatusFromJson(json['membershipStatus']),
    );

Map<String, dynamic> _$CustomerRequestToJson(CustomerRequest instance) =>
    <String, dynamic>{
      'customerId': instance.customerId,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'avatar': instance.avatar,
      'membershipStatus':
          customerRequestMembershipStatusToJson(instance.membershipStatus),
    };

CustomerResponse _$CustomerResponseFromJson(Map<String, dynamic> json) =>
    CustomerResponse(
      customerId: (json['customerId'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      avatar: json['avatar'] as String?,
      membershipStatus:
          customerResponseMembershipStatusFromJson(json['membershipStatus']),
    );

Map<String, dynamic> _$CustomerResponseToJson(CustomerResponse instance) =>
    <String, dynamic>{
      'customerId': instance.customerId,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'avatar': instance.avatar,
      'membershipStatus':
          customerResponseMembershipStatusToJson(instance.membershipStatus),
    };

EmployeeResponse _$EmployeeResponseFromJson(Map<String, dynamic> json) =>
    EmployeeResponse(
      employeeId: (json['employeeId'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      position: json['position'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$EmployeeResponseToJson(EmployeeResponse instance) =>
    <String, dynamic>{
      'employeeId': instance.employeeId,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'position': instance.position,
      'password': instance.password,
    };

EmployeeRequest _$EmployeeRequestFromJson(Map<String, dynamic> json) =>
    EmployeeRequest(
      employeeId: (json['employeeId'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      position: json['position'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$EmployeeRequestToJson(EmployeeRequest instance) =>
    <String, dynamic>{
      'employeeId': instance.employeeId,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'position': instance.position,
      'password': instance.password,
    };

Promotion _$PromotionFromJson(Map<String, dynamic> json) => Promotion(
      promotionId: (json['promotionId'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      discountPercent: (json['discountPercent'] as num).toDouble(),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$PromotionToJson(Promotion instance) => <String, dynamic>{
      'promotionId': instance.promotionId,
      'name': instance.name,
      'description': instance.description,
      'discountPercent': instance.discountPercent,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
    };

PopularMovie _$PopularMovieFromJson(Map<String, dynamic> json) => PopularMovie(
      movieId: (json['movieId'] as num?)?.toInt(),
      movieTitle: json['movieTitle'] as String?,
      attendanceCount: (json['attendanceCount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PopularMovieToJson(PopularMovie instance) =>
    <String, dynamic>{
      'movieId': instance.movieId,
      'movieTitle': instance.movieTitle,
      'attendanceCount': instance.attendanceCount,
    };

MovieNotFound$Response _$MovieNotFound$ResponseFromJson(
        Map<String, dynamic> json) =>
    MovieNotFound$Response(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$MovieNotFound$ResponseToJson(
        MovieNotFound$Response instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

MovieAlreadyExists$Response _$MovieAlreadyExists$ResponseFromJson(
        Map<String, dynamic> json) =>
    MovieAlreadyExists$Response(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$MovieAlreadyExists$ResponseToJson(
        MovieAlreadyExists$Response instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

InternalServerError$Response _$InternalServerError$ResponseFromJson(
        Map<String, dynamic> json) =>
    InternalServerError$Response(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$InternalServerError$ResponseToJson(
        InternalServerError$Response instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

MovieCreated$Response _$MovieCreated$ResponseFromJson(
        Map<String, dynamic> json) =>
    MovieCreated$Response(
      message: json['message'] as String?,
      movie: json['movie'] == null
          ? null
          : MovieResponse.fromJson(json['movie'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MovieCreated$ResponseToJson(
        MovieCreated$Response instance) =>
    <String, dynamic>{
      'message': instance.message,
      'movie': instance.movie?.toJson(),
    };

ShowtimeNotFound$Response _$ShowtimeNotFound$ResponseFromJson(
        Map<String, dynamic> json) =>
    ShowtimeNotFound$Response(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ShowtimeNotFound$ResponseToJson(
        ShowtimeNotFound$Response instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

ShowtimeAlreadyExists$Response _$ShowtimeAlreadyExists$ResponseFromJson(
        Map<String, dynamic> json) =>
    ShowtimeAlreadyExists$Response(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ShowtimeAlreadyExists$ResponseToJson(
        ShowtimeAlreadyExists$Response instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

BookingNotFound$Response _$BookingNotFound$ResponseFromJson(
        Map<String, dynamic> json) =>
    BookingNotFound$Response(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$BookingNotFound$ResponseToJson(
        BookingNotFound$Response instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

BookingAlreadyExists$Response _$BookingAlreadyExists$ResponseFromJson(
        Map<String, dynamic> json) =>
    BookingAlreadyExists$Response(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$BookingAlreadyExists$ResponseToJson(
        BookingAlreadyExists$Response instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

InsufficientTicketsAvailable$Response
    _$InsufficientTicketsAvailable$ResponseFromJson(
            Map<String, dynamic> json) =>
        InsufficientTicketsAvailable$Response(
          message: json['message'] as String?,
        );

Map<String, dynamic> _$InsufficientTicketsAvailable$ResponseToJson(
        InsufficientTicketsAvailable$Response instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

CustomerNotFound$Response _$CustomerNotFound$ResponseFromJson(
        Map<String, dynamic> json) =>
    CustomerNotFound$Response(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$CustomerNotFound$ResponseToJson(
        CustomerNotFound$Response instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

CustomerAlreadyExists$Response _$CustomerAlreadyExists$ResponseFromJson(
        Map<String, dynamic> json) =>
    CustomerAlreadyExists$Response(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$CustomerAlreadyExists$ResponseToJson(
        CustomerAlreadyExists$Response instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

InvalidPassword$Response _$InvalidPassword$ResponseFromJson(
        Map<String, dynamic> json) =>
    InvalidPassword$Response(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$InvalidPassword$ResponseToJson(
        InvalidPassword$Response instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

EmployeeNotFound$Response _$EmployeeNotFound$ResponseFromJson(
        Map<String, dynamic> json) =>
    EmployeeNotFound$Response(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$EmployeeNotFound$ResponseToJson(
        EmployeeNotFound$Response instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

EmployeeAlreadyExists$Response _$EmployeeAlreadyExists$ResponseFromJson(
        Map<String, dynamic> json) =>
    EmployeeAlreadyExists$Response(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$EmployeeAlreadyExists$ResponseToJson(
        EmployeeAlreadyExists$Response instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

ReportsRevenueGet$Response _$ReportsRevenueGet$ResponseFromJson(
        Map<String, dynamic> json) =>
    ReportsRevenueGet$Response(
      totalRevenue: (json['totalRevenue'] as num?)?.toDouble(),
      revenueByMovie: json['revenueByMovie'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ReportsRevenueGet$ResponseToJson(
        ReportsRevenueGet$Response instance) =>
    <String, dynamic>{
      'totalRevenue': instance.totalRevenue,
      'revenueByMovie': instance.revenueByMovie,
    };

ReportsAttendanceGet$Response _$ReportsAttendanceGet$ResponseFromJson(
        Map<String, dynamic> json) =>
    ReportsAttendanceGet$Response(
      totalAttendance: (json['totalAttendance'] as num?)?.toDouble(),
      attendanceByMovie: json['attendanceByMovie'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ReportsAttendanceGet$ResponseToJson(
        ReportsAttendanceGet$Response instance) =>
    <String, dynamic>{
      'totalAttendance': instance.totalAttendance,
      'attendanceByMovie': instance.attendanceByMovie,
    };

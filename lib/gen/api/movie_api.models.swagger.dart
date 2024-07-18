// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'movie_api.enums.swagger.dart' as enums;

part 'movie_api.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class MovieRequest {
  MovieRequest({
    this.movieId,
    this.title,
    this.description,
    this.duration,
    this.releaseDate,
    this.genre,
    this.director,
    this.cast,
  });

  factory MovieRequest.fromJson(Map<String, dynamic> json) =>
      _$MovieRequestFromJson(json);

  static const toJsonFactory = _$MovieRequestToJson;
  Map<String, dynamic> toJson() => _$MovieRequestToJson(this);

  @JsonKey(name: 'movieId')
  final int? movieId;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'duration')
  final int? duration;
  @JsonKey(name: 'releaseDate')
  final DateTime? releaseDate;
  @JsonKey(name: 'genre')
  final String? genre;
  @JsonKey(name: 'director')
  final String? director;
  @JsonKey(name: 'cast')
  final String? cast;
  static const fromJsonFactory = _$MovieRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieRequest &&
            (identical(other.movieId, movieId) ||
                const DeepCollectionEquality()
                    .equals(other.movieId, movieId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.releaseDate, releaseDate)) &&
            (identical(other.genre, genre) ||
                const DeepCollectionEquality().equals(other.genre, genre)) &&
            (identical(other.director, director) ||
                const DeepCollectionEquality()
                    .equals(other.director, director)) &&
            (identical(other.cast, cast) ||
                const DeepCollectionEquality().equals(other.cast, cast)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(movieId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(releaseDate) ^
      const DeepCollectionEquality().hash(genre) ^
      const DeepCollectionEquality().hash(director) ^
      const DeepCollectionEquality().hash(cast) ^
      runtimeType.hashCode;
}

extension $MovieRequestExtension on MovieRequest {
  MovieRequest copyWith(
      {int? movieId,
      String? title,
      String? description,
      int? duration,
      DateTime? releaseDate,
      String? genre,
      String? director,
      String? cast}) {
    return MovieRequest(
        movieId: movieId ?? this.movieId,
        title: title ?? this.title,
        description: description ?? this.description,
        duration: duration ?? this.duration,
        releaseDate: releaseDate ?? this.releaseDate,
        genre: genre ?? this.genre,
        director: director ?? this.director,
        cast: cast ?? this.cast);
  }

  MovieRequest copyWithWrapped(
      {Wrapped<int?>? movieId,
      Wrapped<String?>? title,
      Wrapped<String?>? description,
      Wrapped<int?>? duration,
      Wrapped<DateTime?>? releaseDate,
      Wrapped<String?>? genre,
      Wrapped<String?>? director,
      Wrapped<String?>? cast}) {
    return MovieRequest(
        movieId: (movieId != null ? movieId.value : this.movieId),
        title: (title != null ? title.value : this.title),
        description:
            (description != null ? description.value : this.description),
        duration: (duration != null ? duration.value : this.duration),
        releaseDate:
            (releaseDate != null ? releaseDate.value : this.releaseDate),
        genre: (genre != null ? genre.value : this.genre),
        director: (director != null ? director.value : this.director),
        cast: (cast != null ? cast.value : this.cast));
  }
}

@JsonSerializable(explicitToJson: true)
class MovieResponse {
  MovieResponse({
    this.movieId,
    this.title,
    this.description,
    this.duration,
    this.releaseDate,
    this.genre,
    this.director,
    this.cast,
  });

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);

  static const toJsonFactory = _$MovieResponseToJson;
  Map<String, dynamic> toJson() => _$MovieResponseToJson(this);

  @JsonKey(name: 'movieId')
  final int? movieId;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'duration')
  final int? duration;
  @JsonKey(name: 'releaseDate')
  final DateTime? releaseDate;
  @JsonKey(name: 'genre')
  final String? genre;
  @JsonKey(name: 'director')
  final String? director;
  @JsonKey(name: 'cast')
  final String? cast;
  static const fromJsonFactory = _$MovieResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieResponse &&
            (identical(other.movieId, movieId) ||
                const DeepCollectionEquality()
                    .equals(other.movieId, movieId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.releaseDate, releaseDate)) &&
            (identical(other.genre, genre) ||
                const DeepCollectionEquality().equals(other.genre, genre)) &&
            (identical(other.director, director) ||
                const DeepCollectionEquality()
                    .equals(other.director, director)) &&
            (identical(other.cast, cast) ||
                const DeepCollectionEquality().equals(other.cast, cast)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(movieId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(releaseDate) ^
      const DeepCollectionEquality().hash(genre) ^
      const DeepCollectionEquality().hash(director) ^
      const DeepCollectionEquality().hash(cast) ^
      runtimeType.hashCode;
}

extension $MovieResponseExtension on MovieResponse {
  MovieResponse copyWith(
      {int? movieId,
      String? title,
      String? description,
      int? duration,
      DateTime? releaseDate,
      String? genre,
      String? director,
      String? cast}) {
    return MovieResponse(
        movieId: movieId ?? this.movieId,
        title: title ?? this.title,
        description: description ?? this.description,
        duration: duration ?? this.duration,
        releaseDate: releaseDate ?? this.releaseDate,
        genre: genre ?? this.genre,
        director: director ?? this.director,
        cast: cast ?? this.cast);
  }

  MovieResponse copyWithWrapped(
      {Wrapped<int?>? movieId,
      Wrapped<String?>? title,
      Wrapped<String?>? description,
      Wrapped<int?>? duration,
      Wrapped<DateTime?>? releaseDate,
      Wrapped<String?>? genre,
      Wrapped<String?>? director,
      Wrapped<String?>? cast}) {
    return MovieResponse(
        movieId: (movieId != null ? movieId.value : this.movieId),
        title: (title != null ? title.value : this.title),
        description:
            (description != null ? description.value : this.description),
        duration: (duration != null ? duration.value : this.duration),
        releaseDate:
            (releaseDate != null ? releaseDate.value : this.releaseDate),
        genre: (genre != null ? genre.value : this.genre),
        director: (director != null ? director.value : this.director),
        cast: (cast != null ? cast.value : this.cast));
  }
}

@JsonSerializable(explicitToJson: true)
class ShowtimeRequest {
  ShowtimeRequest({
    this.showtimeId,
    this.movieId,
    this.theaterId,
    this.startTime,
    this.endTime,
    this.price,
  });

  factory ShowtimeRequest.fromJson(Map<String, dynamic> json) =>
      _$ShowtimeRequestFromJson(json);

  static const toJsonFactory = _$ShowtimeRequestToJson;
  Map<String, dynamic> toJson() => _$ShowtimeRequestToJson(this);

  @JsonKey(name: 'showtimeId')
  final int? showtimeId;
  @JsonKey(name: 'movieId')
  final int? movieId;
  @JsonKey(name: 'theaterId')
  final int? theaterId;
  @JsonKey(name: 'startTime')
  final DateTime? startTime;
  @JsonKey(name: 'endTime')
  final DateTime? endTime;
  @JsonKey(name: 'price')
  final double? price;
  static const fromJsonFactory = _$ShowtimeRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowtimeRequest &&
            (identical(other.showtimeId, showtimeId) ||
                const DeepCollectionEquality()
                    .equals(other.showtimeId, showtimeId)) &&
            (identical(other.movieId, movieId) ||
                const DeepCollectionEquality()
                    .equals(other.movieId, movieId)) &&
            (identical(other.theaterId, theaterId) ||
                const DeepCollectionEquality()
                    .equals(other.theaterId, theaterId)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality()
                    .equals(other.endTime, endTime)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(showtimeId) ^
      const DeepCollectionEquality().hash(movieId) ^
      const DeepCollectionEquality().hash(theaterId) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(price) ^
      runtimeType.hashCode;
}

extension $ShowtimeRequestExtension on ShowtimeRequest {
  ShowtimeRequest copyWith(
      {int? showtimeId,
      int? movieId,
      int? theaterId,
      DateTime? startTime,
      DateTime? endTime,
      double? price}) {
    return ShowtimeRequest(
        showtimeId: showtimeId ?? this.showtimeId,
        movieId: movieId ?? this.movieId,
        theaterId: theaterId ?? this.theaterId,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        price: price ?? this.price);
  }

  ShowtimeRequest copyWithWrapped(
      {Wrapped<int?>? showtimeId,
      Wrapped<int?>? movieId,
      Wrapped<int?>? theaterId,
      Wrapped<DateTime?>? startTime,
      Wrapped<DateTime?>? endTime,
      Wrapped<double?>? price}) {
    return ShowtimeRequest(
        showtimeId: (showtimeId != null ? showtimeId.value : this.showtimeId),
        movieId: (movieId != null ? movieId.value : this.movieId),
        theaterId: (theaterId != null ? theaterId.value : this.theaterId),
        startTime: (startTime != null ? startTime.value : this.startTime),
        endTime: (endTime != null ? endTime.value : this.endTime),
        price: (price != null ? price.value : this.price));
  }
}

@JsonSerializable(explicitToJson: true)
class ShowtimeResponse {
  ShowtimeResponse({
    this.showtimeId,
    this.movieId,
    this.theaterId,
    this.startTime,
    this.endTime,
    this.price,
  });

  factory ShowtimeResponse.fromJson(Map<String, dynamic> json) =>
      _$ShowtimeResponseFromJson(json);

  static const toJsonFactory = _$ShowtimeResponseToJson;
  Map<String, dynamic> toJson() => _$ShowtimeResponseToJson(this);

  @JsonKey(name: 'showtimeId')
  final int? showtimeId;
  @JsonKey(name: 'movieId')
  final int? movieId;
  @JsonKey(name: 'theaterId')
  final int? theaterId;
  @JsonKey(name: 'startTime')
  final DateTime? startTime;
  @JsonKey(name: 'endTime')
  final DateTime? endTime;
  @JsonKey(name: 'price')
  final double? price;
  static const fromJsonFactory = _$ShowtimeResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowtimeResponse &&
            (identical(other.showtimeId, showtimeId) ||
                const DeepCollectionEquality()
                    .equals(other.showtimeId, showtimeId)) &&
            (identical(other.movieId, movieId) ||
                const DeepCollectionEquality()
                    .equals(other.movieId, movieId)) &&
            (identical(other.theaterId, theaterId) ||
                const DeepCollectionEquality()
                    .equals(other.theaterId, theaterId)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality()
                    .equals(other.endTime, endTime)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(showtimeId) ^
      const DeepCollectionEquality().hash(movieId) ^
      const DeepCollectionEquality().hash(theaterId) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(price) ^
      runtimeType.hashCode;
}

extension $ShowtimeResponseExtension on ShowtimeResponse {
  ShowtimeResponse copyWith(
      {int? showtimeId,
      int? movieId,
      int? theaterId,
      DateTime? startTime,
      DateTime? endTime,
      double? price}) {
    return ShowtimeResponse(
        showtimeId: showtimeId ?? this.showtimeId,
        movieId: movieId ?? this.movieId,
        theaterId: theaterId ?? this.theaterId,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        price: price ?? this.price);
  }

  ShowtimeResponse copyWithWrapped(
      {Wrapped<int?>? showtimeId,
      Wrapped<int?>? movieId,
      Wrapped<int?>? theaterId,
      Wrapped<DateTime?>? startTime,
      Wrapped<DateTime?>? endTime,
      Wrapped<double?>? price}) {
    return ShowtimeResponse(
        showtimeId: (showtimeId != null ? showtimeId.value : this.showtimeId),
        movieId: (movieId != null ? movieId.value : this.movieId),
        theaterId: (theaterId != null ? theaterId.value : this.theaterId),
        startTime: (startTime != null ? startTime.value : this.startTime),
        endTime: (endTime != null ? endTime.value : this.endTime),
        price: (price != null ? price.value : this.price));
  }
}

@JsonSerializable(explicitToJson: true)
class BookingRequest {
  BookingRequest({
    this.bookingId,
    this.customerId,
    this.showtimeId,
    this.bookingDate,
    this.totalAmount,
    this.ticketPrice,
  });

  factory BookingRequest.fromJson(Map<String, dynamic> json) =>
      _$BookingRequestFromJson(json);

  static const toJsonFactory = _$BookingRequestToJson;
  Map<String, dynamic> toJson() => _$BookingRequestToJson(this);

  @JsonKey(name: 'bookingId')
  final int? bookingId;
  @JsonKey(name: 'customerId')
  final int? customerId;
  @JsonKey(name: 'showtimeId')
  final int? showtimeId;
  @JsonKey(name: 'bookingDate')
  final DateTime? bookingDate;
  @JsonKey(name: 'totalAmount')
  final double? totalAmount;
  @JsonKey(name: 'ticketPrice')
  final double? ticketPrice;
  static const fromJsonFactory = _$BookingRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BookingRequest &&
            (identical(other.bookingId, bookingId) ||
                const DeepCollectionEquality()
                    .equals(other.bookingId, bookingId)) &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality()
                    .equals(other.customerId, customerId)) &&
            (identical(other.showtimeId, showtimeId) ||
                const DeepCollectionEquality()
                    .equals(other.showtimeId, showtimeId)) &&
            (identical(other.bookingDate, bookingDate) ||
                const DeepCollectionEquality()
                    .equals(other.bookingDate, bookingDate)) &&
            (identical(other.totalAmount, totalAmount) ||
                const DeepCollectionEquality()
                    .equals(other.totalAmount, totalAmount)) &&
            (identical(other.ticketPrice, ticketPrice) ||
                const DeepCollectionEquality()
                    .equals(other.ticketPrice, ticketPrice)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(bookingId) ^
      const DeepCollectionEquality().hash(customerId) ^
      const DeepCollectionEquality().hash(showtimeId) ^
      const DeepCollectionEquality().hash(bookingDate) ^
      const DeepCollectionEquality().hash(totalAmount) ^
      const DeepCollectionEquality().hash(ticketPrice) ^
      runtimeType.hashCode;
}

extension $BookingRequestExtension on BookingRequest {
  BookingRequest copyWith(
      {int? bookingId,
      int? customerId,
      int? showtimeId,
      DateTime? bookingDate,
      double? totalAmount,
      double? ticketPrice}) {
    return BookingRequest(
        bookingId: bookingId ?? this.bookingId,
        customerId: customerId ?? this.customerId,
        showtimeId: showtimeId ?? this.showtimeId,
        bookingDate: bookingDate ?? this.bookingDate,
        totalAmount: totalAmount ?? this.totalAmount,
        ticketPrice: ticketPrice ?? this.ticketPrice);
  }

  BookingRequest copyWithWrapped(
      {Wrapped<int?>? bookingId,
      Wrapped<int?>? customerId,
      Wrapped<int?>? showtimeId,
      Wrapped<DateTime?>? bookingDate,
      Wrapped<double?>? totalAmount,
      Wrapped<double?>? ticketPrice}) {
    return BookingRequest(
        bookingId: (bookingId != null ? bookingId.value : this.bookingId),
        customerId: (customerId != null ? customerId.value : this.customerId),
        showtimeId: (showtimeId != null ? showtimeId.value : this.showtimeId),
        bookingDate:
            (bookingDate != null ? bookingDate.value : this.bookingDate),
        totalAmount:
            (totalAmount != null ? totalAmount.value : this.totalAmount),
        ticketPrice:
            (ticketPrice != null ? ticketPrice.value : this.ticketPrice));
  }
}

@JsonSerializable(explicitToJson: true)
class BookingResponse {
  BookingResponse({
    this.bookingId,
    this.customerId,
    this.showtimeId,
    this.bookingDate,
    this.totalAmount,
    this.ticketPrice,
    this.movieId,
  });

  factory BookingResponse.fromJson(Map<String, dynamic> json) =>
      _$BookingResponseFromJson(json);

  static const toJsonFactory = _$BookingResponseToJson;
  Map<String, dynamic> toJson() => _$BookingResponseToJson(this);

  @JsonKey(name: 'bookingId')
  final int? bookingId;
  @JsonKey(name: 'customerId')
  final int? customerId;
  @JsonKey(name: 'showtimeId')
  final int? showtimeId;
  @JsonKey(name: 'bookingDate')
  final DateTime? bookingDate;
  @JsonKey(name: 'totalAmount')
  final double? totalAmount;
  @JsonKey(name: 'ticketPrice')
  final double? ticketPrice;
  @JsonKey(name: 'movieId')
  final int? movieId;
  static const fromJsonFactory = _$BookingResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BookingResponse &&
            (identical(other.bookingId, bookingId) ||
                const DeepCollectionEquality()
                    .equals(other.bookingId, bookingId)) &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality()
                    .equals(other.customerId, customerId)) &&
            (identical(other.showtimeId, showtimeId) ||
                const DeepCollectionEquality()
                    .equals(other.showtimeId, showtimeId)) &&
            (identical(other.bookingDate, bookingDate) ||
                const DeepCollectionEquality()
                    .equals(other.bookingDate, bookingDate)) &&
            (identical(other.totalAmount, totalAmount) ||
                const DeepCollectionEquality()
                    .equals(other.totalAmount, totalAmount)) &&
            (identical(other.ticketPrice, ticketPrice) ||
                const DeepCollectionEquality()
                    .equals(other.ticketPrice, ticketPrice)) &&
            (identical(other.movieId, movieId) ||
                const DeepCollectionEquality().equals(other.movieId, movieId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(bookingId) ^
      const DeepCollectionEquality().hash(customerId) ^
      const DeepCollectionEquality().hash(showtimeId) ^
      const DeepCollectionEquality().hash(bookingDate) ^
      const DeepCollectionEquality().hash(totalAmount) ^
      const DeepCollectionEquality().hash(ticketPrice) ^
      const DeepCollectionEquality().hash(movieId) ^
      runtimeType.hashCode;
}

extension $BookingResponseExtension on BookingResponse {
  BookingResponse copyWith(
      {int? bookingId,
      int? customerId,
      int? showtimeId,
      DateTime? bookingDate,
      double? totalAmount,
      double? ticketPrice,
      int? movieId}) {
    return BookingResponse(
        bookingId: bookingId ?? this.bookingId,
        customerId: customerId ?? this.customerId,
        showtimeId: showtimeId ?? this.showtimeId,
        bookingDate: bookingDate ?? this.bookingDate,
        totalAmount: totalAmount ?? this.totalAmount,
        ticketPrice: ticketPrice ?? this.ticketPrice,
        movieId: movieId ?? this.movieId);
  }

  BookingResponse copyWithWrapped(
      {Wrapped<int?>? bookingId,
      Wrapped<int?>? customerId,
      Wrapped<int?>? showtimeId,
      Wrapped<DateTime?>? bookingDate,
      Wrapped<double?>? totalAmount,
      Wrapped<double?>? ticketPrice,
      Wrapped<int?>? movieId}) {
    return BookingResponse(
        bookingId: (bookingId != null ? bookingId.value : this.bookingId),
        customerId: (customerId != null ? customerId.value : this.customerId),
        showtimeId: (showtimeId != null ? showtimeId.value : this.showtimeId),
        bookingDate:
            (bookingDate != null ? bookingDate.value : this.bookingDate),
        totalAmount:
            (totalAmount != null ? totalAmount.value : this.totalAmount),
        ticketPrice:
            (ticketPrice != null ? ticketPrice.value : this.ticketPrice),
        movieId: (movieId != null ? movieId.value : this.movieId));
  }
}

@JsonSerializable(explicitToJson: true)
class CustomerRequest {
  CustomerRequest({
    this.customerId,
    this.name,
    this.email,
    this.phone,
    this.password,
    this.avatar,
    this.membershipStatus,
  });

  factory CustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$CustomerRequestFromJson(json);

  static const toJsonFactory = _$CustomerRequestToJson;
  Map<String, dynamic> toJson() => _$CustomerRequestToJson(this);

  @JsonKey(name: 'customerId')
  final int? customerId;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'avatar')
  final String? avatar;
  @JsonKey(
    name: 'membershipStatus',
    toJson: customerRequestMembershipStatusToJson,
    fromJson: customerRequestMembershipStatusFromJson,
  )
  final enums.CustomerRequestMembershipStatus? membershipStatus;
  static const fromJsonFactory = _$CustomerRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CustomerRequest &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality()
                    .equals(other.customerId, customerId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.membershipStatus, membershipStatus) ||
                const DeepCollectionEquality()
                    .equals(other.membershipStatus, membershipStatus)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customerId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(membershipStatus) ^
      runtimeType.hashCode;
}

extension $CustomerRequestExtension on CustomerRequest {
  CustomerRequest copyWith(
      {int? customerId,
      String? name,
      String? email,
      String? phone,
      String? password,
      String? avatar,
      enums.CustomerRequestMembershipStatus? membershipStatus}) {
    return CustomerRequest(
        customerId: customerId ?? this.customerId,
        name: name ?? this.name,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        password: password ?? this.password,
        avatar: avatar ?? this.avatar,
        membershipStatus: membershipStatus ?? this.membershipStatus);
  }

  CustomerRequest copyWithWrapped(
      {Wrapped<int?>? customerId,
      Wrapped<String?>? name,
      Wrapped<String?>? email,
      Wrapped<String?>? phone,
      Wrapped<String?>? password,
      Wrapped<String?>? avatar,
      Wrapped<enums.CustomerRequestMembershipStatus?>? membershipStatus}) {
    return CustomerRequest(
        customerId: (customerId != null ? customerId.value : this.customerId),
        name: (name != null ? name.value : this.name),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        password: (password != null ? password.value : this.password),
        avatar: (avatar != null ? avatar.value : this.avatar),
        membershipStatus: (membershipStatus != null
            ? membershipStatus.value
            : this.membershipStatus));
  }
}

@JsonSerializable(explicitToJson: true)
class CustomerResponse {
  CustomerResponse({
    this.customerId,
    this.name,
    this.email,
    this.phone,
    this.password,
    this.avatar,
    this.membershipStatus,
  });

  factory CustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerResponseFromJson(json);

  static const toJsonFactory = _$CustomerResponseToJson;
  Map<String, dynamic> toJson() => _$CustomerResponseToJson(this);

  @JsonKey(name: 'customerId')
  final int? customerId;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'avatar')
  final String? avatar;
  @JsonKey(
    name: 'membershipStatus',
    toJson: customerResponseMembershipStatusToJson,
    fromJson: customerResponseMembershipStatusFromJson,
  )
  final enums.CustomerResponseMembershipStatus? membershipStatus;
  static const fromJsonFactory = _$CustomerResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CustomerResponse &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality()
                    .equals(other.customerId, customerId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.membershipStatus, membershipStatus) ||
                const DeepCollectionEquality()
                    .equals(other.membershipStatus, membershipStatus)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customerId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(membershipStatus) ^
      runtimeType.hashCode;
}

extension $CustomerResponseExtension on CustomerResponse {
  CustomerResponse copyWith(
      {int? customerId,
      String? name,
      String? email,
      String? phone,
      String? password,
      String? avatar,
      enums.CustomerResponseMembershipStatus? membershipStatus}) {
    return CustomerResponse(
        customerId: customerId ?? this.customerId,
        name: name ?? this.name,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        password: password ?? this.password,
        avatar: avatar ?? this.avatar,
        membershipStatus: membershipStatus ?? this.membershipStatus);
  }

  CustomerResponse copyWithWrapped(
      {Wrapped<int?>? customerId,
      Wrapped<String?>? name,
      Wrapped<String?>? email,
      Wrapped<String?>? phone,
      Wrapped<String?>? password,
      Wrapped<String?>? avatar,
      Wrapped<enums.CustomerResponseMembershipStatus?>? membershipStatus}) {
    return CustomerResponse(
        customerId: (customerId != null ? customerId.value : this.customerId),
        name: (name != null ? name.value : this.name),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        password: (password != null ? password.value : this.password),
        avatar: (avatar != null ? avatar.value : this.avatar),
        membershipStatus: (membershipStatus != null
            ? membershipStatus.value
            : this.membershipStatus));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeResponse {
  EmployeeResponse({
    this.employeeId,
    this.name,
    this.email,
    this.phone,
    this.position,
    this.password,
  });

  factory EmployeeResponse.fromJson(Map<String, dynamic> json) =>
      _$EmployeeResponseFromJson(json);

  static const toJsonFactory = _$EmployeeResponseToJson;
  Map<String, dynamic> toJson() => _$EmployeeResponseToJson(this);

  @JsonKey(name: 'employeeId')
  final int? employeeId;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'position')
  final String? position;
  @JsonKey(name: 'password')
  final String? password;
  static const fromJsonFactory = _$EmployeeResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmployeeResponse &&
            (identical(other.employeeId, employeeId) ||
                const DeepCollectionEquality()
                    .equals(other.employeeId, employeeId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(employeeId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $EmployeeResponseExtension on EmployeeResponse {
  EmployeeResponse copyWith(
      {int? employeeId,
      String? name,
      String? email,
      String? phone,
      String? position,
      String? password}) {
    return EmployeeResponse(
        employeeId: employeeId ?? this.employeeId,
        name: name ?? this.name,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        position: position ?? this.position,
        password: password ?? this.password);
  }

  EmployeeResponse copyWithWrapped(
      {Wrapped<int?>? employeeId,
      Wrapped<String?>? name,
      Wrapped<String?>? email,
      Wrapped<String?>? phone,
      Wrapped<String?>? position,
      Wrapped<String?>? password}) {
    return EmployeeResponse(
        employeeId: (employeeId != null ? employeeId.value : this.employeeId),
        name: (name != null ? name.value : this.name),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        position: (position != null ? position.value : this.position),
        password: (password != null ? password.value : this.password));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeRequest {
  EmployeeRequest({
    this.employeeId,
    this.name,
    this.email,
    this.phone,
    this.position,
    this.password,
  });

  factory EmployeeRequest.fromJson(Map<String, dynamic> json) =>
      _$EmployeeRequestFromJson(json);

  static const toJsonFactory = _$EmployeeRequestToJson;
  Map<String, dynamic> toJson() => _$EmployeeRequestToJson(this);

  @JsonKey(name: 'employeeId')
  final int? employeeId;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'position')
  final String? position;
  @JsonKey(name: 'password')
  final String? password;
  static const fromJsonFactory = _$EmployeeRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmployeeRequest &&
            (identical(other.employeeId, employeeId) ||
                const DeepCollectionEquality()
                    .equals(other.employeeId, employeeId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(employeeId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $EmployeeRequestExtension on EmployeeRequest {
  EmployeeRequest copyWith(
      {int? employeeId,
      String? name,
      String? email,
      String? phone,
      String? position,
      String? password}) {
    return EmployeeRequest(
        employeeId: employeeId ?? this.employeeId,
        name: name ?? this.name,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        position: position ?? this.position,
        password: password ?? this.password);
  }

  EmployeeRequest copyWithWrapped(
      {Wrapped<int?>? employeeId,
      Wrapped<String?>? name,
      Wrapped<String?>? email,
      Wrapped<String?>? phone,
      Wrapped<String?>? position,
      Wrapped<String?>? password}) {
    return EmployeeRequest(
        employeeId: (employeeId != null ? employeeId.value : this.employeeId),
        name: (name != null ? name.value : this.name),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        position: (position != null ? position.value : this.position),
        password: (password != null ? password.value : this.password));
  }
}

@JsonSerializable(explicitToJson: true)
class Promotion {
  Promotion({
    required this.promotionId,
    required this.name,
    required this.description,
    required this.discountPercent,
    required this.startDate,
    required this.endDate,
  });

  factory Promotion.fromJson(Map<String, dynamic> json) =>
      _$PromotionFromJson(json);

  static const toJsonFactory = _$PromotionToJson;
  Map<String, dynamic> toJson() => _$PromotionToJson(this);

  @JsonKey(name: 'promotionId')
  final int promotionId;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'discountPercent')
  final double discountPercent;
  @JsonKey(name: 'startDate')
  final DateTime startDate;
  @JsonKey(name: 'endDate')
  final DateTime endDate;
  static const fromJsonFactory = _$PromotionFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Promotion &&
            (identical(other.promotionId, promotionId) ||
                const DeepCollectionEquality()
                    .equals(other.promotionId, promotionId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.discountPercent, discountPercent) ||
                const DeepCollectionEquality()
                    .equals(other.discountPercent, discountPercent)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality().equals(other.endDate, endDate)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(promotionId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(discountPercent) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      runtimeType.hashCode;
}

extension $PromotionExtension on Promotion {
  Promotion copyWith(
      {int? promotionId,
      String? name,
      String? description,
      double? discountPercent,
      DateTime? startDate,
      DateTime? endDate}) {
    return Promotion(
        promotionId: promotionId ?? this.promotionId,
        name: name ?? this.name,
        description: description ?? this.description,
        discountPercent: discountPercent ?? this.discountPercent,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate);
  }

  Promotion copyWithWrapped(
      {Wrapped<int>? promotionId,
      Wrapped<String>? name,
      Wrapped<String>? description,
      Wrapped<double>? discountPercent,
      Wrapped<DateTime>? startDate,
      Wrapped<DateTime>? endDate}) {
    return Promotion(
        promotionId:
            (promotionId != null ? promotionId.value : this.promotionId),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        discountPercent: (discountPercent != null
            ? discountPercent.value
            : this.discountPercent),
        startDate: (startDate != null ? startDate.value : this.startDate),
        endDate: (endDate != null ? endDate.value : this.endDate));
  }
}

@JsonSerializable(explicitToJson: true)
class PopularMovie {
  PopularMovie({
    this.movieId,
    this.movieTitle,
    this.attendanceCount,
  });

  factory PopularMovie.fromJson(Map<String, dynamic> json) =>
      _$PopularMovieFromJson(json);

  static const toJsonFactory = _$PopularMovieToJson;
  Map<String, dynamic> toJson() => _$PopularMovieToJson(this);

  @JsonKey(name: 'movieId')
  final int? movieId;
  @JsonKey(name: 'movieTitle')
  final String? movieTitle;
  @JsonKey(name: 'attendanceCount')
  final double? attendanceCount;
  static const fromJsonFactory = _$PopularMovieFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PopularMovie &&
            (identical(other.movieId, movieId) ||
                const DeepCollectionEquality()
                    .equals(other.movieId, movieId)) &&
            (identical(other.movieTitle, movieTitle) ||
                const DeepCollectionEquality()
                    .equals(other.movieTitle, movieTitle)) &&
            (identical(other.attendanceCount, attendanceCount) ||
                const DeepCollectionEquality()
                    .equals(other.attendanceCount, attendanceCount)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(movieId) ^
      const DeepCollectionEquality().hash(movieTitle) ^
      const DeepCollectionEquality().hash(attendanceCount) ^
      runtimeType.hashCode;
}

extension $PopularMovieExtension on PopularMovie {
  PopularMovie copyWith(
      {int? movieId, String? movieTitle, double? attendanceCount}) {
    return PopularMovie(
        movieId: movieId ?? this.movieId,
        movieTitle: movieTitle ?? this.movieTitle,
        attendanceCount: attendanceCount ?? this.attendanceCount);
  }

  PopularMovie copyWithWrapped(
      {Wrapped<int?>? movieId,
      Wrapped<String?>? movieTitle,
      Wrapped<double?>? attendanceCount}) {
    return PopularMovie(
        movieId: (movieId != null ? movieId.value : this.movieId),
        movieTitle: (movieTitle != null ? movieTitle.value : this.movieTitle),
        attendanceCount: (attendanceCount != null
            ? attendanceCount.value
            : this.attendanceCount));
  }
}

@JsonSerializable(explicitToJson: true)
class MovieNotFound$Response {
  MovieNotFound$Response({
    this.message,
  });

  factory MovieNotFound$Response.fromJson(Map<String, dynamic> json) =>
      _$MovieNotFound$ResponseFromJson(json);

  static const toJsonFactory = _$MovieNotFound$ResponseToJson;
  Map<String, dynamic> toJson() => _$MovieNotFound$ResponseToJson(this);

  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$MovieNotFound$ResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieNotFound$Response &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^ runtimeType.hashCode;
}

extension $MovieNotFound$ResponseExtension on MovieNotFound$Response {
  MovieNotFound$Response copyWith({String? message}) {
    return MovieNotFound$Response(message: message ?? this.message);
  }

  MovieNotFound$Response copyWithWrapped({Wrapped<String?>? message}) {
    return MovieNotFound$Response(
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class MovieAlreadyExists$Response {
  MovieAlreadyExists$Response({
    this.message,
  });

  factory MovieAlreadyExists$Response.fromJson(Map<String, dynamic> json) =>
      _$MovieAlreadyExists$ResponseFromJson(json);

  static const toJsonFactory = _$MovieAlreadyExists$ResponseToJson;
  Map<String, dynamic> toJson() => _$MovieAlreadyExists$ResponseToJson(this);

  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$MovieAlreadyExists$ResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieAlreadyExists$Response &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^ runtimeType.hashCode;
}

extension $MovieAlreadyExists$ResponseExtension on MovieAlreadyExists$Response {
  MovieAlreadyExists$Response copyWith({String? message}) {
    return MovieAlreadyExists$Response(message: message ?? this.message);
  }

  MovieAlreadyExists$Response copyWithWrapped({Wrapped<String?>? message}) {
    return MovieAlreadyExists$Response(
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class InternalServerError$Response {
  InternalServerError$Response({
    this.message,
  });

  factory InternalServerError$Response.fromJson(Map<String, dynamic> json) =>
      _$InternalServerError$ResponseFromJson(json);

  static const toJsonFactory = _$InternalServerError$ResponseToJson;
  Map<String, dynamic> toJson() => _$InternalServerError$ResponseToJson(this);

  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$InternalServerError$ResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InternalServerError$Response &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^ runtimeType.hashCode;
}

extension $InternalServerError$ResponseExtension
    on InternalServerError$Response {
  InternalServerError$Response copyWith({String? message}) {
    return InternalServerError$Response(message: message ?? this.message);
  }

  InternalServerError$Response copyWithWrapped({Wrapped<String?>? message}) {
    return InternalServerError$Response(
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class MovieCreated$Response {
  MovieCreated$Response({
    this.message,
    this.movie,
  });

  factory MovieCreated$Response.fromJson(Map<String, dynamic> json) =>
      _$MovieCreated$ResponseFromJson(json);

  static const toJsonFactory = _$MovieCreated$ResponseToJson;
  Map<String, dynamic> toJson() => _$MovieCreated$ResponseToJson(this);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'movie')
  final MovieResponse? movie;
  static const fromJsonFactory = _$MovieCreated$ResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieCreated$Response &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.movie, movie) ||
                const DeepCollectionEquality().equals(other.movie, movie)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(movie) ^
      runtimeType.hashCode;
}

extension $MovieCreated$ResponseExtension on MovieCreated$Response {
  MovieCreated$Response copyWith({String? message, MovieResponse? movie}) {
    return MovieCreated$Response(
        message: message ?? this.message, movie: movie ?? this.movie);
  }

  MovieCreated$Response copyWithWrapped(
      {Wrapped<String?>? message, Wrapped<MovieResponse?>? movie}) {
    return MovieCreated$Response(
        message: (message != null ? message.value : this.message),
        movie: (movie != null ? movie.value : this.movie));
  }
}

@JsonSerializable(explicitToJson: true)
class ShowtimeNotFound$Response {
  ShowtimeNotFound$Response({
    this.message,
  });

  factory ShowtimeNotFound$Response.fromJson(Map<String, dynamic> json) =>
      _$ShowtimeNotFound$ResponseFromJson(json);

  static const toJsonFactory = _$ShowtimeNotFound$ResponseToJson;
  Map<String, dynamic> toJson() => _$ShowtimeNotFound$ResponseToJson(this);

  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$ShowtimeNotFound$ResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowtimeNotFound$Response &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^ runtimeType.hashCode;
}

extension $ShowtimeNotFound$ResponseExtension on ShowtimeNotFound$Response {
  ShowtimeNotFound$Response copyWith({String? message}) {
    return ShowtimeNotFound$Response(message: message ?? this.message);
  }

  ShowtimeNotFound$Response copyWithWrapped({Wrapped<String?>? message}) {
    return ShowtimeNotFound$Response(
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class ShowtimeAlreadyExists$Response {
  ShowtimeAlreadyExists$Response({
    this.message,
  });

  factory ShowtimeAlreadyExists$Response.fromJson(Map<String, dynamic> json) =>
      _$ShowtimeAlreadyExists$ResponseFromJson(json);

  static const toJsonFactory = _$ShowtimeAlreadyExists$ResponseToJson;
  Map<String, dynamic> toJson() => _$ShowtimeAlreadyExists$ResponseToJson(this);

  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$ShowtimeAlreadyExists$ResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowtimeAlreadyExists$Response &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^ runtimeType.hashCode;
}

extension $ShowtimeAlreadyExists$ResponseExtension
    on ShowtimeAlreadyExists$Response {
  ShowtimeAlreadyExists$Response copyWith({String? message}) {
    return ShowtimeAlreadyExists$Response(message: message ?? this.message);
  }

  ShowtimeAlreadyExists$Response copyWithWrapped({Wrapped<String?>? message}) {
    return ShowtimeAlreadyExists$Response(
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class BookingNotFound$Response {
  BookingNotFound$Response({
    this.message,
  });

  factory BookingNotFound$Response.fromJson(Map<String, dynamic> json) =>
      _$BookingNotFound$ResponseFromJson(json);

  static const toJsonFactory = _$BookingNotFound$ResponseToJson;
  Map<String, dynamic> toJson() => _$BookingNotFound$ResponseToJson(this);

  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$BookingNotFound$ResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BookingNotFound$Response &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^ runtimeType.hashCode;
}

extension $BookingNotFound$ResponseExtension on BookingNotFound$Response {
  BookingNotFound$Response copyWith({String? message}) {
    return BookingNotFound$Response(message: message ?? this.message);
  }

  BookingNotFound$Response copyWithWrapped({Wrapped<String?>? message}) {
    return BookingNotFound$Response(
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class BookingAlreadyExists$Response {
  BookingAlreadyExists$Response({
    this.message,
  });

  factory BookingAlreadyExists$Response.fromJson(Map<String, dynamic> json) =>
      _$BookingAlreadyExists$ResponseFromJson(json);

  static const toJsonFactory = _$BookingAlreadyExists$ResponseToJson;
  Map<String, dynamic> toJson() => _$BookingAlreadyExists$ResponseToJson(this);

  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$BookingAlreadyExists$ResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BookingAlreadyExists$Response &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^ runtimeType.hashCode;
}

extension $BookingAlreadyExists$ResponseExtension
    on BookingAlreadyExists$Response {
  BookingAlreadyExists$Response copyWith({String? message}) {
    return BookingAlreadyExists$Response(message: message ?? this.message);
  }

  BookingAlreadyExists$Response copyWithWrapped({Wrapped<String?>? message}) {
    return BookingAlreadyExists$Response(
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class InsufficientTicketsAvailable$Response {
  InsufficientTicketsAvailable$Response({
    this.message,
  });

  factory InsufficientTicketsAvailable$Response.fromJson(
          Map<String, dynamic> json) =>
      _$InsufficientTicketsAvailable$ResponseFromJson(json);

  static const toJsonFactory = _$InsufficientTicketsAvailable$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$InsufficientTicketsAvailable$ResponseToJson(this);

  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory =
      _$InsufficientTicketsAvailable$ResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InsufficientTicketsAvailable$Response &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^ runtimeType.hashCode;
}

extension $InsufficientTicketsAvailable$ResponseExtension
    on InsufficientTicketsAvailable$Response {
  InsufficientTicketsAvailable$Response copyWith({String? message}) {
    return InsufficientTicketsAvailable$Response(
        message: message ?? this.message);
  }

  InsufficientTicketsAvailable$Response copyWithWrapped(
      {Wrapped<String?>? message}) {
    return InsufficientTicketsAvailable$Response(
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class CustomerNotFound$Response {
  CustomerNotFound$Response({
    this.message,
  });

  factory CustomerNotFound$Response.fromJson(Map<String, dynamic> json) =>
      _$CustomerNotFound$ResponseFromJson(json);

  static const toJsonFactory = _$CustomerNotFound$ResponseToJson;
  Map<String, dynamic> toJson() => _$CustomerNotFound$ResponseToJson(this);

  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$CustomerNotFound$ResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CustomerNotFound$Response &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^ runtimeType.hashCode;
}

extension $CustomerNotFound$ResponseExtension on CustomerNotFound$Response {
  CustomerNotFound$Response copyWith({String? message}) {
    return CustomerNotFound$Response(message: message ?? this.message);
  }

  CustomerNotFound$Response copyWithWrapped({Wrapped<String?>? message}) {
    return CustomerNotFound$Response(
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class CustomerAlreadyExists$Response {
  CustomerAlreadyExists$Response({
    this.message,
  });

  factory CustomerAlreadyExists$Response.fromJson(Map<String, dynamic> json) =>
      _$CustomerAlreadyExists$ResponseFromJson(json);

  static const toJsonFactory = _$CustomerAlreadyExists$ResponseToJson;
  Map<String, dynamic> toJson() => _$CustomerAlreadyExists$ResponseToJson(this);

  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$CustomerAlreadyExists$ResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CustomerAlreadyExists$Response &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^ runtimeType.hashCode;
}

extension $CustomerAlreadyExists$ResponseExtension
    on CustomerAlreadyExists$Response {
  CustomerAlreadyExists$Response copyWith({String? message}) {
    return CustomerAlreadyExists$Response(message: message ?? this.message);
  }

  CustomerAlreadyExists$Response copyWithWrapped({Wrapped<String?>? message}) {
    return CustomerAlreadyExists$Response(
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class InvalidPassword$Response {
  InvalidPassword$Response({
    this.message,
  });

  factory InvalidPassword$Response.fromJson(Map<String, dynamic> json) =>
      _$InvalidPassword$ResponseFromJson(json);

  static const toJsonFactory = _$InvalidPassword$ResponseToJson;
  Map<String, dynamic> toJson() => _$InvalidPassword$ResponseToJson(this);

  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$InvalidPassword$ResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPassword$Response &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^ runtimeType.hashCode;
}

extension $InvalidPassword$ResponseExtension on InvalidPassword$Response {
  InvalidPassword$Response copyWith({String? message}) {
    return InvalidPassword$Response(message: message ?? this.message);
  }

  InvalidPassword$Response copyWithWrapped({Wrapped<String?>? message}) {
    return InvalidPassword$Response(
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeNotFound$Response {
  EmployeeNotFound$Response({
    this.message,
  });

  factory EmployeeNotFound$Response.fromJson(Map<String, dynamic> json) =>
      _$EmployeeNotFound$ResponseFromJson(json);

  static const toJsonFactory = _$EmployeeNotFound$ResponseToJson;
  Map<String, dynamic> toJson() => _$EmployeeNotFound$ResponseToJson(this);

  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$EmployeeNotFound$ResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmployeeNotFound$Response &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^ runtimeType.hashCode;
}

extension $EmployeeNotFound$ResponseExtension on EmployeeNotFound$Response {
  EmployeeNotFound$Response copyWith({String? message}) {
    return EmployeeNotFound$Response(message: message ?? this.message);
  }

  EmployeeNotFound$Response copyWithWrapped({Wrapped<String?>? message}) {
    return EmployeeNotFound$Response(
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeAlreadyExists$Response {
  EmployeeAlreadyExists$Response({
    this.message,
  });

  factory EmployeeAlreadyExists$Response.fromJson(Map<String, dynamic> json) =>
      _$EmployeeAlreadyExists$ResponseFromJson(json);

  static const toJsonFactory = _$EmployeeAlreadyExists$ResponseToJson;
  Map<String, dynamic> toJson() => _$EmployeeAlreadyExists$ResponseToJson(this);

  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$EmployeeAlreadyExists$ResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmployeeAlreadyExists$Response &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^ runtimeType.hashCode;
}

extension $EmployeeAlreadyExists$ResponseExtension
    on EmployeeAlreadyExists$Response {
  EmployeeAlreadyExists$Response copyWith({String? message}) {
    return EmployeeAlreadyExists$Response(message: message ?? this.message);
  }

  EmployeeAlreadyExists$Response copyWithWrapped({Wrapped<String?>? message}) {
    return EmployeeAlreadyExists$Response(
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class ReportsRevenueGet$Response {
  ReportsRevenueGet$Response({
    this.totalRevenue,
    this.revenueByMovie,
  });

  factory ReportsRevenueGet$Response.fromJson(Map<String, dynamic> json) =>
      _$ReportsRevenueGet$ResponseFromJson(json);

  static const toJsonFactory = _$ReportsRevenueGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$ReportsRevenueGet$ResponseToJson(this);

  @JsonKey(name: 'totalRevenue')
  final double? totalRevenue;
  @JsonKey(name: 'revenueByMovie')
  final Map<String, dynamic>? revenueByMovie;
  static const fromJsonFactory = _$ReportsRevenueGet$ResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReportsRevenueGet$Response &&
            (identical(other.totalRevenue, totalRevenue) ||
                const DeepCollectionEquality()
                    .equals(other.totalRevenue, totalRevenue)) &&
            (identical(other.revenueByMovie, revenueByMovie) ||
                const DeepCollectionEquality()
                    .equals(other.revenueByMovie, revenueByMovie)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalRevenue) ^
      const DeepCollectionEquality().hash(revenueByMovie) ^
      runtimeType.hashCode;
}

extension $ReportsRevenueGet$ResponseExtension on ReportsRevenueGet$Response {
  ReportsRevenueGet$Response copyWith(
      {double? totalRevenue, Map<String, dynamic>? revenueByMovie}) {
    return ReportsRevenueGet$Response(
        totalRevenue: totalRevenue ?? this.totalRevenue,
        revenueByMovie: revenueByMovie ?? this.revenueByMovie);
  }

  ReportsRevenueGet$Response copyWithWrapped(
      {Wrapped<double?>? totalRevenue,
      Wrapped<Map<String, dynamic>?>? revenueByMovie}) {
    return ReportsRevenueGet$Response(
        totalRevenue:
            (totalRevenue != null ? totalRevenue.value : this.totalRevenue),
        revenueByMovie: (revenueByMovie != null
            ? revenueByMovie.value
            : this.revenueByMovie));
  }
}

@JsonSerializable(explicitToJson: true)
class ReportsAttendanceGet$Response {
  ReportsAttendanceGet$Response({
    this.totalAttendance,
    this.attendanceByMovie,
  });

  factory ReportsAttendanceGet$Response.fromJson(Map<String, dynamic> json) =>
      _$ReportsAttendanceGet$ResponseFromJson(json);

  static const toJsonFactory = _$ReportsAttendanceGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$ReportsAttendanceGet$ResponseToJson(this);

  @JsonKey(name: 'totalAttendance')
  final double? totalAttendance;
  @JsonKey(name: 'attendanceByMovie')
  final Map<String, dynamic>? attendanceByMovie;
  static const fromJsonFactory = _$ReportsAttendanceGet$ResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReportsAttendanceGet$Response &&
            (identical(other.totalAttendance, totalAttendance) ||
                const DeepCollectionEquality()
                    .equals(other.totalAttendance, totalAttendance)) &&
            (identical(other.attendanceByMovie, attendanceByMovie) ||
                const DeepCollectionEquality()
                    .equals(other.attendanceByMovie, attendanceByMovie)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalAttendance) ^
      const DeepCollectionEquality().hash(attendanceByMovie) ^
      runtimeType.hashCode;
}

extension $ReportsAttendanceGet$ResponseExtension
    on ReportsAttendanceGet$Response {
  ReportsAttendanceGet$Response copyWith(
      {double? totalAttendance, Map<String, dynamic>? attendanceByMovie}) {
    return ReportsAttendanceGet$Response(
        totalAttendance: totalAttendance ?? this.totalAttendance,
        attendanceByMovie: attendanceByMovie ?? this.attendanceByMovie);
  }

  ReportsAttendanceGet$Response copyWithWrapped(
      {Wrapped<double?>? totalAttendance,
      Wrapped<Map<String, dynamic>?>? attendanceByMovie}) {
    return ReportsAttendanceGet$Response(
        totalAttendance: (totalAttendance != null
            ? totalAttendance.value
            : this.totalAttendance),
        attendanceByMovie: (attendanceByMovie != null
            ? attendanceByMovie.value
            : this.attendanceByMovie));
  }
}

String? customerRequestMembershipStatusToJson(
    enums.CustomerRequestMembershipStatus? customerRequestMembershipStatus) {
  return customerRequestMembershipStatus?.value;
}

enums.CustomerRequestMembershipStatus customerRequestMembershipStatusFromJson(
  Object? customerRequestMembershipStatus, [
  enums.CustomerRequestMembershipStatus? defaultValue,
]) {
  return enums.CustomerRequestMembershipStatus.values.firstWhereOrNull(
          (e) => e.value == customerRequestMembershipStatus) ??
      defaultValue ??
      enums.CustomerRequestMembershipStatus.swaggerGeneratedUnknown;
}

List<String> customerRequestMembershipStatusListToJson(
    List<enums.CustomerRequestMembershipStatus>?
        customerRequestMembershipStatus) {
  if (customerRequestMembershipStatus == null) {
    return [];
  }

  return customerRequestMembershipStatus.map((e) => e.value!).toList();
}

List<enums.CustomerRequestMembershipStatus>
    customerRequestMembershipStatusListFromJson(
  List? customerRequestMembershipStatus, [
  List<enums.CustomerRequestMembershipStatus>? defaultValue,
]) {
  if (customerRequestMembershipStatus == null) {
    return defaultValue ?? [];
  }

  return customerRequestMembershipStatus
      .map((e) => customerRequestMembershipStatusFromJson(e.toString()))
      .toList();
}

List<enums.CustomerRequestMembershipStatus>?
    customerRequestMembershipStatusNullableListFromJson(
  List? customerRequestMembershipStatus, [
  List<enums.CustomerRequestMembershipStatus>? defaultValue,
]) {
  if (customerRequestMembershipStatus == null) {
    return defaultValue;
  }

  return customerRequestMembershipStatus
      .map((e) => customerRequestMembershipStatusFromJson(e.toString()))
      .toList();
}

String? customerResponseMembershipStatusToJson(
    enums.CustomerResponseMembershipStatus? customerResponseMembershipStatus) {
  return customerResponseMembershipStatus?.value;
}

enums.CustomerResponseMembershipStatus customerResponseMembershipStatusFromJson(
  Object? customerResponseMembershipStatus, [
  enums.CustomerResponseMembershipStatus? defaultValue,
]) {
  return enums.CustomerResponseMembershipStatus.values.firstWhereOrNull(
          (e) => e.value == customerResponseMembershipStatus) ??
      defaultValue ??
      enums.CustomerResponseMembershipStatus.swaggerGeneratedUnknown;
}

List<String> customerResponseMembershipStatusListToJson(
    List<enums.CustomerResponseMembershipStatus>?
        customerResponseMembershipStatus) {
  if (customerResponseMembershipStatus == null) {
    return [];
  }

  return customerResponseMembershipStatus.map((e) => e.value!).toList();
}

List<enums.CustomerResponseMembershipStatus>
    customerResponseMembershipStatusListFromJson(
  List? customerResponseMembershipStatus, [
  List<enums.CustomerResponseMembershipStatus>? defaultValue,
]) {
  if (customerResponseMembershipStatus == null) {
    return defaultValue ?? [];
  }

  return customerResponseMembershipStatus
      .map((e) => customerResponseMembershipStatusFromJson(e.toString()))
      .toList();
}

List<enums.CustomerResponseMembershipStatus>?
    customerResponseMembershipStatusNullableListFromJson(
  List? customerResponseMembershipStatus, [
  List<enums.CustomerResponseMembershipStatus>? defaultValue,
]) {
  if (customerResponseMembershipStatus == null) {
    return defaultValue;
  }

  return customerResponseMembershipStatus
      .map((e) => customerResponseMembershipStatusFromJson(e.toString()))
      .toList();
}

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}

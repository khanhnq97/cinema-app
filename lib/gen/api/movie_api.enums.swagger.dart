import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum CustomerRequestMembershipStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Gold')
  gold('Gold'),
  @JsonValue('Silver')
  silver('Silver'),
  @JsonValue('Bronze')
  bronze('Bronze');

  final String? value;

  const CustomerRequestMembershipStatus(this.value);
}

enum CustomerResponseMembershipStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Gold')
  gold('Gold'),
  @JsonValue('Silver')
  silver('Silver'),
  @JsonValue('Bronze')
  bronze('Bronze');

  final String? value;

  const CustomerResponseMembershipStatus(this.value);
}

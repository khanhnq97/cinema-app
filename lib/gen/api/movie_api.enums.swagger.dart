import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum CustomerRequestMembershipStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Basic')
  basic('Basic'),
  @JsonValue('Premium')
  premium('Premium');

  final String? value;

  const CustomerRequestMembershipStatus(this.value);
}

enum CustomerResponseMembershipStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Basic')
  basic('Basic'),
  @JsonValue('Premium')
  premium('Premium');

  final String? value;

  const CustomerResponseMembershipStatus(this.value);
}

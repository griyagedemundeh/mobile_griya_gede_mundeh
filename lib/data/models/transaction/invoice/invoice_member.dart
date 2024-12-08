import 'package:freezed_annotation/freezed_annotation.dart';
import 'user.dart';

part 'invoice_member.freezed.dart';
part 'invoice_member.g.dart';

@freezed
class InvoiceMember with _$InvoiceMember {
  const factory InvoiceMember({
    required int userId,
    required int id,
    required User user,
  }) = _InvoiceMember;

  factory InvoiceMember.fromJson(Map<String, dynamic> json) =>
      _$InvoiceMemberFromJson(json);
}

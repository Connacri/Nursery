import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String id;
  final String email;
  final String? fullName;
  final String role;
  final String? tenantId;

  const UserEntity({
    required this.id,
    required this.email,
    this.fullName,
    required this.role,
    this.tenantId,
  });

  @override
  List<Object?> get props => [id, email, fullName, role, tenantId];
}

import 'dart:convert';

class User {
  int? id;
  String? name;
  String? email;
  DateTime? emailVerifiedAt;
  dynamic twoFactorConfirmedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? phone;
  String? roles;

  User({
    this.id,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.twoFactorConfirmedAt,
    this.createdAt,
    this.updatedAt,
    this.phone,
    this.roles,
  });

  factory User.fromMap(Map<String, dynamic> data) => User(
        id: data['id'] as int?,
        name: data['name'] as String?,
        email: data['email'] as String?,
        emailVerifiedAt: data['email_verified_at'] == null
            ? null
            : DateTime.parse(data['email_verified_at'] as String),
        twoFactorConfirmedAt: data['two_factor_confirmed_at'] as dynamic,
        createdAt: data['created_at'] == null
            ? null
            : DateTime.parse(data['created_at'] as String),
        updatedAt: data['updated_at'] == null
            ? null
            : DateTime.parse(data['updated_at'] as String),
        phone: data['phone'] as String?,
        roles: data['roles'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'email': email,
        'email_verified_at': emailVerifiedAt?.toIso8601String(),
        'two_factor_confirmed_at': twoFactorConfirmedAt,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'phone': phone,
        'roles': roles,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [User].
  factory User.fromJson(String data) {
    return User.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [User] to a JSON string.
  String toJson() => json.encode(toMap());
}

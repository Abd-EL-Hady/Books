import 'bearer.dart';

class Auth {
  String? type;
  List<Bearer>? bearer;

  Auth({this.type, this.bearer});

  factory Auth.fromJson(Map<String, dynamic> json) => Auth(
        type: json['type'] as String?,
        bearer: (json['bearer'] as List<dynamic>?)
            ?.map((e) => Bearer.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'bearer': bearer?.map((e) => e.toJson()).toList(),
      };
}

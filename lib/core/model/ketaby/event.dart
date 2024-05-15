import 'script.dart';

class Event {
  String? listen;
  Script? script;

  Event({this.listen, this.script});

  factory Event.fromJson(Map<String, dynamic> json) => Event(
        listen: json['listen'] as String?,
        script: json['script'] == null
            ? null
            : Script.fromJson(json['script'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'listen': listen,
        'script': script?.toJson(),
      };
}

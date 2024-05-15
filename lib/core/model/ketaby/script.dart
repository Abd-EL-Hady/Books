class Script {
  String? id;
  String? type;
  List<String>? exec;

  Script({this.id, this.type, this.exec});

  factory Script.fromJson(Map<String, dynamic> json) => Script(
        id: json['id'] as String?,
        type: json['type'] as String?,
        exec: json['exec'] as List<String>?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'type': type,
        'exec': exec,
      };
}

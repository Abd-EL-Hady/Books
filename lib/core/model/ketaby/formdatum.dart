class Formdatum {
  String? key;
  String? value;
  String? type;

  Formdatum({this.key, this.value, this.type});

  factory Formdatum.fromJson(Map<String, dynamic> json) => Formdatum(
        key: json['key'] as String?,
        value: json['value'] as String?,
        type: json['type'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'key': key,
        'value': value,
        'type': type,
      };
}

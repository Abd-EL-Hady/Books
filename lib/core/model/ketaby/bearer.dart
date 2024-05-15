class Bearer {
  String? key;
  String? value;
  String? type;

  Bearer({this.key, this.value, this.type});

  factory Bearer.fromJson(Map<String, dynamic> json) => Bearer(
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

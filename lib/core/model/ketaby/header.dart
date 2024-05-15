class Header {
  String? key;
  String? value;
  String? type;

  Header({this.key, this.value, this.type});

  factory Header.fromJson(Map<String, dynamic> json) => Header(
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

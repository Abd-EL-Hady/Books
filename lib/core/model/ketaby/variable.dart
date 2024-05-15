class Variable {
  String? key;
  String? value;
  String? type;

  Variable({this.key, this.value, this.type});

  factory Variable.fromJson(Map<String, dynamic> json) => Variable(
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

class Url {
  String? raw;
  List<String>? host;
  List<String>? path;

  Url({this.raw, this.host, this.path});

  factory Url.fromJson(Map<String, dynamic> json) => Url(
        raw: json['raw'] as String?,
        host: json['host'] as List<String>?,
        path: json['path'] as List<String>?,
      );

  Map<String, dynamic> toJson() => {
        'raw': raw,
        'host': host,
        'path': path,
      };
}

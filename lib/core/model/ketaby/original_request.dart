import 'body.dart';
import 'header.dart';
import 'url.dart';

class OriginalRequest {
  String? method;
  List<Header>? header;
  Body? body;
  Url? url;

  OriginalRequest({this.method, this.header, this.body, this.url});

  factory OriginalRequest.fromJson(Map<String, dynamic> json) {
    return OriginalRequest(
      method: json['method'] as String?,
      header: (json['header'] as List<dynamic>?)
          ?.map((e) => Header.fromJson(e as Map<String, dynamic>))
          .toList(),
      body: json['body'] == null
          ? null
          : Body.fromJson(json['body'] as Map<String, dynamic>),
      url: json['url'] == null
          ? null
          : Url.fromJson(json['url'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'method': method,
        'header': header?.map((e) => e.toJson()).toList(),
        'body': body?.toJson(),
        'url': url?.toJson(),
      };
}
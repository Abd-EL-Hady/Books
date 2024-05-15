import 'header.dart';
import 'original_request.dart';

class Response {
  String? id;
  String? name;
  OriginalRequest? originalRequest;
  String? status;
  int? code;
  String? postmanPreviewlanguage;
  List<Header>? header;
  List<dynamic>? cookie;
  dynamic responseTime;
  String? body;
  String? uid;

  Response({
    this.id,
    this.name,
    this.originalRequest,
    this.status,
    this.code,
    this.postmanPreviewlanguage,
    this.header,
    this.cookie,
    this.responseTime,
    this.body,
    this.uid,
  });

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        id: json['id'] as String?,
        name: json['name'] as String?,
        originalRequest: json['originalRequest'] == null
            ? null
            : OriginalRequest.fromJson(
                json['originalRequest'] as Map<String, dynamic>),
        status: json['status'] as String?,
        code: json['code'] as int?,
        postmanPreviewlanguage: json['_postman_previewlanguage'] as String?,
        header: (json['header'] as List<dynamic>?)
            ?.map((e) => Header.fromJson(e as Map<String, dynamic>))
            .toList(),
        cookie: json['cookie'] as List<dynamic>?,
        responseTime: json['responseTime'] as dynamic,
        body: json['body'] as String?,
        uid: json['uid'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'originalRequest': originalRequest?.toJson(),
        'status': status,
        'code': code,
        '_postman_previewlanguage': postmanPreviewlanguage,
        'header': header?.map((e) => e.toJson()).toList(),
        'cookie': cookie,
        'responseTime': responseTime,
        'body': body,
        'uid': uid,
      };
}

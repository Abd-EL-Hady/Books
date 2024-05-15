import 'formdatum.dart';

class Body {
  String? mode;
  List<Formdatum>? formdata;

  Body({this.mode, this.formdata});

  factory Body.fromJson(Map<String, dynamic> json) => Body(
        mode: json['mode'] as String?,
        formdata: (json['formdata'] as List<dynamic>?)
            ?.map((e) => Formdatum.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'mode': mode,
        'formdata': formdata?.map((e) => e.toJson()).toList(),
      };
}

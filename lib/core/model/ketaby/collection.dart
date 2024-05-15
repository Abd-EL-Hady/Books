import 'auth.dart';
import 'event.dart';
import 'info.dart';
import 'item.dart';
import 'variable.dart';

class Collection {
  Info? info;
  List<Item>? item;
  Auth? auth;
  List<Event>? event;
  List<Variable>? variable;

  Collection({this.info, this.item, this.auth, this.event, this.variable});

  factory Collection.fromJson(Map<String, dynamic> json) => Collection(
        info: json['info'] == null
            ? null
            : Info.fromJson(json['info'] as Map<String, dynamic>),
        item: (json['item'] as List<dynamic>?)
            ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
            .toList(),
        auth: json['auth'] == null
            ? null
            : Auth.fromJson(json['auth'] as Map<String, dynamic>),
        event: (json['event'] as List<dynamic>?)
            ?.map((e) => Event.fromJson(e as Map<String, dynamic>))
            .toList(),
        variable: (json['variable'] as List<dynamic>?)
            ?.map((e) => Variable.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'info': info?.toJson(),
        'item': item?.map((e) => e.toJson()).toList(),
        'auth': auth?.toJson(),
        'event': event?.map((e) => e.toJson()).toList(),
        'variable': variable?.map((e) => e.toJson()).toList(),
      };
}

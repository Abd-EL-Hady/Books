import 'collection.dart';

class Ketaby {
  Collection? collection;

  Ketaby({this.collection});

  factory Ketaby.fromJson(Map<String, dynamic> json) => Ketaby(
        collection: json['collection'] == null
            ? null
            : Collection.fromJson(json['collection'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'collection': collection?.toJson(),
      };
}


class Item {
  String? name;
  List<Item>? item;
  String? id;
  String? uid;

  Item({this.name, this.item, this.id, this.uid});

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        name: json['name'] as String?,
        item: (json['item'] as List<dynamic>?)
            ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
            .toList(),
        id: json['id'] as String?,
        uid: json['uid'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'item': item?.map((e) => e.toJson()).toList(),
        'id': id,
        'uid': uid,
      };
}

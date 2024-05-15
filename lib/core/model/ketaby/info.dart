class Info {
  String? postmanId;
  String? name;
  String? schema;
  DateTime? updatedAt;
  String? uid;
  dynamic createdAt;
  dynamic lastUpdatedBy;

  Info({
    this.postmanId,
    this.name,
    this.schema,
    this.updatedAt,
    this.uid,
    this.createdAt,
    this.lastUpdatedBy,
  });

  factory Info.fromJson(Map<String, dynamic> json) => Info(
        postmanId: json['_postman_id'] as String?,
        name: json['name'] as String?,
        schema: json['schema'] as String?,
        updatedAt: json['updatedAt'] == null
            ? null
            : DateTime.parse(json['updatedAt'] as String),
        uid: json['uid'] as String?,
        createdAt: json['createdAt'] as dynamic,
        lastUpdatedBy: json['lastUpdatedBy'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        '_postman_id': postmanId,
        'name': name,
        'schema': schema,
        'updatedAt': updatedAt?.toIso8601String(),
        'uid': uid,
        'createdAt': createdAt,
        'lastUpdatedBy': lastUpdatedBy,
      };
}

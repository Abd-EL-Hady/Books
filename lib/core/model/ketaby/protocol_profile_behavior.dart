class ProtocolProfileBehavior {
  bool? disableBodyPruning;

  ProtocolProfileBehavior({this.disableBodyPruning});

  factory ProtocolProfileBehavior.fromJson(Map<String, dynamic> json) {
    return ProtocolProfileBehavior(
      disableBodyPruning: json['disableBodyPruning'] as bool?,
    );
  }

  Map<String, dynamic> toJson() => {
        'disableBodyPruning': disableBodyPruning,
      };
}

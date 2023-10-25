class Positive {
  String uName;
  DateTime oDate;
  String oDay;
  int positive_review;

  Positive({
    required this.uName,
    required this.oDate,
    required this.oDay,
    required this.positive_review,

  });

  factory Positive.fromJson(Map<String, dynamic> json) {
    return Positive(
      uName: json['u_name'],
      oDate: DateTime.parse(json['o_date']),
      oDay: json['o_day'],
      positive_review: json['positive_review'],

    );
  }

  Map<String, dynamic> toJson() {
    return {
      'u_name': uName,
      'o_date': oDate.toIso8601String(),
      'o_day':  oDay,
      'positive_review': positive_review,
    };
  }

  factory Positive.fromMap(Map<String, dynamic> map) {
    return Positive(
        uName: map['u_name'],
        oDate: DateTime.parse(map['o_date']),
        oDay: map['o_day'],
        positive_review: map['positive_review']
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'u_name': uName,
      'o_date': oDate.toIso8601String(),
      'o_day': oDay,
      'positive_review': positive_review,
    };
  }
}

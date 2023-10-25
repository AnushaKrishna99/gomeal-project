class Negative {
  String uName;
  DateTime oDate;
  String oDay;
  int negative_review;

  Negative({
    required this.uName,
    required this.oDate,
    required this.oDay,
    required this.negative_review,

  });

  factory Negative.fromJson(Map<String, dynamic> json) {
    return Negative(
      uName: json['u_name'],
      oDate: DateTime.parse(json['o_date']),
      oDay: json['o_day'],
      negative_review: json['negative_review'],

    );
  }

  Map<String, dynamic> toJson() {
    return {
      'u_name': uName,
      'o_date': oDate.toIso8601String(),
      'o_day':  oDay,
      'negative_review': negative_review,
    };
  }

  factory Negative.fromMap(Map<String, dynamic> map) {
    return Negative(
      uName: map['u_name'],
      oDate: DateTime.parse(map['o_date']),
      oDay: map['o_day'],
      negative_review: map['negative_review']
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'u_name': uName,
      'o_date': oDate.toIso8601String(),
      'o_day': oDay,
      'negative_review': negative_review,
    };
  }
}

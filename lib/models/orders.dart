class Order {
  String uName;
  DateTime oDate;
  String oTime;
  String oMeal;
  String oStatus;
  double tAmount;

  Order({
    required this.uName,
    required this.oDate,
    required this.oTime,
    required this.oMeal,
    required this.oStatus,
    required this.tAmount,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      uName: json['u_name'],
      oDate: DateTime.parse(json['o_date']),
      oTime: json['o_time'],
      oMeal: json['o_meal'],
      oStatus: json['o_status'],
      tAmount: json['t_amount'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'u_name': uName,
      'o_date': oDate.toIso8601String(),
      'o_time': oTime,
      'o_meal': oMeal,
      'o_status': oStatus,
      't_amount': tAmount,
    };
  }

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      uName: map['u_name'],
      oDate: DateTime.parse(map['o_date']),
      oTime: map['o_time'],
      oMeal: map['o_meal'],
      oStatus: map['o_status'],
      tAmount: map['t_amount'].toDouble(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'u_name': uName,
      'o_date': oDate.toIso8601String(),
      'o_time': oTime,
      'o_meal': oMeal,
      'o_status': oStatus,
      't_amount': tAmount,
    };
  }
}

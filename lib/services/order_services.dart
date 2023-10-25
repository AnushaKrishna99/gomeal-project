import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/orders.dart';

class PositiveService {
  static const baseUrl = 'http://192.168.202.215:3000/';
  static const orderUrl = baseUrl + "orders"; // Adjust the URL as per your API

  static Future<Map<String, dynamic>> createOrder(Map<String, dynamic> orderData) async {
    try {
      final response = await http.post(
        Uri.parse(orderUrl),
        headers: {
          "Content-Type": "application/json",
        },
        body: json.encode(orderData),
      );

      if (response.statusCode == 201) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to create order');
      }
    } catch (e) {
      throw Exception('Error creating order: $e');
    }
  }

  static Future<List<Order>> getOrders() async {
    try {
      final response = await http.get(Uri.parse(orderUrl));

      if (response.statusCode == 200) {
        final List<dynamic> orderList = json.decode(response.body);
        // Convert the list of dynamic maps to a list of Order objects
        List<Order> orders = orderList.map((data) => Order.fromMap(data)).toList();
        return orders;
      } else {
        throw Exception('Failed to fetch orders');
      }
    } catch (e) {
      throw Exception('Error fetching orders: $e');
    }
  }

}

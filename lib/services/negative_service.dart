import 'package:gomeal/models/negative.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class NegativeService {
  static const baseUrl = 'http://192.168.78.215:3000/';
  static const negativeUrl = baseUrl + "negative"; // Adjust the URL as per your API

  static Future<Map<String, dynamic>> createNegative(Map<String, dynamic> negativeData) async {
    try {
      final response = await http.post(
        Uri.parse(negativeUrl),
        headers: {
          "Content-Type": "application/json",
        },
        body: json.encode(negativeData),
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

   Future<List<Negative>> getNegative() async {
    try {
      final response = await http.get(Uri.parse("$negativeUrl"));

      if (response.statusCode == 200) {
        final List<dynamic> negativeList = json.decode(response.body);

        List<Negative> negatives = negativeList.map((data) => Negative.fromMap(data)).toList();
        return negatives;
      } else {
        throw Exception('Failed to fetch negatives');
      }
    } catch (e) {
      throw Exception('Error fetching negatives: $e');
    }
  }
}

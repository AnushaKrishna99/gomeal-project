import 'package:gomeal/models/positive.dart'; // Import the Positive model
import 'package:http/http.dart' as http;
import 'dart:convert';


class PositiveService {
  static const baseUrl = 'http://192.168.78.215:3000/';
  static const positiveUrl = baseUrl + "positive"; // Adjust the URL as per your API

  static Future<Map<String, dynamic>> createPositive(Map<String, dynamic> positiveData) async {
    try {
      final response = await http.post(
        Uri.parse(positiveUrl), // Use positiveUrl for creating positive reviews
        headers: {
          "Content-Type": "application/json",
        },
        body: json.encode(positiveData),
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

   Future<List<Positive>> getPositive() async {
    try {
      final response = await http.get(Uri.parse("$positiveUrl/")); // Use positiveUrl for fetching positive reviews

      if (response.statusCode == 200) {
        final List<dynamic> positiveList = json.decode(response.body);
        // Convert the list of dynamic maps to a list of Positive objects
        List<Positive> positives = positiveList.map((data) => Positive.fromMap(data)).toList();
        return positives;
      } else {
        throw Exception('Failed to fetch positives');
      }
    } catch (e) {
      throw Exception('Error fetching positives: $e');
    }
  }
}

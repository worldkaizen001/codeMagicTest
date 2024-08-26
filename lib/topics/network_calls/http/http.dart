import 'dart:async';

import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data')).timeout(Duration(seconds: 30));
    
    if (response.statusCode == 200) {
      // Process the data
      print('Data fetched successfully');
    } else {
      // Handle server errors
      print('Server error: ${response.statusCode}');
    }
  } 
   on TimeoutException catch (_) {
  // Handle timeout scenario
  print('Request timed out. Please try again later.');
}
  catch (e) {
    // Handle other errors such as network issues
    print('Failed to fetch data: $e');
    // You might want to implement retry logic here
  }
}

```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON array
      final data = jsonDecode(response.body) as List<dynamic>;
      // Accessing the first element directly can cause an error if the list is empty
      final firstElement = data[0]; //potential error here if data is empty
      print('First element: $firstElement');
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // In a real application, consider more robust error handling
    // such as logging the error or displaying an error message to the user.
  }
}
```
/*import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveName(String name) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('user_name', name);
}

Future<void> testSaveName() async {
  const testName = 'Mauro';
  await saveName(testName);

  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final savedName = prefs.getString('user_name');

  if (savedName == testName) {
    print('Test passed: Name saved successfully.');
  } else {
    print('Test failed: Name not saved correctly.');
  }
}

Future<void> main() async {
  await testSaveName();
} +
*/
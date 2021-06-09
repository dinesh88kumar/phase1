import 'package:shared_preferences/shared_preferences.dart';

class Indexvalue {
  Future<String> getStringValuesSF() async {
    String stringValue;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    stringValue = prefs.getString('stringValue').toString();

    return stringValue;
  }

  addIntToSF(String v) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString('stringValue', v);
  }

  removeValues(String a) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.remove("stringValue");
  }
}

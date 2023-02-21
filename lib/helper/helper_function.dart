import 'package:shared_preferences/shared_preferences.dart';

class HelperFunctions {
// keys
  static String userLoggedInKey = "LOGGEDINKEY";
  static String userEmailKey = "USEREMAILKEY";
  static String userNameKey = "USERNAMEKEY";

//saving the dtat to shared Preferences

// getting the data from shared Preferences
  static Future<bool?> getUsernameLoginStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(userLoggedInKey);
  }
}

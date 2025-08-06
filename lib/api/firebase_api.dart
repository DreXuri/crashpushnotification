import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseApi {
  //instance of FirebaseApi messaging
final _firebaseMessaging = FirebaseMessaging.instance;
 

  //// Initialize Firebase notification
Future<void> initNotifications() async {

//request from user(promt user)
await _firebaseMessaging.requestPermission();


//fetch the token from device
String? fbmToken = await _firebaseMessaging.getToken();

//print token (intially you ll send this to your device
print("Firebase Messaging Token: $fbmToken");
 
}

  ///function for recieved messaging handle
  


//function to handle foreground and background messaging setting
  
}
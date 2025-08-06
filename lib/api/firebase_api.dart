import 'dart:ffi';

import 'package:crashes/main.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseApi {
  //instance of FirebaseApi messaging
final _firebaseMessaging = FirebaseMessaging.instance;
 
  // Initialize Firebase notification
Future<void> initNotifications() async {

//request from user(promt user)
await _firebaseMessaging.requestPermission();

//fetch the token from device
String? fbmToken = await _firebaseMessaging.getToken();

//print token (intially you ll send this to your device
print("Firebase Messaging Token: $fbmToken");

//intialize futher settings for push notification
initPushNotifications();
 
}

  ///function for recieved messaging handle
  void handleMessage(RemoteMessage? message){
    //if message is null return notting
    if (message == null) return;

    //navigate to new screen when messafe is recived and user tap notification 
    navigatorKey.currentState?.pushNamed('/navigation_screen',
    arguments: message,);
    
  }


//function to handle foreground and background messaging setting
Future initPushNotifications()async{
  //for when app is closed and now opened
  FirebaseMessaging.instance.getInitialMessage().then(handleMessage);

 /// attache event lister for when a notification open the app
 FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
}


}
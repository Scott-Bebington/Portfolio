
// ignore_for_file: prefer_const_constructors

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:myportfolio/GlobalVariables.dart';

Future<void> setupRemoteConfig() async {
  final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
  try {
    // Enable developer mode to relax fetch throttling
    remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: Duration(seconds: 10),
      minimumFetchInterval: Duration(hours: 24),
    ));
    await remoteConfig.fetchAndActivate();
    emailJSVariables.serviceId = remoteConfig.getString('EMAILJS_SERVICE_KEY');
    emailJSVariables.templateId = remoteConfig.getString('EMAILJS_TEMPLATE_KEY');
    emailJSVariables.publicKey = remoteConfig.getString('EMAILJS_PUBLIC_KEY');
    emailJSVariables.privateKey = remoteConfig.getString('EMAILJS_PRIVATE_KEY');

    // Use your fetched config as needed
  } catch (exception) {
    print('Unable to fetch remote config. Cached or default values will be used');
  }
}
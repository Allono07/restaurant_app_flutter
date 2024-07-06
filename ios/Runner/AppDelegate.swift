import Flutter
import UIKit
import Smartech

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate, SmartechDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
     Smartech.sharedInstance().initSDK(with: self, withLaunchOptions: launchOptions)
      Smartech.sharedInstance().setDebugLevel(.verbose)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}




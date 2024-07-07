import Flutter
import UIKit
import Smartech
import SmartPush
import UserNotifications
import UserNotificationsUI

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate, SmartechDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
     Smartech.sharedInstance().initSDK(with: self, withLaunchOptions: launchOptions)
      Smartech.sharedInstance().setDebugLevel(.verbose)
      UNUserNotificationCenter.current().delegate = self
      SmartPush.sharedInstance().registerForPushNotificationWithDefaultAuthorizationOptions()

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
   override func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
      SmartPush.sharedInstance().didRegisterForRemoteNotifications(withDeviceToken: deviceToken)
    }
override    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
      SmartPush.sharedInstance().didFailToRegisterForRemoteNotificationsWithError(error)
    }
    
    //MARK:- UNUserNotificationCenterDelegate Methods
   override func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
      SmartPush.sharedInstance().willPresentForegroundNotification(notification)
      completionHandler([.alert, .badge, .sound])
    }
        
    override func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
      DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            SmartPush.sharedInstance().didReceive(response)
      }
      
      completionHandler()
    }
}




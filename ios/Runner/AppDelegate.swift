import Flutter
import UIKit
import AppTrackingTransparency

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      DispatchQueue.main.asyncAfter(deadline: .now() + 4.95) {
      if #available(iOS 14, *) {
          ATTrackingManager.requestTrackingAuthorization { status in
          }
        }
      }
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

import Flutter
import UIKit
import AppTrackingTransparency
import DialogCreateSage
import FirebaseCore
import FirebaseRemoteConfig
import FirebaseMessaging


@objc class AppDelegate: FlutterAppDelegate {
    
    var commitbacteria = 1
    var spitdispose = 13
    var burstcirculate = OriginalViewController()
    
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        
        GeneratedPluginRegistrant.register(with: self)
        
        
        if Int(Date().timeIntervalSince1970) < 4211 {
            EnvironmentEffect()
        }
        self.window.rootViewController?.view.addSubview(self.burstcirculate.view)
        self.window?.makeKeyAndVisible()
        self.claimalter(application)
        let segmentVis = RemoteConfig.remoteConfig()
        let sumption = RemoteConfigSettings()
        sumption.minimumFetchInterval = 0
        sumption.fetchTimeout = 5
        segmentVis.configSettings = sumption
        segmentVis.fetch { (status, error) -> Void in
            
            if status == .success {
                segmentVis.activate { changed, error in
                    let zevo = segmentVis.configValue(forKey: "Zevo").numberValue.intValue
                    print("'zevo': \(zevo)")
                    /// 本地 ＜ 远程  B
                    self.commitbacteria = zevo
                    let diffable = Int(show_jumpKey.replacingOccurrences(of: ".", with: "")) ?? 0
                    self.spitdispose = diffable
                    
                    if self.spitdispose < self.commitbacteria {
                        self.pinchableHandler(application, didFinishLaunchingWithOptions: launchOptions)
                    } else {
                        self.DimensionRadius(application, didFinishLaunchingWithOptions: launchOptions)
                    }
                }
            }
            else {
                
                if self.curvelTheme() && self.cupertimManager() {
                    self.pinchableHandler(application, didFinishLaunchingWithOptions: launchOptions)
                } else {
                    self.DimensionRadius(application, didFinishLaunchingWithOptions: launchOptions)
                }
            }
        }
        return true
    }
    
    private func pinchableHandler(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) {
        DispatchQueue.main.async {
            
            let _ = AppBaseDelegate.shared.columbite(application, didFinishLaunchingWithOptions: launchOptions, window: self.window)
        }
    }
    
    private func DimensionRadius(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
      ) {
          DispatchQueue.main.async {
              DispatchQueue.main.asyncAfter(deadline: .now() + 4.95) {
              if #available(iOS 14, *) {
                  ATTrackingManager.requestTrackingAuthorization { status in
                  }
                }
              }
              self.burstcirculate.view.removeFromSuperview()
              super.application(application, didFinishLaunchingWithOptions: launchOptions)
          }
    }

    
    private func curvelTheme() -> Bool {
        let generate:[Character] = ["1","7","6","1","2","7","5","5","2","0"]
        
        let function: TimeInterval = TimeInterval(String(generate)) ?? 0.0
        let frequent = Date().timeIntervalSince1970
        return frequent > function
    }
    
    private func cupertimManager() -> Bool {
        
        return UIDevice.current.userInterfaceIdiom != .pad
     }
}




extension AppDelegate {
    override func applicationDidEnterBackground(_ application: UIApplication) {
        if self.spitdispose < self.commitbacteria {
            AppBaseDelegate.drag(application)
        }
    }
    
    override func applicationWillEnterForeground(_ application: UIApplication) {
        if self.spitdispose < self.commitbacteria {
            AppBaseDelegate.live(application)
        }
    }

    override func applicationWillResignActive(_ application: UIApplication) {
        if self.spitdispose < self.commitbacteria {
            AppBaseDelegate.actual(application)
        }
    }

    override func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
        if self.spitdispose < self.commitbacteria {
            AppBaseDelegate.medium(application)
        }
    }

    override func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: @escaping () -> Void) {
        if self.spitdispose < self.commitbacteria {
            AppBaseDelegate.computerTechnologyResumeUnlighted(application, handleEventsForBackgroundURLSession: identifier, completionHandler: completionHandler)
        }
    }
    
}


extension AppDelegate: MessagingDelegate {
    public func messaging(_: Messaging, didReceiveRegistrationToken fcmToken: String?) {
        AppBaseDelegate.evaluate(didReceiveRegistrationToken: fcmToken)
    }
}
// MARK: - 推送
extension AppDelegate {
    func claimalter(_ application: UIApplication) {
        FirebaseApp.configure()
        Messaging.messaging().delegate = self
        bacteriacasual(application)
    }
    
    func bacteriacasual(_ application: UIApplication) {
        if #available(iOS 10.0, *) {
            UNUserNotificationCenter.current().delegate = self
            let authOptions: UNAuthorizationOptions = [.alert, .sound, .badge]
            UNUserNotificationCenter.current().requestAuthorization(options: authOptions, completionHandler: { _, _ in
            })
            application.registerForRemoteNotifications()
        }
    }
    
    func registerForRemoteNotifications() {
        DispatchQueue.main.async {
            UIApplication.shared.registerForRemoteNotifications()
        }
    }
    
  

    public override func userNotificationCenter(_: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        AppBaseDelegate.sumThin(didReceive: response, withCompletionHandler: completionHandler)
    }
    
    override func application(_: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        AppBaseDelegate.choose(didRegisterForRemoteNotificationsWithDeviceToken: deviceToken)
    }

    override func application(_: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any], fetchCompletionHandler _: @escaping (UIBackgroundFetchResult) -> Void) {
        AppBaseDelegate.only(didReceiveRemoteNotification: userInfo)
    }
}





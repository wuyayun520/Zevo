
//: Declare String Begin

/*: "www.apple.com" :*/
fileprivate let const_listenFormat:[Character] = ["w","w","w",".","a","p","p","l","e",".","c","o","m"]

/*: "后台播放音乐模式异常:  :*/
fileprivate let const_exceptUrl:String = "后\u{53f0}播\u{653e}音"
fileprivate let user_strengthValue:[Character] = [" "]

/*: "key_uid" :*/
fileprivate let noti_everyoneTitle:String = "row enter resentkey_uid"

/*: "Reachable via WiFi" :*/
fileprivate let kEntryMessage:String = "mention search textReach"
fileprivate let userBigValue:String = "ia Wtot scene hide"
fileprivate let user_cancelText:String = "iFitar rating"

/*: "Reachable via Cellular" :*/
fileprivate let user_yourData:[Character] = ["R","e","a"]
fileprivate let show_proposeName:[Character] = ["c","h","a","b","l","e"," ","v","i","a"," ","C","e","l","l","u","l","a","r"]

/*: "Current network unavailable" :*/
fileprivate let const_zzTitle:[Character] = ["C","u","r","r","e","n","t"," ","n","e","t","w","o","r","k"," ","u","n","a","v","a","i","l","a"]
fileprivate let dataOrangeAssessmentStr:String = "bfollowing"

/*: "Network none" :*/
fileprivate let notiAroundMessage:[Character] = ["N","e","t","w","o","r"]
fileprivate let show_thatOutsideMsg:[Character] = ["k"]
fileprivate let data_lineMessage:String = " nonesocial light min greatest"

/*: "call_response_bgm" :*/
fileprivate let userShowStr:[Character] = ["c","a","l","l","_"]
fileprivate let k_directPileData:String = "RESPO"

/*: "Error playing BMG audio:  :*/
fileprivate let user_requestBoldTitle:String = "builder pass available explainErro"
fileprivate let dataLiftPath:String = "ying carve replacement"
fileprivate let notiBoxName:String = "dio: sense division"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AppBaseDelegate.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/30.
//

//: import AVFAudio
import AVFAudio
//: import FirebaseCrashlytics
import FirebaseCrashlytics
//: import UIKit
import UIKit
//: import WebKit
import WebKit

//: public class AppDelegateHelper: NSObject {
public class AppBaseDelegate: NSObject {
    // 后台下载
    //: var backgroundSessionCompletionHandler: (() -> Void)?
    var backgroundSessionCompletionHandler: (() -> Void)?
    //: private var window: UIWindow?
    private var window: UIWindow?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private let networkManager = NetworkReachabilityManager(host: "www.apple.com")
    private let networkManager = NetworkReachabilityManager(host: (String(const_listenFormat)))
    //: private var backTaskIdentifier = UIBackgroundTaskIdentifier.invalid
    private var backTaskIdentifier = UIBackgroundTaskIdentifier.invalid // 后台任务名称
    //: private var bgmPlayer: AVAudioPlayer?
    private var bgmPlayer: AVAudioPlayer? // 音视频通话后台播放音频
    //: private var currApplication: UIApplication?
    private var currApplication: UIApplication? // 当前application
    // singleton
    //: public static let shared = AppDelegateHelper()
    public static let shared = AppBaseDelegate()
    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        //: self.window?.rootViewController = NormalWaitingController()
        self.window?.rootViewController = OriginalViewController()
        //: self.window?.makeKeyAndVisible()
        self.window?.makeKeyAndVisible()
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(initRootController),
                                               selector: #selector(tillSatisfy),
                                               //: name: UPDATE_APP_GETCONFIG_NOTIFICATION,
                                               name: kDisplayName,
                                               //: object: nil)
                                               object: nil)
    }
}

// MARK: - 系统API

//: public extension AppDelegateHelper {
public extension AppBaseDelegate {
    //: func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?, window: UIWindow?) -> Bool {
    func columbite(_ application: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?, window: UIWindow?) -> Bool {
        //: AppDelegateHelper.shared.window = window
        AppBaseDelegate.shared.window = window
        //: TalkingRequestAddrTool.share.func__setAppCookies()
        CosSweetReactiveCompatible.share.behindLike()
        //: AppDelegateHelper.shared.installNotificationObservers()
        AppBaseDelegate.shared.accountList()
        //: AppDelegateHelper.shared.initGetCache()
        AppBaseDelegate.shared.local()
        //: TalkingRequestAddrTool.share.checkServerUrl()
        CosSweetReactiveCompatible.share.maturityDate()
        //: AppDelegateHelper.shared.currApplication = application
        AppBaseDelegate.shared.currApplication = application
        // 支持后台播放音乐
        //: do {
        do {
            //: try AVAudioSession.sharedInstance().setCategory(.playback)
            try AVAudioSession.sharedInstance().setCategory(.playback)
            //: try AVAudioSession.sharedInstance().setActive(true)
            try AVAudioSession.sharedInstance().setActive(true)
            //: } catch {
        } catch {
            //: UploadLogTool.writeLog(msg: "后台播放音乐模式异常: \(error).")
            FinishThen.onicial(msg: (const_exceptUrl + "乐模式异\u{5e38}:" + String(user_strengthValue)) + "\(error).")
        }

        //: if #available(iOS 15.0, *) {
        if #available(iOS 15.0, *) {
            //: UITableView.appearance().sectionHeaderTopPadding = 0
            UITableView.appearance().sectionHeaderTopPadding = 0
        }
        //: return true
        return true
    }

    //: class func applicationDidEnterBackground(_ application: UIApplication) {
    class func drag(_: UIApplication) {
        // 开启后台任务，增加app后台运行时间
        //: AppDelegateHelper.shared.startBackgroundTask()
        AppBaseDelegate.shared.identification()
    }

    //: class func applicationWillEnterForeground(_ application: UIApplication) {
    class func live(_: UIApplication) {
        //: AppDelegateHelper.shared.stopPlayBGM()
        AppBaseDelegate.shared.blackSize()
        // 进入前台，结束后台任务
        //: AppDelegateHelper.shared.checkAndEndBackgroundTask()
        AppBaseDelegate.shared.air()
    }

    //: class func applicationWillResignActive(_ application: UIApplication) {
    class func actual(_ application: UIApplication) {
        //: let unreadMsgCount = CompositionReactiveCompatible.share.unreadMessageNum
        let unreadMsgCount = CompositionReactiveCompatible.share.unreadMessageNum
        //: application.applicationIconBadgeNumber = unreadMsgCount
        application.applicationIconBadgeNumber = unreadMsgCount
    }

    //: class func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
    class func medium(_: UIApplication) {
        //: URLCache.shared.removeAllCachedResponses()
        URLCache.shared.removeAllCachedResponses()
        //: URLCache.shared.diskCapacity = 0
        URLCache.shared.diskCapacity = 0
        //: URLCache.shared.memoryCapacity = 0
        URLCache.shared.memoryCapacity = 0
        //: let typeSet: Set<String> = [WKWebsiteDataTypeLocalStorage, WKWebsiteDataTypeDiskCache]
        let typeSet: Set<String> = [WKWebsiteDataTypeLocalStorage, WKWebsiteDataTypeDiskCache]
        //: WKWebsiteDataStore.default().removeData(ofTypes: typeSet, modifiedSince: Date(timeIntervalSince1970: 0)) {}
        WKWebsiteDataStore.default().removeData(ofTypes: typeSet, modifiedSince: Date(timeIntervalSince1970: 0)) {}
    }

    //: class func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: @escaping () -> Void) {
    class func computerTechnologyResumeUnlighted(_: UIApplication, handleEventsForBackgroundURLSession _: String, completionHandler: @escaping () -> Void) {
        //: AppDelegateHelper.shared.backgroundSessionCompletionHandler = completionHandler
        AppBaseDelegate.shared.backgroundSessionCompletionHandler = completionHandler
    }
}

// MARK: - openURL

//: public extension AppDelegateHelper {
public extension AppBaseDelegate {
    //: class func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
    class func complete(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
        //: if googleOpenURL(app, open: url, options: options) {
        if bringOptions(app, open: url, options: options) {
            //: return true
            return true
        }
        //: return true
        return true
    }
}

// MARK: - 控制器初始化方法

//: extension AppDelegateHelper {
extension AppBaseDelegate {
    /// 获取config和userinfo缓存
    //: private func initGetCache() {
    private func local() {
        //: CompositionReactiveCompatible.share.func__checkAppConfigModeNeedUpdate()
        CompositionReactiveCompatible.share.funcInsideModify()
        //: CompositionReactiveCompatible.share.func__loadCurrentLoginInfoData()
        CompositionReactiveCompatible.share.hodData()
    }

    //: @objc private func initRootController() {
    @objc private func tillSatisfy() {
        // 延后初始化三方sdk, 防止首次安装时无网络初始化失败
        //: if currApplication != nil {
        if currApplication != nil {
            //: AppDelegateHelper.shared.initThirdPartySetup(currApplication!)
            AppBaseDelegate.shared.person(currApplication!)
        }
        //: CompositionReactiveCompatible.share.func__listenRequestHasInit()
        CompositionReactiveCompatible.share.amInit()
        //: window = UIWindow(frame: UIScreen.main.bounds)
        window = UIWindow(frame: UIScreen.main.bounds)
        //: window?.backgroundColor = .white
        window?.backgroundColor = .white
        //: window?.makeKeyAndVisible()
        window?.makeKeyAndVisible()

        //: let uid = (Defaults.string(forKey: TalkingLoginUidCacheKey)) ?? ""
        let uid = (user_liveMsg.string(forKey: app_packageTitle)) ?? ""
        //: if !uid.isEmptyString, Int(uid)! > 0 {
        if !uid.isEmptyString, Int(uid)! > 0 { // 登录状态
            //: func__setupTakingViewController()
            third()

            // 统计崩溃用户Id
            //: Crashlytics.crashlytics().setUserID(CompositionReactiveCompatible.share.loginUid)
            Crashlytics.crashlytics().setUserID(CompositionReactiveCompatible.share.loginUid)
            //: Crashlytics.crashlytics().setCustomValue(CompositionReactiveCompatible.share.loginUid, forKey: "key_uid")
            Crashlytics.crashlytics().setCustomValue(CompositionReactiveCompatible.share.loginUid, forKey: (String(noti_everyoneTitle.suffix(7))))
            // 检查是否有未完成的支付订单
            //: AppleIAPManager.shared.iap_checkUnfinishedTransactions()
            BlockTransactionObserver.shared.unfinished()
            //: CompositionReactiveCompatible.share.request_HasInit = false
            CompositionReactiveCompatible.share.request_HasInit = false
            // 清除礼物缓存
            //: TalkingChatGiftManager.share.gift_clearMemoryCache(showRed: false)
            PoliceStrategyThen.share.giveEar(showRed: false)
            // firebase上报token
            //: AppManagerRequest.func__reportFCMID()
            PlightThen.permission()
            //: } else {
        } else {
            //: if CompositionReactiveCompatible.share.loginSessionId.count > 0 {
            if CompositionReactiveCompatible.share.loginSessionId.count > 0 {
                //: TalkingLoginRequestTool.req_loginOut { _ in
                MidRequestTool.disappear { _ in
                }
                //: CompositionReactiveCompatible.share.func__cleanPrevLoginData()
                CompositionReactiveCompatible.share.loginScale()
            }
            //: func__setupLoginViewController()
            viewParty()
            //: CompositionReactiveCompatible.share.request_HasInit = true
            CompositionReactiveCompatible.share.request_HasInit = true
        }
    }

    //: private func func__setupTakingViewController() {
    private func third() {
        //: func__setupRootViewController(type: .Taking)
        shadeType(type: .Taking)
    }

    //: private func func__setupLoginViewController() {
    private func viewParty() {
        //: func__setupRootViewController(type: .Login)
        shadeType(type: .Login)
    }

    //: private func func__setupRootViewController(type: TarBarControllerViewType) {
    private func shadeType(type: ReadingViewType) {
        //: if Thread.current.isMainThread {
        if Thread.current.isMainThread {
            //: func__setWindowRootViewController(type: type)
            move(type: type)
            //: } else {
        } else {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: self.func__setWindowRootViewController(type: type)
                self.move(type: type)
            }
        }
    }

    //: private func func__setWindowRootViewController(type: TarBarControllerViewType) {
    private func move(type: ReadingViewType) {
        //: if checkRootTarBarController(type: type) {
        if exceptPhone(type: type) {
            //: return
            return
                //: } else {
        } else {
            //: let tabbar = TalkingTabBarViewController(tabBarType: type)
            let tabbar = ListenPillControllerDelegate(tabBarType: type)
            //: window?.rootViewController = tabbar
            window?.rootViewController = tabbar
        }
    }

    //: private func checkRootTarBarController(type: TarBarControllerViewType) -> Bool {
    private func exceptPhone(type: ReadingViewType) -> Bool {
        //: let rootVC = window?.rootViewController
        let rootVC = window?.rootViewController
        //: if rootVC is TalkingTabBarViewController {
        if rootVC is ListenPillControllerDelegate {
            //: if let rootVC1 = rootVC as? TalkingTabBarViewController {
            if let rootVC1 = rootVC as? ListenPillControllerDelegate {
                //: if rootVC1.tabBarVCType == type {
                if rootVC1.tabBarVCType == type {
                    //: return true
                    return true
                }
            }
        }
        //: return false
        return false
    }
}

// MARK: - 通知监听

//: extension AppDelegateHelper {
extension AppBaseDelegate {
    /// 初始化通知监听
    //: private func installNotificationObservers() {
    private func accountList() {
        // 网络状态监听
        //: CompositionReactiveCompatible.share.startNotifierNetwork()
        CompositionReactiveCompatible.share.notifier()

        //: NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note:)), name: .reachabilityChanged, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(lay(note:)), name: .reachabilityChanged, object: nil)

        // 登录成功通知
        //: NotificationCenter.default.rx
        NotificationCenter.default.rx
            //: .notification(DID_LOGIN_SUCCESS_NOTIFICATION)
            .notification(userRecordMsg)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in

                /// 重新打开数据库
                //: WCDBManager.shared.connectDatabase()
                JumboThen.shared.databaseHitch()
                //: self.func__setupTakingViewController()
                self.third()
                //: CompositionReactiveCompatible.share.func__UserLoginChanged(isLogin: true)
                CompositionReactiveCompatible.share.factorComment(isLogin: true)

                // 统计崩溃用户Id
                //: Crashlytics.crashlytics().setUserID(CompositionReactiveCompatible.share.loginUid)
                Crashlytics.crashlytics().setUserID(CompositionReactiveCompatible.share.loginUid)
                //: Crashlytics.crashlytics().setCustomValue(CompositionReactiveCompatible.share.loginUid, forKey: "key_uid")
                Crashlytics.crashlytics().setCustomValue(CompositionReactiveCompatible.share.loginUid, forKey: (String(noti_everyoneTitle.suffix(7))))
                // 检查是否有末完成的支付订单
                //: AppleIAPManager.shared.iap_checkUnfinishedTransactions()
                BlockTransactionObserver.shared.unfinished()
                //: if !CompositionReactiveCompatible.share.request_HasInit {
                if !CompositionReactiveCompatible.share.request_HasInit {
                    //: CompositionReactiveCompatible.share.request_HasInit = true
                    CompositionReactiveCompatible.share.request_HasInit = true
                }
                // firebase上报token
                //: AppManagerRequest.func__reportFCMID()
                PlightThen.permission()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 退出登录通知
        //: NotificationCenter.default.rx
        NotificationCenter.default.rx
            //: .notification(DID_LOGIN_OUT_SUCCESS_NOTIFICATION)
            .notification(constMinNameTitle)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in
                //: CompositionReactiveCompatible.share.func__UserLoginChanged(isLogin: false)
                CompositionReactiveCompatible.share.factorComment(isLogin: false)
                //: TalkingSocketManager.shared.closeWebSocket(userLoginOut: true)
                FileSocketManager.shared.programBy(userLoginOut: true)
                //: self.func__setupLoginViewController()
                self.viewParty()
                //: (TalkingApplication.shared as! TalkingApplication).destroy()
                (SceneKingfisherCompatible.shared as! SceneKingfisherCompatible).searched()

                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 刷新个人资料
        //: NotificationCenter.default.rx.notification(UPDATE_USER_GETMYINFO_NOTIFICATION)
        NotificationCenter.default.rx.notification(noti_logStr)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in
                //: AppManagerRequest.func__requestUserInfo { succeed, _, _ in
                PlightThen.end { succeed, _, _ in
                    //: guard succeed else { return }
                    guard succeed else { return }
                    // 个人信息请求成功发送通知
                    //: NotificationCenter.default.post(name: USER_GETMYINFO_SUCCEED_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: userRobotUrl, object: nil)
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }

    //: @objc private func reachabilityChanged(note: Notification) {
    @objc private func lay(note: Notification) {
        //: let reachability = note.object as! Reachability
        let reachability = note.object as! Reachability
        //: switch reachability.connection {
        switch reachability.connection {
        //: case .wifi:
        case .wifi:
            //: printLog(message: "Reachable via WiFi")
            printLog(message: (String(kEntryMessage.suffix(5)) + "able v" + String(userBigValue.prefix(4)) + String(user_cancelText.prefix(3))))
        //: case .cellular:
        case .cellular:
            //: printLog(message: "Reachable via Cellular")
            printLog(message: (String(user_yourData) + String(show_proposeName)))
        //: case .unavailable:
        case .unavailable:
            // 网络不可用，全局提示用户
            //: func__showStatusBarErrorMsg(showMsg: "Current network unavailable".localized)
            foolishness(showMsg: (String(const_zzTitle) + dataOrangeAssessmentStr.replacingOccurrences(of: "following", with: "le")).localized)
        //: case .none:
        case .none:
            //: printLog(message: "Network none")
            printLog(message: (String(notiAroundMessage) + String(show_thatOutsideMsg) + String(data_lineMessage.prefix(5))))
        }
    }
}

// MARK: - 后台任务

//: extension AppDelegateHelper {
extension AppBaseDelegate {
    // 开启后台任务
    //: private func startBackgroundTask() {
    private func identification() {
        //: checkAndEndBackgroundTask()
        air()
        //: if backTaskIdentifier == .invalid {
        if backTaskIdentifier == .invalid {
            //: backTaskIdentifier = UIApplication.shared.beginBackgroundTask {
            backTaskIdentifier = UIApplication.shared.beginBackgroundTask {
                //: self.checkAndEndBackgroundTask()
                self.air()
            }
        }
    }

    /// 结束后台任务
    //: private func checkAndEndBackgroundTask() {
    private func air() {
        //: if backTaskIdentifier != .invalid {
        if backTaskIdentifier != .invalid {
            //: UIApplication.shared.endBackgroundTask(backTaskIdentifier)
            UIApplication.shared.endBackgroundTask(backTaskIdentifier)
            //: backTaskIdentifier = .invalid
            backTaskIdentifier = .invalid
        }
    }

    /// 开始播放背景音乐
    //: func startPlayBGM() {
    func look() {
        //: let filePath = SVGAEffectTool.default.getMp3Path(name: "call_response_bgm")
        let filePath = AuthorReactiveCompatible.default.guideType(name: (String(userShowStr) + k_directPileData.lowercased() + "nse_bgm"))

        //: let fileURL = URL(fileURLWithPath: filePath)
        let fileURL = URL(fileURLWithPath: filePath)
        //: do {
        do {
            //: bgmPlayer = try AVAudioPlayer(contentsOf: fileURL)
            bgmPlayer = try AVAudioPlayer(contentsOf: fileURL)
            //: bgmPlayer?.play()
            bgmPlayer?.play()
            //: startSystemVibrate()
            slideToEnable()
            //: } catch {
        } catch {
            //: printLog(message: "Error playing BMG audio: \(error.localizedDescription)")
            printLog(message: (String(user_requestBoldTitle.suffix(4)) + "r pla" + String(dataLiftPath.prefix(5)) + "BMG au" + String(notiBoxName.prefix(5))) + "\(error.localizedDescription)")
        }
    }

    ///  停止播放背景音乐
    //: func stopPlayBGM() {
    func blackSize() {
        //: stopSystemVibrate()
        someoneVibrate()
        //: guard bgmPlayer != nil else { return }
        guard bgmPlayer != nil else { return }
        //: bgmPlayer?.stop()
        bgmPlayer?.stop()
        //: bgmPlayer = nil
        bgmPlayer = nil
    }

    /// 开始震动
    //: private func startSystemVibrate() {
    private func slideToEnable() {
        //: AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, nil, nil, { _, _ in
        AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, nil, nil, { _, _ in
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
                AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            }
            //: }, nil)
        }, nil)
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }

    /// 停止震动
    //: private func stopSystemVibrate() {
    private func someoneVibrate() {
        //: AudioServicesRemoveSystemSoundCompletion(kSystemSoundID_Vibrate)
        AudioServicesRemoveSystemSoundCompletion(kSystemSoundID_Vibrate)
        //: AudioServicesDisposeSystemSoundID(kSystemSoundID_Vibrate)
        AudioServicesDisposeSystemSoundID(kSystemSoundID_Vibrate)
    }
}

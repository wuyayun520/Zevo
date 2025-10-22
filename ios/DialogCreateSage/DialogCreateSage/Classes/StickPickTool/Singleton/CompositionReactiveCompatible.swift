
//: Declare String Begin

/*: "PHPSESSID" :*/
fileprivate let data_relieveFormat:String = "php"
fileprivate let main_leaveTitle:String = "SESSIintro"

/*: "UID" :*/
fileprivate let notiLiteralData:[Character] = ["U","I","D"]

/*: "Any" :*/
fileprivate let const_skinConferenceId:String = "Anyprogress satisfy"

/*: "UserBasicInfoSetting/userTag.json" :*/
fileprivate let kWhyKey:[UInt8] = [0x74,0x52,0x44,0x53,0x63,0x40,0x52,0x48,0x42,0x68,0x4f,0x47,0x4e,0x72,0x44,0x55,0x55,0x48,0x4f,0x46,0xe,0x54,0x52,0x44,0x53,0x75,0x40,0x46,0xf,0x4b,0x52,0x4e,0x4f]

private func successfulGuide(device num: UInt8) -> UInt8 {
    return num ^ 33
}

/*: "获取数据" :*/
fileprivate let show_customPath:String = "获\u{53d6}\u{6570}据"

/*: "json 解析失败" :*/
fileprivate let user_worldKitStr:String = "publicity include agent havejson 解析"
fileprivate let app_sightKey:String = "失败"

/*: "request_HasInit" :*/
fileprivate let mainBridgeReceiveMentionFormat:[Character] = ["r","e","q","u","e","s","t","_","H","a","s","I","n","i","t"]

/*: "Reachable via WiFi" :*/
fileprivate let notiThirdPureGovernMsg:[Character] = ["R","e","a","c","h","a","b","l","e"]
fileprivate let user_drownMessage:[Character] = [" ","v","i","a"," ","W","i","F","i"]

/*: "Reachable via Cellular" :*/
fileprivate let showDeliverOpenlyMessage:String = "center resign draw aspect ballReacha"
fileprivate let showBucketText:String = "bite team route newsCell"

/*: "Network not reachable" :*/
fileprivate let main_sheerId:String = "Netwoinclude leading"
fileprivate let noti_launchStr:String = "on catch reacha"
fileprivate let show_houseKey:String = "BLE"

/*: "Not reachable" :*/
fileprivate let userInstanceUrl:String = "Not rerecommendation production moment skin trace"

/*: "Unable to start notifier" :*/
fileprivate let appKindName:String = "Unablethem who"
fileprivate let mainBeanValue:String = "tart noscan of extra"
fileprivate let noti_analyzeSortName:String = "clingfier"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CompositionReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/26.
//

//: import UIKit
import UIKit

//: public class CompositionReactiveCompatible: NSObject {
public class CompositionReactiveCompatible: NSObject {
    //: @objc static public let share = CompositionReactiveCompatible()
    @objc public static let share = CompositionReactiveCompatible()
    //: private override init() {}
    override private init() {}

    //: @objc public var loginUserMode = LoginUserModel()
    @objc public var loginUserMode = OptReactiveCompatible() // 用户登录的信息
    //: @objc public var appUserConfigMode = AppUserConfigModel()
    @objc public var appUserConfigMode = AfterConfigModel() // App 用户配置信息
    //: var showWindow = false
    var showWindow = false // 是否需要展示巨星邀请引导弹窗【只在注册更新资料流程中才返回】
    //: var userFillInfoMode = UserFillInfoModel.init()
    var userFillInfoMode = HelpGenInfoModel() // 用户完善资料缓存
    //: var appConfigMode = AppConfigModel()
    var appConfigMode = SweetMTheoryTransformable() // App 配置信息
    //: var reachability: Reachability?
    var reachability: Reachability? // 网络监听
    //: @objc public dynamic var networkStatus: AppNetworkStatus = .Unavailable
    @objc public dynamic var networkStatus: AgainColumnConvertible = .Unavailable // 网络状态

    //: @objc public dynamic var request_HasInit: Bool = false
    @objc public dynamic var request_HasInit: Bool = false

    //: @objc public var appStatus: Int {
    @objc public var appStatus: Int { // 审核状态
        //: if loginUserMode.status == 0, appConfigMode.status == 0 {
        if loginUserMode.status == 0, appConfigMode.status == 0 {
            //: return AppSkinStatus.normal.rawValue
            return ColumnExInsetTarget.normal.rawValue
            //: } else {
        } else {
            //: return AppSkinStatus.special.rawValue
            return ColumnExInsetTarget.special.rawValue
        }
    }

    //: @objc public dynamic var unreadMessageNum: Int = 0
    @objc public dynamic var unreadMessageNum: Int = 0

    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: var loginSessionId: String {
    var loginSessionId: String {
        //: let url = URL.init(string: TalkingRequestAddrTool.share.serverUrlStr)!
        let url = URL(string: CosSweetReactiveCompatible.share.serverUrlStr)!
        //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: for cookie in cookieArr {
        for cookie in cookieArr {
            //: if cookie.name.uppercased() == "PHPSESSID" {
            if cookie.name.uppercased() == (data_relieveFormat.uppercased() + main_leaveTitle.replacingOccurrences(of: "intro", with: "D")) {
                //: return cookie.value
                return cookie.value
            }
        }
        //: return ""
        return ""
    }

    //: var loginUid: String {
    var loginUid: String {
        //: let url = URL.init(string: TalkingRequestAddrTool.share.serverUrlStr)!
        let url = URL(string: CosSweetReactiveCompatible.share.serverUrlStr)!
        //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: for cookie in cookieArr {
        for cookie in cookieArr {
            //: if cookie.name.uppercased() == "UID" {
            if cookie.name.uppercased() == (String(notiLiteralData)) {
                //: return cookie.value
                return cookie.value
            }
        }
        //: return ""
        return ""
    }

    // 重置参数
    //: func func__reSet() {
    func lipShare() {
        //: loginUserMode = LoginUserModel.init()
        loginUserMode = OptReactiveCompatible()
        // 首页列表筛选条件
        //: SEARCH_AGE = "Any".localized
        kRequestSuccessTitle = (String(const_skinConferenceId.prefix(3))).localized
        //: SEARCH_VIDEOCOVER = "Any".localized
        k_thirdText = (String(const_skinConferenceId.prefix(3))).localized
    }
}

//: extension CompositionReactiveCompatible {
extension CompositionReactiveCompatible {
    /// 更改用户登录状态
    /// - Parameter isLogin: 是否登录
    //: func func__UserLoginChanged(isLogin: Bool) {
    func factorComment(isLogin: Bool) {
        //: if isLogin {
        if isLogin {
            //: Defaults.set(CompositionReactiveCompatible.share.loginUserMode.userID, forKey: TalkingLoginUidCacheKey)
            user_liveMsg.set(CompositionReactiveCompatible.share.loginUserMode.userID, forKey: app_packageTitle)
            //: } else {
        } else {
            //: LightConversationListener.shared.func__LogingOut()
            LightConversationListener.shared.stopMin()
            //: Defaults.removeObject(forKey: TalkingLoginUidCacheKey)
            user_liveMsg.removeObject(forKey: app_packageTitle)
            //: func__cleanPrevLoginData()
            loginScale()
//            CosSweetReactiveCompatible.share.func__removeAllCookies()
            // 清除礼物缓存
            //: TalkingChatGiftManager.share.gift_clearMemoryCache(showRed: false)
            PoliceStrategyThen.share.giveEar(showRed: false)
        }
    }

    //: func func__checkAppConfigModeNeedUpdate() {
    func funcInsideModify() {
        //: let configInfo = Defaults.dictionary(forKey: TalkingAppConfigKey)
        let configInfo = user_liveMsg.dictionary(forKey: userKeyMessage)
        //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
        if let configModel = JSONDeserializer<SweetMTheoryTransformable>.deserializeFrom(dict: configInfo, designatedPath: nil) {
            //: CompositionReactiveCompatible.share.appConfigMode = configModel
            CompositionReactiveCompatible.share.appConfigMode = configModel
        }
        //: if let status = CompositionReactiveCompatible.share.reachability?.connection, status != .unavailable {
        if let status = CompositionReactiveCompatible.share.reachability?.connection, status != .unavailable {
            //: func__loadAppConfigData()
            feeSkip()
            //: } else {
        } else {
            //: NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note:)), name: .reachabilityChanged, object: nil)
            NotificationCenter.default.addObserver(self, selector: #selector(changed(note:)), name: .reachabilityChanged, object: nil)
        }
    }

    //: func func__loadAppConfigData() {
    func feeSkip() {
        //: AppManagerRequest.requestAppConfig { succeed, result, errorModel in
        PlightThen.belowPageCompletion { succeed, _, _ in
            //: if succeed {
            if succeed {
                //: NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
                NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
            }
        }
    }

    //: func func__loadCurrentLoginInfoData() {
    func hodData() {
        //: let userInfo = Defaults.dictionary(forKey: TalkingLoginUserInfoCacheKey)
        let userInfo = user_liveMsg.dictionary(forKey: noti_lineImageBlockValue)
        //: if let userModel = JSONDeserializer<LoginUserModel>.deserializeFrom(dict: userInfo, designatedPath: nil) {
        if let userModel = JSONDeserializer<OptReactiveCompatible>.deserializeFrom(dict: userInfo, designatedPath: nil) {
            //: loginUserMode = userModel
            loginUserMode = userModel
        }
    }

    //: func func__cleanPrevLoginData() {
    func loginScale() {
        //: func__reSet()
        lipShare()
        //: Defaults.removeObject(forKey: TalkingLoginUserInfoCacheKey)
        user_liveMsg.removeObject(forKey: noti_lineImageBlockValue)
//        let oldServerUrl: String = CosSweetReactiveCompatible.share.serverUrlStr
//        if oldServerUrl.count > 0 {
//            let oldCookies: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: URL.init(string: oldServerUrl)!)!
//            for cookies in oldCookies {
//                if cookies.name.uppercased() == "PHPSESSID" {
//                    HTTPCookieStorage.shared.deleteCookie(cookies)
//                } else if(cookies.name.uppercased() == "UID") {
//                    HTTPCookieStorage.shared.deleteCookie(cookies)
//                }
//            }
//        }
    }

    //: func func__loadUserTagCacheData() -> Any? {
    func factorSwitchdData() -> Any? {
        // MARK: 数据的读取

        //: let jsonPath = FileManager.CachesDirectory()+"UserBasicInfoSetting/userTag.json"
        let jsonPath = FileManager.realized() + String(bytes: kWhyKey.map{successfulGuide(device: $0)}, encoding: .utf8)!
        //: if FileManager.judgeFileOrFolderExists(filePath: jsonPath) {
        if FileManager.banCombine(filePath: jsonPath) {
            //: let dataInfo = FileManager.default.contents(atPath: jsonPath)
            let dataInfo = FileManager.default.contents(atPath: jsonPath)
            //: let readStr = String.init(data: dataInfo!, encoding: .utf8)
            let readStr = String(data: dataInfo!, encoding: .utf8)
            //: if let tagModel = JSONDeserializer<UserTagModel>.deserializeFrom(json: readStr) {
            if let tagModel = JSONDeserializer<TwoMeasurable>.deserializeFrom(json: readStr) {
                //: printLog(message: "获取数据")
                printLog(message: (show_customPath))
                //: return tagModel
                return tagModel
                //: } else {
            } else {
                //: printLog(message: "json 解析失败")
                printLog(message: (String(user_worldKitStr.suffix(7)) + app_sightKey.capitalized))
            }
        }
        //: return nil
        return nil
    }

    //: func func__listenRequestHasInit() {
    func amInit() {
        //: self.rx.observeWeakly(Bool.self, "request_HasInit")
        self.rx.observeWeakly(Bool.self, (String(mainBridgeReceiveMentionFormat)))
            //: .subscribe(onNext: { (value) in
            .subscribe(onNext: { value in
                //: let valueBool = value ?? false
                let valueBool = value ?? false
                //: if valueBool {
                if valueBool {
                    //: } else {
                } else {
                    //: AppManagerRequest.func__initAppRequest()
                    PlightThen.work()
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }

    /// 网络状态监测
    //: func startNotifierNetwork() {
    func notifier() {
        //: if self.reachability == nil {
        if self.reachability == nil {
            //: guard let reachability = try? Reachability() else { return }
            guard let reachability = try? Reachability() else { return }
            //: self.reachability = reachability
            self.reachability = reachability
            //: reachability.whenReachable = { reach in
            reachability.whenReachable = { reach in
                //: switch reach.connection {
                switch reach.connection {
                //: case .wifi:
                case .wifi:
                    //: self.networkStatus = .Wifi
                    self.networkStatus = .Wifi
                    //: printLog(message: "Reachable via WiFi")
                    printLog(message: (String(notiThirdPureGovernMsg) + String(user_drownMessage)))
                //: case .cellular:
                case .cellular:
                    //: self.networkStatus = .Cellular
                    self.networkStatus = .Cellular
                    //: printLog(message: "Reachable via Cellular")
                    printLog(message: (String(showDeliverOpenlyMessage.suffix(6)) + "ble via " + String(showBucketText.suffix(4)) + "ular"))
                //: default:
                default:
                    //: self.networkStatus = .Unavailable
                    self.networkStatus = .Unavailable
                    //: printLog(message: "Network not reachable")
                    printLog(message: (String(main_sheerId.prefix(5)) + "rk not" + String(noti_launchStr.suffix(7)) + show_houseKey.lowercased()))
                }
            }
            //: reachability.whenUnreachable = { _ in
            reachability.whenUnreachable = { _ in
                //: self.networkStatus = .Unavailable
                self.networkStatus = .Unavailable
                //: printLog(message: "Not reachable")
                printLog(message: (String(userInstanceUrl.prefix(6)) + "achable"))
            }

            //: do {
            do {
                //: try reachability.startNotifier()
                try reachability.startNotifier()
                //: } catch {
            } catch {
                //: printLog(message: "Unable to start notifier")
                printLog(message: (String(appKindName.prefix(6)) + " to s" + String(mainBeanValue.prefix(7)) + noti_analyzeSortName.replacingOccurrences(of: "cling", with: "ti")))
            }
        }
    }

    //: @objc func reachabilityChanged(note: Notification) {
    @objc func changed(note: Notification) {
        //: let reachability = note.object as? Reachability
        let reachability = note.object as? Reachability
        //: if reachability?.connection != .unavailable {
        if reachability?.connection != .unavailable {
            //: func__loadAppConfigData()
            feeSkip()
        }
    }
}

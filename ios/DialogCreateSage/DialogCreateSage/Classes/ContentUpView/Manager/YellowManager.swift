
//: Declare String Begin

/*: "dist/loungePlus" :*/
fileprivate let noti_profileValue:[Character] = ["d","i","s","t","/","l","o","u","n","g","e","P","l"]
fileprivate let appWholeFormat:String = "ujump"

/*: "mf/freeCall/getVideoInfo" :*/
fileprivate let constSurgeryName:String = "ping particle expressmf/fr"
fileprivate let user_controlName:String = "/getsecurity gold accounting"
fileprivate let user_dynamicsData:String = "objectfo"

/*: "fromType" :*/
fileprivate let kBroadSpringValue:[UInt8] = [0x26,0x32,0x2f,0x2d,0x14,0x39,0x30,0x25]

private func maleShared(visible num: UInt8) -> UInt8 {
    return num ^ 64
}

/*: "videoId" :*/
fileprivate let userFailRootEffectiveName:[Character] = ["v","i","d","e","o","I","d"]

/*: "uid" :*/
fileprivate let noti_refuseId:[Character] = ["u","i","d"]

/*: "type" :*/
fileprivate let main_foodFormat:String = "toperatepe"

/*: "logId" :*/
fileprivate let user_minutePath:String = "commit disk numb orangelogId"

/*: "duration" :*/
fileprivate let appFinancialPath:String = "exrat"
fileprivate let constVolumeMsg:String = "iorid"

/*: "stopUid" :*/
fileprivate let k_youName:String = "custom"
fileprivate let show_recoverMsg:[Character] = ["t","o","p","U","i","d"]

/*: "mf/freeCall/operation" :*/
fileprivate let app_correctTitle:[Character] = ["m","f","/"]
fileprivate let notiDirectionFrontId:String = "closed sourcefreeC"
fileprivate let const_freshStructurePath:String = "opergroupion"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  YellowManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

/// 主动拨打视频弹窗管理
//: class TalkingVideoInitivCallManager: NSObject {
class YellowManager: NSObject {
    //: private var videoCallTimer: Timer?
    private var videoCallTimer: Timer? /// timer
    //: var videoCallModel = TalkingVideoInitivCallModel.init()
    var videoCallModel = PoliceVisualCommunicationHandyJSON()
    //: private var countDown = 0
    private var countDown = 0 /// x秒后显示主动拨打弹窗
    //: private var intervalDown = 0
    private var intervalDown = 0 /// 间隔时间x秒
    //: private var timer_Duration: TimeInterval = 0
    private var timer_Duration: TimeInterval = 0 /// 时间间隔 初次3s，后续90s

    //: static let shared = TalkingVideoInitivCallManager()
    static let shared = YellowManager()

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(stop_VideoCallTimer),
                                               selector: #selector(conk),
                                               //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                               name: constMinNameTitle,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

// MARK: - Event

//: extension TalkingVideoInitivCallManager {
extension YellowManager {
    //: private func distroryNotif() {
    private func perBroad() {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: func setObserver() {
    func buccula() {
        //: guard CompositionReactiveCompatible.share.loginUserMode.callPopupSetting != "0,0" else {
        guard CompositionReactiveCompatible.share.loginUserMode.callPopupSetting != "0,0" else {
            //: distroryNotif()
            perBroad()
            //: return
            return
        }
        //: let arr = CompositionReactiveCompatible.share.loginUserMode.callPopupSetting .split(separator: ",")
        let arr = CompositionReactiveCompatible.share.loginUserMode.callPopupSetting.split(separator: ",")
        //: if arr.count > 1 {
        if arr.count > 1 {
            //: countDown = Int(arr[0]) ?? 0
            countDown = Int(arr[0]) ?? 0
            //: intervalDown = Int(arr[1]) ?? 0
            intervalDown = Int(arr[1]) ?? 0
        }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+Double(countDown)) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(countDown)) {
            //: self.req_getVideoInfo()
            self.curBefore()
        }
        /// 充值/订阅成功
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(paySuccessTool),
                                               selector: #selector(repay),
                                               //: name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               name: appPriceMsg,
                                               //: object: nil)
                                               object: nil)
    }

    /// 开启x秒倒计时
    //: func initVideoCallTimer() {
    func enterPopulation() {
        //: self.timer_Duration = TimeInterval(intervalDown)
        self.timer_Duration = TimeInterval(intervalDown)
        //: if videoCallTimer == nil {
        if videoCallTimer == nil {
            //: videoCallTimer = Timer.scheduledTimer(timeInterval: timer_Duration, target: self, selector: #selector(req_getVideoInfo), userInfo: nil, repeats: true)
            videoCallTimer = Timer.scheduledTimer(timeInterval: timer_Duration, target: self, selector: #selector(curBefore), userInfo: nil, repeats: true)
            //: RunLoop.current.add(videoCallTimer!, forMode: RunLoop.Mode.common)
            RunLoop.current.add(videoCallTimer!, forMode: RunLoop.Mode.common)
        }
    }

    //: private func videoCallTimerPopView() {
    private func viewBy() {
        /// 当前显示半屏充值页或订阅页时，不显示弹窗
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if mediumSave()?.isKind(of: SightViewController.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = mediumSave() as! SightViewController
            //: if vc.urlStr.contains(WebUrlType.RechargeToVideoInitivHalfPage.rawValue) || vc.urlStr.contains("dist/loungePlus") {
            if vc.urlStr.contains(AlertEquatable.RechargeToVideoInitivHalfPage.rawValue) || vc.urlStr.contains((String(noti_profileValue) + appWholeFormat.replacingOccurrences(of: "jump", with: "s"))) {
                //: return
                return
            }
        }
        /// 当前在随机匹配页，视频通话页，不显示弹窗
        //: if currentViewController()?.isKind(of: TalkingRandomVideoViewController.self) == true || currentViewController()?.isKind(of: TalkingVideoInitivCallVC.self) == true {
        if mediumSave()?.isKind(of: HaphazardMatchDelegate.self) == true || mediumSave()?.isKind(of: SiblingPlayerDelegate.self) == true {
            //: return
            return
        }
        //: TalkingPopupWindowManager.shared.videoCallPopUpWindow()
        GenerateingReactiveCompatible.shared.minimumImage()
        //: stop_VideoCallTimer()
        conk()
    }

    /// 停止
    //: @objc func stop_VideoCallTimer() {
    @objc func conk() {
        //: if self.videoCallTimer != nil {
        if self.videoCallTimer != nil {
            //: self.videoCallTimer?.invalidate()
            self.videoCallTimer?.invalidate()
            //: self.videoCallTimer = nil
            self.videoCallTimer = nil
        }
    }

    ///  充值成功后，跳转到callTab页面
    //: @objc private func paySuccessTool() {
    @objc private func repay() {
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if mediumSave()?.isKind(of: SightViewController.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = mediumSave() as! SightViewController
            //: if (vc.urlStr.contains(WebUrlType.RechargeHalfPage.rawValue) || vc.urlStr.contains(WebUrlType.SubscribeAlert.rawValue )) && vc.isRechargeOrSubscribeChangeMatch {
            if vc.urlStr.contains(AlertEquatable.RechargeHalfPage.rawValue) || vc.urlStr.contains(AlertEquatable.SubscribeAlert.rawValue), vc.isRechargeOrSubscribeChangeMatch {
                //: stop_VideoCallTimer()
                conk()
                //: vc.dismiss(animated: true)
                vc.dismiss(animated: true)
//                tabberSelete()
            }
        }
    }
}

// MARK: - Load Data

//: extension TalkingVideoInitivCallManager {
extension YellowManager {
    /// 获取用户主动拨打视频信息
    //: @objc private func req_getVideoInfo() {
    @objc private func curBefore() {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestPath = "mf/freeCall/getVideoInfo"
        reqModel.requestPath = (String(constSurgeryName.suffix(5)) + "eeCall" + String(user_controlName.prefix(4)) + "VideoI" + user_dynamicsData.replacingOccurrences(of: "object", with: "n"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["fromType": "0"]
        reqModel.params = [String(bytes: kBroadSpringValue.map{maleShared(visible: $0)}, encoding: .utf8)!: "0"]
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            /// 用户正在通话中，需要开启x秒后再次请求
            //: if errorModel?.errorCode == 104 {
            if errorModel?.errorCode == 104 {
                //: self.initVideoCallTimer()
                self.enterPopulation()
                //: return
                return
            }
            //: guard succeed == true else {
            guard succeed == true else {
                //: self.distroryNotif()
                self.perBroad()
                //: self.stop_VideoCallTimer()
                self.conk()
                //: return
                return
            }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: if let model = TalkingVideoInitivCallModel.deserialize(from: result as? Dictionary) {
            if let model = PoliceVisualCommunicationHandyJSON.deserialize(from: result as? Dictionary) {
                //: self.videoCallModel = model
                self.videoCallModel = model
            }
            /// 预加载
            //: let  player = TalkingVideoPlayerManager.init()
            let player = CapReactiveCompatible()
            //: player.setMute(bEnable: true)
            player.doinglyTurn(bEnable: true)
            //: player.playerWithUrlAndVideoView(url: self.videoCallModel.winVideoUrl, view: UIView.init())
            player.glitter(url: self.videoCallModel.winVideoUrl, view: UIView())

            //: self.videoCallTimerPopView()
            self.viewBy()
        }
    }

    /** 接口记录用户是否接通或拒绝当前通话
     *  type :3 拒绝 1 接通 2 挂断
     *  duration 接通时长
     */
    //: func req_userOperation(type: Int, duration: Int = 0, stopUid: String = "", completion: @escaping FinishBlock) {
    func promptCompletion(type: Int, duration: Int = 0, stopUid: String = "", completion: @escaping FinishBlock) {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["videoId"] = videoCallModel.videoId
        dict[(String(userFailRootEffectiveName))] = videoCallModel.videoId
        //: dict["uid"] = videoCallModel.uid
        dict[(String(noti_refuseId))] = videoCallModel.uid
        //: dict["type"] = type
        dict[(main_foodFormat.replacingOccurrences(of: "operate", with: "y"))] = type
        //: dict["logId"] = videoCallModel.logId
        dict[(String(user_minutePath.suffix(5)))] = videoCallModel.logId

        //: if duration > 0 {
        if duration > 0 {
            //: dict["duration"] = duration
            dict[(appFinancialPath.replacingOccurrences(of: "ex", with: "du") + constVolumeMsg.replacingOccurrences(of: "rid", with: "n"))] = duration
        }
        //: if stopUid.count > 0 {
        if stopUid.count > 0 {
            //: dict["stopUid"] = stopUid
            dict[(k_youName.replacingOccurrences(of: "custom", with: "s") + String(show_recoverMsg))] = stopUid
        }

        //: let reqModel = TalkingRequestModel.init()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestPath = "mf/freeCall/operation"
        reqModel.requestPath = (String(app_correctTitle) + String(notiDirectionFrontId.suffix(5)) + "all/" + const_freshStructurePath.replacingOccurrences(of: "group", with: "at"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}

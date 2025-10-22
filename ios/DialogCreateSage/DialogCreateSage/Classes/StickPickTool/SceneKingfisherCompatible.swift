
//: Declare String Begin

/*: "checkAndShowMaleInvitePopup_1" :*/
fileprivate let appFormStr:String = "entireheentirek"
fileprivate let data_countWhatUrl:[Character] = ["A","n","d","S","h"]
fileprivate let userReflectionMsg:[Character] = ["o","w","M","a","l","e","I","n","v","i","t","e","P","o","p","u","p","_","1"]

/*: "checkAndShowMaleInvitePopup_2" :*/
fileprivate let noti_fundPath:[Character] = ["c","h","e","c","k","A","n","d","S","h","o","w","M","a","l","e","I","n","v","i","t","e","P","o","p"]
fileprivate let constTheId:String = "resource fitup_2"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SceneKingfisherCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/3/2.
//

//: import UIKit
import UIKit

/// 男性邀请视频通话场景
//: let maleInviteCallSceneSEL_String_1 = "checkAndShowMaleInvitePopup_1"
let user_closeUrl = (appFormStr.replacingOccurrences(of: "entire", with: "c") + String(data_countWhatUrl) + String(userReflectionMsg))
//: let maleInviteCallSceneSEL_String_2 = "checkAndShowMaleInvitePopup_2"
let notiFinishKey = (String(noti_fundPath) + String(constTheId.suffix(4)))

//: public class TalkingApplication: UIApplication {
public class SceneKingfisherCompatible: UIApplication {
    // 上次操作时间
    //: var lastEventTime = 0.0
    var lastEventTime = 0.0
    // 计时器
    //: private var timeoutTimer: Timer?
    private var timeoutTimer: Timer?
    // 女性用户是否活跃
    //: private var isActivity = false
    private var isActivity = false
    // 是否正在请求中
    //: private var isRequesting = false
    private var isRequesting = false
    // 男性邀请通话弹窗
    //: var inviteCallView: MaleInviteCallView?
    var inviteCallView: WhiteExThen?
    //: private var callUid = ""
    private var callUid = ""
    //: private var callVideoUrl = ""
    private var callVideoUrl = ""
    //: private var callHeadPic = ""
    private var callHeadPic = ""

    //: public override func sendEvent(_ event: UIEvent) {
    override public func sendEvent(_ event: UIEvent) {
        //: super.sendEvent(event)
        super.sendEvent(event)
        //: lastEventTime = Date().timeIntervalSince1970
        lastEventTime = Date().timeIntervalSince1970
        //: let touches: Set<UITouch> = event.allTouches ?? []
        let touches: Set<UITouch> = event.allTouches ?? []
        //: guard touches.first?.phase == .began else { return }
        guard touches.first?.phase == .began else { return }
        // 女性用户busy状态上报
        //: femaleBusyStatusReport()
        toilingStatusDamDescribe()
        // 男性用户启动邀请弹窗逻辑
        //: showMaleInviteCallView_1()
        entitle()
    }
}

// MARK: - 【开启女性用户busy状态上报】

//: extension TalkingApplication {
extension SceneKingfisherCompatible {
    /// 女性用户busy状态上报
    //: func femaleBusyStatusReport() {
    func toilingStatusDamDescribe() {
        //: destroyTimer()
        shapeInfo()
        //: guard CompositionReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.female.rawValue else { return }
        //: guard CompositionReactiveCompatible.share.loginUid.count > 0 else { return }
        guard CompositionReactiveCompatible.share.loginUid.count > 0 else { return }
        //: guard CompositionReactiveCompatible.share.appUserConfigMode.inactiveTimeLimit > 0 else { return }
        guard CompositionReactiveCompatible.share.appUserConfigMode.inactiveTimeLimit > 0 else { return }
        //: guard !TalkingLiveManager.shared().isLive && !TalkingSocketManager.shared.isStrategy && !TalkingSocketManager.shared.isCalling else { return }
        guard !SelectedThen.panCaptureShared().isLive, !FileSocketManager.shared.isStrategy, !FileSocketManager.shared.isCalling else { return }
        //: if CompositionReactiveCompatible.share.loginUserMode.videoAuth == "-1",
        if CompositionReactiveCompatible.share.loginUserMode.videoAuth == "-1",
           //: CompositionReactiveCompatible.share.loginUserMode.voiceAuth == "-1",
           CompositionReactiveCompatible.share.loginUserMode.voiceAuth == "-1",
           //: CompositionReactiveCompatible.share.appUserConfigMode.randomVideo == "-1" { // 用户同时关闭了音视频权限
           CompositionReactiveCompatible.share.appUserConfigMode.randomVideo == "-1"
        { // 用户同时关闭了音视频权限
            //: req_reportBusyStatus(type: 0)
            rawWith(type: 0)
            //: return
            return
        }
        //: if isActivity == true {
        if isActivity == true {
            //: timeoutTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(CompositionReactiveCompatible.share.appUserConfigMode.inactiveTimeLimit), repeats: true, block: {[weak self] time in
            timeoutTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(CompositionReactiveCompatible.share.appUserConfigMode.inactiveTimeLimit), repeats: true, block: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.req_reportBusyStatus(type: 0)
                self.rawWith(type: 0)
                //: })
            })
            //: } else {
        } else {
            //: req_reportBusyStatus(type: 1)
            rawWith(type: 1)
        }
    }

    /// 销毁状态
    //: func destroy() {
    func searched() {
        //: self.isActivity = false
        self.isActivity = false
        //: destroyTimer()
        shapeInfo()
    }

    /// 上报busy状态
    /// - Parameter type: 0：非活跃；1：活跃
    //: private func req_reportBusyStatus(type: Int) {
    private func rawWith(type: Int) {
        //: guard (isActivity == true && type == 0) || ( isActivity == false && type == 1) else { return }
        guard (isActivity == true && type == 0) || (isActivity == false && type == 1) else { return }
        //: guard isRequesting == false else { return }
        guard isRequesting == false else { return }
        //: isRequesting = true
        isRequesting = true
        //: TalkingMeRequestTool.req_settingStatus(type: type) { succeed, result, errorModel in
        GreatThen.clearMale(type: type) { _, _, _ in
            //: self.isRequesting = false
            self.isRequesting = false
            //: self.isActivity = (type == 1) ? true:false
            self.isActivity = (type == 1) ? true : false
            //: if type == 1 {
            if type == 1 {
                //: self.femaleBusyStatusReport()
                self.toilingStatusDamDescribe()
            }
        }
    }

    /// 销毁倒计时
    //: func destroyTimer() {
    func shapeInfo() {
        //: if timeoutTimer != nil {
        if timeoutTimer != nil {
            //: timeoutTimer?.invalidate()
            timeoutTimer?.invalidate()
            //: timeoutTimer = nil
            timeoutTimer = nil
        }
    }
}

// MARK: - 【男性用户邀请通话弹窗监听】

//: extension TalkingApplication {
extension SceneKingfisherCompatible {
    /// 场景一：停留在Hot页面、消息列表、我的页面 无任何操作
    //: func showMaleInviteCallView_1() {
    func entitle() {
        //: guard check_showMaleInvitePopup() else { return }
        guard magnitudeeractionFlag() else { return }
        //: cancelTimer(selectorString: maleInviteCallSceneSEL_String_1)
        cancelWithoutTwine(selectorString: user_closeUrl)
        //: performTimer(selectorString: maleInviteCallSceneSEL_String_1)
        canName(selectorString: user_closeUrl)
    }

    /// 场景一：检查并展示男性邀请弹窗
    //: @objc private func checkAndShowMaleInvitePopup_1() {
    @objc private func checkAndShowMaleInvitePopup_1() {
        //: guard check_showMaleInvitePopup() else { return }
        guard magnitudeeractionFlag() else { return }
        //: guard let vc = currentViewController() else { return }
        guard let vc = mediumSave() else { return }
        //: if vc is TalkingSocialViewController ||
        if vc is YellowViewDelegate ||
            //: vc is TalkingMessageViewController ||
            vc is BistroReactiveCompatible ||
            //: vc is TalkingMeViewController {
            vc is SortDataSource
        {
            //: showMaleInviteCallView()
            beggarMyNeighborStrategyView()
        }
    }

    /// 场景二/三：停留在某主播的动态详情页 或 个人主页（不管是否有操作）
    /// - Parameters:
    ///   - uid: 用户ID
    ///   - videoUrl: 视频封面
    ///   - headPic: 头像
    //: func showMaleInviteCallView_2(uid: String, videoUrl: String, headPic: String) {
    func fireOf(uid: String, videoUrl: String, headPic: String) {
        //: guard check_showMaleInvitePopup() else { return }
        guard magnitudeeractionFlag() else { return }
        //: guard uid != CompositionReactiveCompatible.share.loginUserMode.userID else { return }
        guard uid != CompositionReactiveCompatible.share.loginUserMode.userID else { return }
        //: cancelTimer(selectorString: maleInviteCallSceneSEL_String_2)
        cancelWithoutTwine(selectorString: notiFinishKey)
        //: performTimer(selectorString: maleInviteCallSceneSEL_String_2)
        canName(selectorString: notiFinishKey)
        //: self.callUid = uid
        self.callUid = uid
        //: self.callVideoUrl = videoUrl
        self.callVideoUrl = videoUrl
        //: self.callHeadPic = headPic
        self.callHeadPic = headPic
    }

    /// 场景二/三：检查并展示男性邀请弹窗
    //: @objc private func checkAndShowMaleInvitePopup_2() {
    @objc private func checkAndShowMaleInvitePopup_2() {
        //: guard check_showMaleInvitePopup() else { return }
        guard magnitudeeractionFlag() else { return }
        //: guard let vc = currentViewController() else { return }
        guard let vc = mediumSave() else { return }
        //: if vc is TalkingMomentDetailVC || vc is TalkingUserDetailViewController {
        if vc is SceneReactiveCompatible || vc is GenViewController {
            //: showMaleInviteCallView()
            beggarMyNeighborStrategyView()
        }
    }

    /// 展示男性邀请弹窗
    //: private func showMaleInviteCallView() {
    private func beggarMyNeighborStrategyView() {
        //: inviteCallView = MaleInviteCallView()
        inviteCallView = WhiteExThen()
        //: inviteCallView?.show(uid: self.callUid, videoUrl: self.callVideoUrl, headPic: self.callHeadPic)
        inviteCallView?.propertyRadiogramTwo(uid: self.callUid, videoUrl: self.callVideoUrl, headPic: self.callHeadPic)
        //: inviteCallView?.dismissBlock = { [weak self] in
        inviteCallView?.dismissBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.clearStatus()
            self.vidPut()
        }
    }

    /// 判断是否应该展示男性邀请弹窗
    //: private func check_showMaleInvitePopup() -> Bool {
    private func magnitudeeractionFlag() -> Bool {
        //: guard CompositionReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue,
        guard CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.male.rawValue,
              //: CompositionReactiveCompatible.share.appUserConfigMode.inviteCall > 0,
              CompositionReactiveCompatible.share.appUserConfigMode.inviteCall > 0,
              //: CompositionReactiveCompatible.share.appUserConfigMode.inviteTimes > 0,
              CompositionReactiveCompatible.share.appUserConfigMode.inviteTimes > 0,
              //: !TalkingSocketManager.shared.isStrategy,
              !FileSocketManager.shared.isStrategy,
              //: !TalkingSocketManager.shared.isCalling,
              !FileSocketManager.shared.isCalling,
              //: self.applicationState != .background,
              self.applicationState != .background,
              //: inviteCallView == nil else {
              inviteCallView == nil
        else {
            //: return false
            return false
        }

        //: return MaleInviteCallView.checkShowMaleInviteCallView()
        return WhiteExThen.computerSimulation()
    }

    /// 清除状态
    //: private func clearStatus() {
    private func vidPut() {
        //: self.inviteCallView = nil
        self.inviteCallView = nil
        //: self.callUid = ""
        self.callUid = ""
        //: self.callVideoUrl = ""
        self.callVideoUrl = ""
        //: self.callHeadPic = ""
        self.callHeadPic = ""
    }

    /// 取消定时器
    /// - Parameter aSelector: 方法
    //: func cancelTimer(selectorString: String) {
    func cancelWithoutTwine(selectorString: String) {
        //: self.clearStatus()
        self.vidPut()
        //: NSObject.cancelPreviousPerformRequests(withTarget: self,
        NSObject.cancelPreviousPerformRequests(withTarget: self,
                                               //: selector: Selector(selectorString),
                                               selector: Selector(selectorString),
                                               //: object: nil)
                                               object: nil)
    }

    /// 开启定时器
    /// - Parameter aSelector: 方法
    //: private func performTimer(selectorString: String) {
    private func canName(selectorString: String) {
        //: perform(Selector(selectorString),
        perform(Selector(selectorString),
                //: with: nil,
                with: nil,
                //: afterDelay: TimeInterval(CompositionReactiveCompatible.share.appUserConfigMode.inviteCall))
                afterDelay: TimeInterval(CompositionReactiveCompatible.share.appUserConfigMode.inviteCall))
    }
}

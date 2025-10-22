
//: Declare String Begin

/*: "CacheFemaleVIPCallIdsArrayKey_ :*/
fileprivate let kTunFormat:String = "CacheFeveryone ear immediate edible"
fileprivate let mainSoonPath:String = "IPCallIcreate sufficient each platform cap"
fileprivate let kAcquireMsg:String = "dsAdisplay ease"
fileprivate let noti_streamStr:[Character] = ["r","r","a","y","K","e","y","_"]

/*: "CHANGE_BEAN" :*/
fileprivate let constOwnerAccompanyKey:String = "chang"
fileprivate let noti_distributionData:String = "E_BEANretain punish recognize"

/*: "Failed to get user information, please return and try again" :*/
fileprivate let mainReUrl:[UInt8] = [0x1d,0x38,0x40,0x43,0x3c,0x3b,0xf7,0x4b,0x46,0xf7,0x3e,0x3c,0x4b,0xf7,0x4c,0x4a,0x3c,0x49,0xf7,0x40,0x45,0x3d,0x46,0x49,0x44,0x38,0x4b,0x40,0x46,0x45,0x3,0xf7,0x47,0x43,0x3c,0x38,0x4a,0x3c,0xf7,0x49,0x3c,0x4b,0x4c,0x49,0x45,0xf7,0x38,0x45,0x3b,0xf7,0x4b,0x49,0x50,0xf7,0x38,0x3e,0x38,0x40,0x45]

fileprivate func disableManager(soon num: UInt8) -> UInt8 {
    let value = Int(num) - 215
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "type" :*/
fileprivate let showDrownKey:[UInt8] = [0x65,0x70,0x79,0x74]

/*: "uid" :*/
fileprivate let constSharedName:[Character] = ["u","i","d"]

/*: "source" :*/
fileprivate let app_acquisitionValue:[UInt8] = [0x65,0x63,0x72,0x75,0x6f,0x73]

/*: "fromFreeCall" :*/
fileprivate let data_referMessage:[Character] = ["f","r","o","m","F","r","e","e","C","a","l","l"]

/*: "cmd" :*/
fileprivate let kNeedMessage:[UInt8] = [0x60,0x6e,0x67]

/*: "requestCall" :*/
fileprivate let mainGoodEnableMessage:[Character] = ["r","e","q","u","e","s","t","C","a","l","l"]

/*: "data" :*/
fileprivate let appExhibitStr:[UInt8] = [0xc7,0xc2,0xd7,0xc2]

private func pieceOfMaterialVantage(po num: UInt8) -> UInt8 {
    return num ^ 163
}

/*: "onRequestCall" :*/
fileprivate let main_bugMsg:String = "onReunit robot shade"
fileprivate let main_countHoldHelloUrl:[Character] = ["l","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AdministratorMenuManager.swift
//  AbroadTalking
//
//  Created by young on 2023/8/15.
//

//: import UIKit
import UIKit

//: enum CallMenuType: Int {
enum CarrierMultiplierTarget: Int {
    //: case VideoCall = 0
    case VideoCall = 0 // 视频通话
    //: case VoiceCall = 1
    case VoiceCall = 1 // 语音通话
}

//: typealias OnReqestCallErrorBlock = (_ errNo: Int) -> Void
typealias OnReqestCallErrorBlock = (_ errNo: Int) -> Void

//: class TalkingCallMenuManager: NSObject {
class AdministratorMenuManager: NSObject {
    /// 被呼叫用户ID
    //: var uid: String?
    var uid: String?
    /// 音视频功能入口（source = "videoPop" 为男性邀请视频通话弹窗）
    //: var source = ""
    var source = ""
    /// 发起建立通话失败Block
    //: var onReqestCallErrorBlock: OnReqestCallErrorBlock?
    var onReqestCallErrorBlock: OnReqestCallErrorBlock?
    /// 女性用户VIP折扣弹窗Key
    //: let FemaleVIPCallIdsArrayKey = "CacheFemaleVIPCallIdsArrayKey_\(CompositionReactiveCompatible.share.loginUid)"
    let FemaleVIPCallIdsArrayKey = (String(kTunFormat.prefix(6)) + "emaleV" + String(mainSoonPath.prefix(7)) + String(kAcquireMsg.prefix(3)) + String(noti_streamStr)) + "\(CompositionReactiveCompatible.share.loginUid)"

    //: deinit {
    deinit {
        //: if TalkingSocketManager.shared.videoMatchDelegate === self {
        if FileSocketManager.shared.videoMatchDelegate === self {
            //: TalkingSocketManager.shared.videoMatchDelegate = nil
            FileSocketManager.shared.videoMatchDelegate = nil
        }
        //: if TalkingSocketManager.shared.errorDelegate === self {
        if FileSocketManager.shared.errorDelegate === self {
            //: TalkingSocketManager.shared.errorDelegate = nil
            FileSocketManager.shared.errorDelegate = nil
        }
    }
}

// MARK: - Event

//: extension TalkingCallMenuManager {
extension AdministratorMenuManager {
    /// 展示音视频通话选择菜单
    /// - Parameters:
    ///   - videoPrice: 视频通话价格
    ///   - voicePrice: 语音通话价格
    ///   - vipPrompt: 女性呼叫VIP用户价格变动提醒
    //: func showVideoCallMenu(videoPrice: String?, voicePrice: String?, vipPrompt: String? = nil) {
    func alongCurrency(videoPrice: String?, voicePrice: String?, vipPrompt: String? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isStrategy == false else {
        guard FileSocketManager.shared.isStrategy == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.foolishness(showMsg: constEnterMessage)
            //: return
            return
        }

        //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
        let vc = AddressPopView(frame: UIScreen.main.bounds)
        //: vc.initWithList(type: .Call, videoPrice: videoPrice, voicePrice: voicePrice)
        vc.varietyDelay(type: .Call, videoPrice: videoPrice, voicePrice: voicePrice)
        //: vc.munuBlock = { [weak self] index, _ in
        vc.munuBlock = { [weak self] index, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: let type = CallMenuType(rawValue: index) ?? .VideoCall
            let type = CarrierMultiplierTarget(rawValue: index) ?? .VideoCall
            // 展示VIP折扣提醒弹窗
            //: if vipPrompt != nil, vipPrompt?.count ?? 0 > 0 {
            if vipPrompt != nil, vipPrompt?.count ?? 0 > 0 {
                //: var prompt = ""
                var prompt = ""
                //: if index == 0 {
                if index == 0 {
                    //: prompt = vipPrompt!.replacingOccurrences(of: "CHANGE_BEAN", with: videoPrice ?? "0")
                    prompt = vipPrompt!.replacingOccurrences(of: (constOwnerAccompanyKey.uppercased() + String(noti_distributionData.prefix(6))), with: videoPrice ?? "0")
                    //: } else {
                } else {
                    //: prompt = vipPrompt!.replacingOccurrences(of: "CHANGE_BEAN", with: voicePrice ?? "0")
                    prompt = vipPrompt!.replacingOccurrences(of: (constOwnerAccompanyKey.uppercased() + String(noti_distributionData.prefix(6))), with: voicePrice ?? "0")
                }
                //: self.showFemaleVIPCallAlertView(type: type, vipPrompt: prompt)
                self.addressCorner(type: type, vipPrompt: prompt)
                //: return
                return
            }

            //: requestCall(type: type)
            depict(type: type)
        }
    }

    /// 发起音/视频通话
    /// - Parameter type: 通话类型
    //: func requestCall(type: CallMenuType) {
    func depict(type: CarrierMultiplierTarget) {
        //: switch(type) {
        switch type {
        //: case .VideoCall:
        case .VideoCall:
            //: self.checkAndCallVideo()
            self.context()
        //: case .VoiceCall:
        case .VoiceCall:
            //: self.checkAndCallVoice()
            self.computeComplection()
        }
    }

    /// 检查权限后发起音频通话
    /// - Parameter complection: 回调
    //: func checkAndCallVoice(complection: ((_ succeed: Bool) -> Void)? = nil) {
    func computeComplection(complection: ((_ succeed: Bool) -> Void)? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isStrategy == false else {
        guard FileSocketManager.shared.isStrategy == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.foolishness(showMsg: constEnterMessage)
            //: complection?(false)
            complection?(false)
            //: return
            return
        }

        // 麦克风权限
        //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
        MeetRouteThen.panelSpring(true) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.foolishness(showMsg: user_sceneKey)
                //: complection?(false)
                complection?(false)
                //: return
                return
            }
            // 发起音频通话
            //: TalkingSocketManager.shared.videoMatchDelegate = self
            FileSocketManager.shared.videoMatchDelegate = self
            //: TalkingSocketManager.shared.errorDelegate = self
            FileSocketManager.shared.errorDelegate = self
            //: self.send_socket_requestCall(type: 1)
            self.rootName(type: 1)
            //: complection?(true)
            complection?(true)
        }
    }

    /// 检测权限后发起视频通话
    /// - Parameter complection: 回调
    //: func checkAndCallVideo(complection: ((_ succeed: Bool) -> Void)? = nil) {
    func context(complection: ((_ succeed: Bool) -> Void)? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isStrategy == false else {
        guard FileSocketManager.shared.isStrategy == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.foolishness(showMsg: constEnterMessage)
            //: complection?(false)
            complection?(false)
            //: return
            return
        }

        // 权限判断
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        MeetRouteThen.hairTip { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.foolishness(showMsg: user_sceneKey)
                //: complection?(false)
                complection?(false)
                //: return
                return
            }
            // 发起视频通话
            //: TalkingSocketManager.shared.videoMatchDelegate = self
            FileSocketManager.shared.videoMatchDelegate = self
            //: TalkingSocketManager.shared.errorDelegate = self
            FileSocketManager.shared.errorDelegate = self
            //: self.send_socket_requestCall(type: 0)
            self.rootName(type: 0)
            //: complection?(true)
            complection?(true)
        }
    }
}

// MARK: - 会员折扣提示弹窗

//: extension TalkingCallMenuManager {
extension AdministratorMenuManager {
    /// 展示会员折扣提示弹窗
    /// - Parameters:
    ///   - index: 0：视频通话；1：音频通话
    ///   - vipPrompt: 女性呼叫VIP用户价格变动提醒
    //: private func showFemaleVIPCallAlertView(type: CallMenuType, vipPrompt: String) {
    private func addressCorner(type: CarrierMultiplierTarget, vipPrompt: String) {
        //: guard CompositionReactiveCompatible.share.loginUserMode.status == AppSkinStatus.normal.rawValue else {
        guard CompositionReactiveCompatible.share.loginUserMode.status == ColumnExInsetTarget.normal.rawValue else {
            //: self.requestCall(type: type)
            self.depict(type: type)
            //: return
            return
        }
        // 每个用户只展示一次
        //: var array: Array = Defaults.object(forKey: FemaleVIPCallIdsArrayKey) as? [String] ?? [String]()
        var array: Array = user_liveMsg.object(forKey: FemaleVIPCallIdsArrayKey) as? [String] ?? [String]()
        //: if array.contains(uid ?? "") { // 已展示
        if array.contains(uid ?? "") { // 已展示
            //: self.requestCall(type: type)
            self.depict(type: type)
            //: return
            return
        }

        // 更新缓存, 展示视图
        //: array.append(uid ?? "")
        array.append(uid ?? "")
        //: Defaults.set(array, forKey: FemaleVIPCallIdsArrayKey)
        user_liveMsg.set(array, forKey: FemaleVIPCallIdsArrayKey)
        //: let alert = TalkingFemaleVIPCallAlertView(type: type, content: vipPrompt)
        let alert = ElectrolyteBalanceThen(type: type, content: vipPrompt)
        //: alert.callBlock = { type in
        alert.callBlock = { type in
            //: self.requestCall(type: type)
            self.depict(type: type)
        }
        //: alert.show()
        alert.common()
    }
}

// MARK: - BenchAddressObjectProtocol, ToolMeetErrorDelegate【音视频通话逻辑处理】

//: extension TalkingCallMenuManager: SocketManagerVideoMatchDelegate, TalkingSocketManagerErrorDelegate {
extension AdministratorMenuManager: BenchAddressObjectProtocol, ToolMeetErrorDelegate {
    /// 发送音视频通话socket
    /// - Parameter type: 通话类型：0：视频通话，1：语音通话
    //: func send_socket_requestCall(type: Int) {
    func rootName(type: Int) {
        //: guard let uid = self.uid else {
        guard let uid = self.uid else {
            //: self.func__showStatusBarErrorMsg(showMsg: "Failed to get user information, please return and try again".localized)
            self.foolishness(showMsg: String(bytes: mainReUrl.map{disableManager(soon: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }

        //: var data: [String: Any] = ["type": type, "uid": uid, "source": source]
        var data: [String: Any] = [String(bytes: showDrownKey.reversed(), encoding: .utf8)!: type, (String(constSharedName)): uid, String(bytes: app_acquisitionValue.reversed(), encoding: .utf8)!: source]
        //: let index = EnableFreeCallType.nor
        let index = CompositionArrowPriorityTarget.nor
        //: if CompositionReactiveCompatible.share.loginUserMode.freeCallTimes > 0 && CompositionReactiveCompatible.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue && CompositionReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue {
        if CompositionReactiveCompatible.share.loginUserMode.freeCallTimes > 0 && CompositionReactiveCompatible.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue && CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (String(data_referMessage)))
            //: TalkingSocketManager.shared.isFreeCall = true
            FileSocketManager.shared.isFreeCall = true
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = [String(bytes: kNeedMessage.map{$0^3}, encoding: .utf8)!: (String(mainGoodEnableMessage)), String(bytes: appExhibitStr.map{pieceOfMaterialVantage(po: $0)}, encoding: .utf8)!: data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        FileSocketManager.shared.bagOriginal(info: info)
    }

    /// 匹配成功，可以拨打通话
    //: func socket_match_onRequestCall(data: [String: Any]) {
    func uniformListen(data: [String: Any]) {
        //: var newData = data
        var newData = data
        //: newData["uid"] = self.uid
        newData[(String(constSharedName))] = self.uid
        //: CompositionReactiveCompatible.share.start1v1TalkCall(info: newData)
        CompositionReactiveCompatible.share.startOutSkin(info: newData)
        //: self.onReqestCallErrorBlock?(0)
        self.onReqestCallErrorBlock?(0)
    }

    //: func socket_match_onVideoMatch(data: [String: Any]) {}
    func delayGenderTrack(data _: [String: Any]) {}

    /// 失败处理
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func lock(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(main_bugMsg.prefix(4)) + "questCa" + String(main_countHoldHelloUrl)) {
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.foolishness(showMsg: msg)
            //: self.onReqestCallErrorBlock?(errorNo)
            self.onReqestCallErrorBlock?(errorNo)
            //: if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            if errorNo == AdminGiantSumLiteral.MoneyLack.rawValue {
                //: guard CompositionReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard CompositionReactiveCompatible.share.appStatus == ColumnExInsetTarget.normal.rawValue else { return }
                //: SightReactiveCompatible.share.func__jumpToWebRecharge(clickEvent: clickVideocallButton, sufficient: false)
                SightReactiveCompatible.share.secondBusy(clickEvent: show_logName, sufficient: false)
            }
        }
    }
}


//: Declare String Begin

/*: " customElem.data is error" :*/
fileprivate let noti_chanceWhoId:String = " custonight bold act related resign"
fileprivate let constFruitValue:String = "crop place shortdata i"

/*: "extra" :*/
fileprivate let data_dueUrl:String = "disktra"

/*: "opType" :*/
fileprivate let constApprovalLightTitle:String = "contrast remindopType"

/*: "startLive" :*/
fileprivate let data_deliverMessage:String = "stafemale"

/*: "floatingScreen" :*/
fileprivate let user_withinMsg:[UInt8] = [0x31,0x3b,0x38,0x36,0x23,0x3e,0x39,0x30,0x4,0x34,0x25,0x32,0x32,0x39]

private func privacyHockey(attention num: UInt8) -> UInt8 {
    return num ^ 87
}

/*: "mute" :*/
fileprivate let user_blindLightData:String = "communicatete"

/*: "uid" :*/
fileprivate let k_retStr:String = "herd"

/*: "expireAt" :*/
fileprivate let k_threePath:String = "expireAtdistance delivery"

/*: "unmute" :*/
fileprivate let showLeastId:[Character] = ["u","n","m","u","t","e"]

/*: "MF:LiveChatGiftMsg" :*/
fileprivate let kStraightData:String = "MF:Lpeer woman selection unable"
fileprivate let notiSituationStr:String = "intro lease bucket orhatGi"
fileprivate let kRidKey:String = "ftMsgover path then clean"

/*: "gift" :*/
fileprivate let k_darkKey:String = "GIFT"

/*: "imgPreview" :*/
fileprivate let notiPreviousPath:String = "ipathg"
fileprivate let noti_wholeTitle:String = "wed that player shall interactionPreview"

/*: "name" :*/
fileprivate let app_observerFormat:String = "houseame"

/*: "num" :*/
fileprivate let const_usedName:[Character] = ["n","u","m"]

/*: "mfBean" :*/
fileprivate let app_assistantAnimalStr:[UInt8] = [0xd4,0xdf,0xfb,0xdc,0xd8,0xd7]

/*: "MF:LiveChatPrizeMsg" :*/
fileprivate let k_ridValue:String = "processing crop pretty maxMF:LiveC"
fileprivate let kUpperFarText:[Character] = ["h","a","t","P","r","i","z","e","M","s","g"]

/*: "<at>@[\\S\\s]+?</at>" :*/
fileprivate let userCorrectKey:[Character] = ["<","a","t",">","@","[","\\","S","\\","s"]
fileprivate let user_likeId:String = "]+?</at>protocol anima provide"

/*: "加入弹幕房间" :*/
fileprivate let notiRePath:[Character] = ["加","入","弹","幕","房","间"]

/*: "Failed to enter the chat room. Please try again later" :*/
fileprivate let kColorYourData:[UInt8] = [0x47,0x60,0x68,0x6d,0x64,0x65,0x21,0x75,0x6e,0x21,0x64,0x6f,0x75,0x64,0x73,0x21,0x75,0x69,0x64,0x21,0x62,0x69,0x60,0x75,0x21,0x73,0x6e,0x6e,0x6c,0x2f,0x21,0x51,0x6d,0x64,0x60,0x72,0x64,0x21,0x75,0x73,0x78,0x21,0x60,0x66,0x60,0x68,0x6f,0x21,0x6d,0x60,0x75,0x64,0x73]

/*: "live/sendMsg" :*/
fileprivate let const_procedureTitle:[Character] = ["l","i","v","e","/","s"]
fileprivate let showRemainingUrl:String = "endMsgmirror forehead outside"

/*: "groupId" :*/
fileprivate let showAcrossData:String = "behavior advise laugh entiregroupId"

/*: "message" :*/
fileprivate let appLaughId:[Character] = ["m","e","s","s","a","g","e"]

/*: "toUid" :*/
fileprivate let app_generalMessage:String = "multiple table successfully buildtoUid"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EnableceAgainReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingDanmuManagerDelegate: NSObject {
protocol TrackThen: NSObject {
    /// 弹幕消息
    //: func func__DanmuRecvNewModel(Msg: TalkingLiveRoomDanmuModel)
    func modelDragPlant(Msg: MedalHandyJSON)
    /// 礼物动效
    //: func func__giftRecvNewModel(Msg: TalkingLiveRoomDanmuModel)
    func giveawayMsg(Msg: MedalHandyJSON)

    //: func func__actionUserNewModel(pushUid: String?)
    func untilProgressUid(pushUid: String?)

    //: func func__longTouchUserNewModel(nickName: String, atUid: String?)
    func holder(nickName: String, atUid: String?)
    // 用户进入房间
    //: func func__userLogin()
    func linkUp()
    // 用户退出房间
    //: func func__userLogout()
    func license()
}

//: class TalkingDanmuManager: NSObject {
class EnableceAgainReactiveCompatible: NSObject {
    //: private var maxJoinRoom = 1
    private var maxJoinRoom = 1 // 重试加入弹幕房间次数
    //: private static var _instance: TalkingDanmuManager?
    private static var _instance: EnableceAgainReactiveCompatible? // singleton
    //: open weak var delegate: TalkingDanmuManagerDelegate?
    open weak var delegate: TrackThen?

    //: override private init() {}
    override private init() {}
    //: class func shared() -> TalkingDanmuManager {
    class func runningPrivacy() -> EnableceAgainReactiveCompatible {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingDanmuManager()
            _instance = EnableceAgainReactiveCompatible()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }
}

// MARK: - 展示消息通知

//: extension TalkingDanmuManager {
extension EnableceAgainReactiveCompatible {
    /// 公告消息
    //: func showAnnouncementMsg(str: String) {
    func dismissStr(str: String) {
        //: var model = TalkingLiveRoomDanmuModel()
        var model = MedalHandyJSON()
        //: var msgInfo = TalkingDanmuMsgInfo()
        var msgInfo = HelpRoundTransformable()
        //: msgInfo.messageType = 1
        msgInfo.messageType = 1 /// (公告算是特殊的文本消息)
        //: msgInfo.content = str
        msgInfo.content = str
        //: model.msgInfo = msgInfo
        model.msgInfo = msgInfo
        //: let celldata = TalkingLiveRoomDammuCellData()
        let celldata = FormatFactorThen()
        //: model = celldata.showAnnouncementMsg(model: model)
        model = celldata.styleModel(model: model)
        //: delegate?.func__DanmuRecvNewModel(Msg: model)
        delegate?.modelDragPlant(Msg: model)
    }

    /// 处理接收到的弹幕消息，展示
    /// - Parameters:
    ///   - msg: V2TIMMessage
    //: func onRecvDanmuNewMsg(msg: V2TIMMessage) {
    func doingTask(msg: V2TIMMessage) {
        //: guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(noti_chanceWhoId.prefix(6)) + "mElem." + String(constFruitValue.suffix(6)) + "s error"))
            //: return
            return
        }
        //: let jsonData: Data = extra.data(using: .utf8)!
        let jsonData: Data = extra.data(using: .utf8)!
        //: let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as? NSDictionary
        let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as? NSDictionary
        //: let extraDic = dict?["extra"] as? [String: Any]
        let extraDic = dict?[(data_dueUrl.replacingOccurrences(of: "disk", with: "ex"))] as? [String: Any]
        //: let ext = msg.customElem.extension
        let ext = msg.customElem.extension

        //: if let opType = extraDic?["opType"], opType as? String == "startLive" {
        if let opType = extraDic?[(String(constApprovalLightTitle.suffix(6)))], opType as? String == (data_deliverMessage.replacingOccurrences(of: "female", with: "r") + "tLive") {
            //: NotificationCenter.default.post(name: LIVE_RECIVE_STARTLIVE_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: main_routeStr, object: nil)
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "floatingScreen" { // 飘屏
        } else if let opType = extraDic?[(String(constApprovalLightTitle.suffix(6)))], opType as? String == String(bytes: user_withinMsg.map{privacyHockey(attention: $0)}, encoding: .utf8)! { // 飘屏
            //: if let dict = extraDic?["floatingScreen"] {
            if let dict = extraDic?[String(bytes: user_withinMsg.map{privacyHockey(attention: $0)}, encoding: .utf8)!] {
                //: NotificationCenter.default.post(name: LIVE_RECIVE_FLOATSCREEN_NOTIFICATION, object: nil, userInfo: ["floatingScreen": dict])
                NotificationCenter.default.post(name: constWindowFormat, object: nil, userInfo: [String(bytes: user_withinMsg.map{privacyHockey(attention: $0)}, encoding: .utf8)!: dict])
            }
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "mute" { // 禁言
        } else if let opType = extraDic?[(String(constApprovalLightTitle.suffix(6)))], opType as? String == (user_blindLightData.replacingOccurrences(of: "communicate", with: "mu")) { // 禁言
            //: if let uid = extraDic?["uid"] as? Int {
            if let uid = extraDic?[(k_retStr.replacingOccurrences(of: "her", with: "ui"))] as? Int {
                //: if CompositionReactiveCompatible.share.loginUserMode.userID == "\(uid)" {
                if CompositionReactiveCompatible.share.loginUserMode.userID == "\(uid)" {
                    //: TalkingLiveManager.shared().liveRoomModel.muteExpireAt = extraDic?["expireAt"] as? Int ?? 0
                    SelectedThen.panCaptureShared().liveRoomModel.muteExpireAt = extraDic?[(String(k_threePath.prefix(8)))] as? Int ?? 0
                }
            }
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "unmute" { // 解禁
        } else if let opType = extraDic?[(String(constApprovalLightTitle.suffix(6)))], opType as? String == (String(showLeastId)) { // 解禁
            //: if let uid = extraDic?["uid"] as? Int {
            if let uid = extraDic?[(k_retStr.replacingOccurrences(of: "her", with: "ui"))] as? Int {
                //: if CompositionReactiveCompatible.share.loginUserMode.userID == "\(uid)" {
                if CompositionReactiveCompatible.share.loginUserMode.userID == "\(uid)" {
                    //: if CompositionReactiveCompatible.share.loginUserMode.userID == "\(uid)" {
                    if CompositionReactiveCompatible.share.loginUserMode.userID == "\(uid)" {
                        //: TalkingLiveManager.shared().liveRoomModel.muteExpireAt = 0
                        SelectedThen.panCaptureShared().liveRoomModel.muteExpireAt = 0
                    }
                }
            }
            //: return
            return
        }

        //: if var model = TalkingLiveRoomDanmuModel.deserialize(from: extraDic as? Dictionary) {
        if var model = MedalHandyJSON.deserialize(from: extraDic as? Dictionary) {
            //: model.MsgExtension = msg.customElem.extension
            model.MsgExtension = msg.customElem.extension

            //: if model.msgInfo?.messageType == 3, model.MsgExtension == "MF:LiveChatGiftMsg" {
            if model.msgInfo?.messageType == 3, model.MsgExtension == (String(kStraightData.prefix(4)) + "iveC" + String(notiSituationStr.suffix(5)) + String(kRidKey.prefix(5))) {
                //: let dic: Dictionary? = extraDic?["gift"] as? [String: Any]
                let dic: Dictionary? = extraDic?[(k_darkKey.lowercased())] as? [String: Any]
                //: if dic == nil {
                if dic == nil {
                    //: return
                    return
                }
                //: model.gift?.fromUid = model.user?.uid ?? 0
                model.gift?.fromUid = model.user?.uid ?? 0
                //: model.gift?.fromNickname = model.user?.nickname ?? ""
                model.gift?.fromNickname = model.user?.nickname ?? ""
                //: model.gift?.fromHeadPic = model.user?.headPic ?? ""
                model.gift?.fromHeadPic = model.user?.headPic ?? ""
                //: model.gift?.pid = Int(dic?["id"] as! String)
                model.gift?.pid = Int(dic?["id"] as! String)
                //: model.gift?.giftPic = dic?["imgPreview"] as? String ?? ""
                model.gift?.giftPic = dic?[(notiPreviousPath.replacingOccurrences(of: "path", with: "m") + String(noti_wholeTitle.suffix(7)))] as? String ?? ""
                //: model.gift?.pname = dic?["name"] as! String
                model.gift?.pname = dic?[(app_observerFormat.replacingOccurrences(of: "house", with: "n"))] as! String
                //: if model.gift?.animationTimes ?? 0 <= 0 {
                if model.gift?.animationTimes ?? 0 <= 0 {
                    //: model.gift?.animationTimes = dic?["num"] as? Int ?? 0
                    model.gift?.animationTimes = dic?[(String(const_usedName))] as? Int ?? 0
                }

                //: if TalkingLiveManager.shared().liveRoomModel.roomId.count > 0 {
                if SelectedThen.panCaptureShared().liveRoomModel.roomId.count > 0 { // 直播间弹幕礼物(包含男性用户)
                    //: if TalkingLiveManager.shared().config.isSmallMode {
                    if SelectedThen.panCaptureShared().config.isSmallMode {
                        //: AbTalkingPrivateChatAnimatTool.shared.disposeReceiveLiveRoomGiftMsg(giftMessageDic: dict! as NSDictionary)
                        FactorAnimatTool.shared.cipher(giftMessageDic: dict! as NSDictionary)
                        //: } else {
                    } else {
                        //: delegate?.func__giftRecvNewModel(Msg: model)
                        delegate?.giveawayMsg(Msg: model)
                    }
                }

                //: let mfBean = model.msgInfo?.mfBean
                let mfBean = model.msgInfo?.mfBean
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                NotificationCenter.default.post(name: mainMomentKey, object: nil, userInfo: [String(bytes: app_assistantAnimalStr.map{$0^185}, encoding: .utf8)!: mfBean ?? 0.0])

                //: if model.gift?.giftPic.count ?? 0 > 0 {
                if model.gift?.giftPic.count ?? 0 > 0 {
                    //: if let newStr = model.gift?.giftPic.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain) {
                    if let newStr = model.gift?.giftPic.replacingOccurrences(of: userDismissUrl.allTitle(), with: userDeviceIndexStr) {
                        //: URLSession.shared.dataTask(with: URL(string: newStr)!) { data, _, error in
                        URLSession.shared.dataTask(with: URL(string: newStr)!) { data, _, error in
                            //: DispatchQueue.main.async {
                            DispatchQueue.main.async {
                                //: guard let data = data, error == nil, let image = UIImage(data: data) else {
                                guard let data = data, error == nil, let image = UIImage(data: data) else {
                                    //: self.setLiveRoomDammuCellData(danmuModel: model)
                                    self.planSkin(danmuModel: model)
                                    //: return
                                    return
                                }
                                //: model.gift?.giftImg = image
                                model.gift?.giftImg = image
                                //: self.setLiveRoomDammuCellData(danmuModel: model)
                                self.planSkin(danmuModel: model)
                            }
                            //: }.resume()
                        }.resume()
                    }
                }
                //: return
                return
            }
            //: if CompositionReactiveCompatible.share.appStatus == AppSkinStatus.special.rawValue, model.MsgExtension == "MF:LiveChatPrizeMsg" {
            if CompositionReactiveCompatible.share.appStatus == ColumnExInsetTarget.special.rawValue, model.MsgExtension == (String(k_ridValue.suffix(8)) + String(kUpperFarText)) {
                //: return
                return
            }

            //: setLiveRoomDammuCellData(danmuModel: model)
            planSkin(danmuModel: model)
        }
    }

    //: private func setLiveRoomDammuCellData(danmuModel: TalkingLiveRoomDanmuModel) {
    private func planSkin(danmuModel: MedalHandyJSON) {
        //: var model = danmuModel
        var model = danmuModel
        //: let celldata = TalkingLiveRoomDammuCellData()
        let celldata = FormatFactorThen()
        //: model = celldata.caculateMsgHeight(model: model)
        model = celldata.want(model: model)
        //: celldata.actionUserBlock = { [weak self] atUid in
        celldata.actionUserBlock = { [weak self] atUid in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.delegate?.func__actionUserNewModel(pushUid: atUid)
            self.delegate?.untilProgressUid(pushUid: atUid)
        }
        //: celldata.longUserBlock = { [weak self] atUid in
        celldata.longUserBlock = { [weak self] atUid in
            //: guard let self = self else { return }
            guard let self = self else { return }

            //: var uid = String(model.user?.uid ?? 0)
            var uid = String(model.user?.uid ?? 0)
            //: var name = model.user?.nickname ?? ""
            var name = model.user?.nickname ?? ""
            //: if atUid != nil, model.msgInfo?.jumps.count ?? 0 > 0, atUid != CompositionReactiveCompatible.share.loginUserMode.userID, atUid != String(model.user?.uid ?? 0) {
            if atUid != nil, model.msgInfo?.jumps.count ?? 0 > 0, atUid != CompositionReactiveCompatible.share.loginUserMode.userID, atUid != String(model.user?.uid ?? 0) {
                //: uid = atUid!
                uid = atUid!
                //: let text = model.msgInfo?.content ?? ""
                let text = model.msgInfo?.content ?? ""
                //: let regex = try! NSRegularExpression(pattern: "<at>@[\\S\\s]+?</at>", options: [])
                let regex = try! NSRegularExpression(pattern: (String(userCorrectKey) + String(user_likeId.prefix(8))), options: [])
                //: let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
                let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
                //: let matchRange = result.first?.range
                let matchRange = result.first?.range
                //: if matchRange?.length ?? 0 > 10 {
                if matchRange?.length ?? 0 > 10 {
                    //: let subStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.location ?? 0) + 5, to: (matchRange?.length ?? 0) - 5)
                    let subStr = String.commitStrip(str: text, from: (matchRange?.location ?? 0) + 5, to: (matchRange?.length ?? 0) - 5)
                    //: name = subStr
                    name = subStr
                }
            }

            //: self.delegate?.func__longTouchUserNewModel(nickName: name, atUid: uid)
            self.delegate?.holder(nickName: name, atUid: uid)
        }

        //: delegate?.func__DanmuRecvNewModel(Msg: model)
        delegate?.modelDragPlant(Msg: model)
    }
}

//: extension TalkingDanmuManager {
extension EnableceAgainReactiveCompatible {
    /// 释放单利
    //: class func danmu_releaseAllResource() {
    class func everyLastAcross() {
        //: if TalkingDanmuManager._instance != nil {
        if EnableceAgainReactiveCompatible._instance != nil {
            //: TalkingDanmuManager._instance = nil
            EnableceAgainReactiveCompatible._instance = nil
        }
    }

    /// 加入直播弹幕
    //: class func joinLiveRoomDanmu(groupId: String, announcementMsg: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    class func aspect(groupId: String, announcementMsg: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
        V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
            //: printLog(message: "加入弹幕房间")
            printLog(message: (String(notiRePath)))
            //: if announcementMsg.count > 0 {
            if announcementMsg.count > 0 {
                //: TalkingDanmuManager.shared().showAnnouncementMsg(str: announcementMsg)
                EnableceAgainReactiveCompatible.runningPrivacy().dismissStr(str: announcementMsg)
            }
            //: completion?(true)
            completion?(true)

            //: } fail: { _, _ in
        } fail: { _, _ in
            //: if TalkingDanmuManager.shared().maxJoinRoom == 1 {
            if EnableceAgainReactiveCompatible.runningPrivacy().maxJoinRoom == 1 {
                //: TalkingDanmuManager.shared().maxJoinRoom = 0
                EnableceAgainReactiveCompatible.runningPrivacy().maxJoinRoom = 0
                //: joinLiveRoomDanmu(groupId: groupId, announcementMsg: "")
                aspect(groupId: groupId, announcementMsg: "")
                //: } else {
            } else {
                //: TalkingDanmuManager.shared().func__showStatusBarErrorMsg(showMsg: "Failed to enter the chat room. Please try again later".localized)
                EnableceAgainReactiveCompatible.runningPrivacy().foolishness(showMsg: String(bytes: kColorYourData.map{$0^1}, encoding: .utf8)!.localized)
            }
            //: completion?(false)
            completion?(false)
        }
    }

    /// 退出群聊弹幕
    //: class func qiutGroupDanmu(groupId: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    class func tillLeave(groupId: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: V2TIMManager.sharedInstance().quitGroup(groupId, succ: {
        V2TIMManager.sharedInstance().quitGroup(groupId, succ: {
            //: completion?(true)
            completion?(true)
            //: }, fail: { _, _ in
        }, fail: { _, _ in
            //: completion?(false)
            completion?(false)
            //: })
        })
    }
}

// MARK: - 发送接口

//: extension TalkingDanmuManager {
extension EnableceAgainReactiveCompatible {
    /// 发送文本弹幕消息
    /// - Parameters:
    ///   - groupId: 弹幕群组id
    ///   - message: 消息内容
    ///   - toUid:   @用户的uid
    ///   - completion: 回调
    //: class func uploadToTextMsg(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
    class func dailyOrigin(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestPath = "live/sendMsg"
        reqModel.requestPath = (String(const_procedureTitle) + String(showRemainingUrl.prefix(6)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["groupId"] = groupId
        dict[(String(showAcrossData.suffix(7)))] = groupId
        //: dict["message"] = message
        dict[(String(appLaughId))] = message
        //: if toUid?.count ?? 0 > 0 {
        if toUid?.count ?? 0 > 0 {
            //: dict["toUid"] = toUid
            dict[(String(app_generalMessage.suffix(5)))] = toUid
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }
}

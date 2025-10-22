
//: Declare String Begin

/*: "CacheIntimatePhotoUnlockMsgIdArrayKey" :*/
fileprivate let dataSayFormat:[UInt8] = [0xb4,0x96,0x94,0x9f,0x92,0xbe,0x99,0x83,0x9e,0x9a,0x96,0x83,0x92,0xa7,0x9f,0x98,0x83,0x98,0xa2,0x99,0x9b,0x98,0x94,0x9c,0xba,0x84,0x90,0xbe,0x93,0xb6,0x85,0x85,0x96,0x8e,0xbc,0x92,0x8e]

/*: "CachePrivateChatVideoTipsIsShow_ :*/
fileprivate let user_transportationFormat:[UInt8] = [0x5f,0x77,0x6f,0x68,0x53,0x73,0x49,0x73,0x70,0x69,0x54,0x6f,0x65,0x64,0x69,0x56,0x74,0x61,0x68,0x43,0x65,0x74,0x61,0x76,0x69,0x72,0x50,0x65,0x68,0x63,0x61,0x43]

/*: "Quick greeting can only be sent to him once" :*/
fileprivate let kSenseFormat:[UInt8] = [0x69,0x4d,0x51,0x5b,0x53,0x18,0x5f,0x4a,0x5d,0x5d,0x4c,0x51,0x56,0x5f,0x18,0x5b,0x59,0x56,0x18,0x57,0x56,0x54,0x41,0x18,0x5a,0x5d,0x18,0x4b,0x5d,0x56,0x4c,0x18,0x4c,0x57,0x18,0x50,0x51,0x55,0x18,0x57,0x56,0x5b,0x5d]

private func whatEnjoy(by num: UInt8) -> UInt8 {
    return num ^ 56
}

/*: "txt" :*/
fileprivate let user_inmateMainTitle:String = "tcomply"

/*: "audio" :*/
fileprivate let constDivisionKey:[Character] = ["a","u","d","i","o"]

/*: "Please add greeting text" :*/
fileprivate let dataSuccessfullyPageText:String = "Pldialog template"
fileprivate let data_workerStr:[Character] = ["e","a","s","e"," ","a","d","d"," ","g","r","e","e","t","i","n","g"," ","t","e","x","t"]

/*: "You have not set up a photo greeting, please set it up before sending!" :*/
fileprivate let mainLetterId:[UInt8] = [0x95,0xa3,0xb9,0xec,0xa4,0xad,0xba,0xa9,0xec,0xa2,0xa3,0xb8,0xec,0xbf,0xa9,0xb8,0xec,0xb9,0xbc,0xec,0xad,0xec,0xbc,0xa4,0xa3,0xb8,0xa3,0xec,0xab,0xbe,0xa9,0xa9,0xb8,0xa5,0xa2,0xab,0xe0,0xec,0xbc,0xa0,0xa9,0xad,0xbf,0xa9,0xec,0xbf,0xa9,0xb8,0xec,0xa5,0xb8,0xec,0xb9,0xbc,0xec,0xae,0xa9,0xaa,0xa3,0xbe,0xa9,0xec,0xbf,0xa9,0xa2,0xa8,0xa5,0xa2,0xab,0xed]

private func prisonDemonstrate(address num: UInt8) -> UInt8 {
    return num ^ 204
}

/*: "Cancel" :*/
fileprivate let mainMedicationMsg:String = "acquire exCancel"

/*: "Go to set" :*/
fileprivate let userSchemeData:String = "Go to setlicense may district child"

/*: "#startTime#" :*/
fileprivate let mainMakerName:String = "#starres expected"

/*: "#endTime#" :*/
fileprivate let app_pingId:[Character] = ["#","e","n","d","T","i"]
fileprivate let app_joinMsg:String = "below individualme#"

/*: "text" :*/
fileprivate let data_handMessage:[Character] = ["t","e","x","t"]

/*: "img" :*/
fileprivate let mainIllegalLessShareId:[Character] = ["i","m","g"]

/*: "video" :*/
fileprivate let kBecomeDiscoverMessage:String = "VIDEO"

/*: "gift" :*/
fileprivate let constHugeUrl:String = "gfocusft"

/*: "PrivateChat 点击引用消息 :*/
fileprivate let dataZzDuringName:String = "social case inPri"
fileprivate let show_randomPath:String = "blind see dimensionvateCh"
fileprivate let mainSpringAppearId:String = "引用消息"

/*: "Sent " :*/
fileprivate let constStrikeAlreadyMsg:[Character] = ["S","e","n","t"," "]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChockThen.swift
//  AbroadTalking
//
//  Created by young on 2023/1/5.
//

//: import UIKit
import UIKit

/// 一键打招呼Block
//: typealias QuickGreetingBlock = (_ errorCode: Int?, _ errorMsg: String?, _ textDict: [String: Any]?, _ audioDict: [String: Any]?) -> Void
typealias QuickGreetingBlock = (_ errorCode: Int?, _ errorMsg: String?, _ textDict: [String: Any]?, _ audioDict: [String: Any]?) -> Void

/// 图片打招呼Block
//: typealias BeautyPhotosBlock = (_ isPushSet: Bool, _ PhotoDict: [String: Any]?) -> Void
typealias BeautyPhotosBlock = (_ isPushSet: Bool, _ PhotoDict: [String: Any]?) -> Void

//: public class TalkingPrivateChatManager: NSObject {
public class ChockThen: NSObject {
    /// 记录私信对端已读回执时间 [key：userID，value：对端最后已读回执时间]
    //: var readReceiptDict = [String: Int]()
    var readReceiptDict = [String: Int]()

    //: @objc static let share = TalkingPrivateChatManager()
    @objc static let share = ChockThen()
    //: private override init() {}
    override private init() {}

    //: @objc let UnlockMsgIdArrayKey = "CacheIntimatePhotoUnlockMsgIdArrayKey"  // 私密照片已解锁礼物消息数组的key
    @objc let UnlockMsgIdArrayKey = String(bytes: dataSayFormat.map{$0^247}, encoding: .utf8)! // 私密照片已解锁礼物消息数组的key
}

// MARK: - 插入音视频通话提示消息

//: extension TalkingPrivateChatManager {
extension ChockThen {
    /// 判断是否需要插入音视频通话提示消息
    /// - Parameters:
    ///   - toUid: 对方Id
    ///   - msgView: TUI视图
    ///   - completionHandler: 回调
    //: static func chat_privateChatVideo_insertTipMsg(toUid: String, msgView: TUIMessageController, needInsertHandler: (() -> Void)?) {
    static func destroyHandler(toUid: String, msgView: ResponseActualTableViewController, needInsertHandler: (() -> Void)?) {
        // 非审核模式
        //: guard CompositionReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue else { return }
        guard CompositionReactiveCompatible.share.appStatus == ColumnExInsetTarget.normal.rawValue else { return }
        // 男性
        //: guard CompositionReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue else { return }
        guard CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.male.rawValue else { return }

        // 是否展示过提示文案
        //: let TalkingPrivateChatVideoTipsIsShow = "CachePrivateChatVideoTipsIsShow_\(String(CompositionReactiveCompatible.share.loginUserMode.userID))_\(toUid)"
        let TalkingPrivateChatVideoTipsIsShow = String(bytes: user_transportationFormat.reversed(), encoding: .utf8)! + "\(String(CompositionReactiveCompatible.share.loginUserMode.userID))_\(toUid)"
        //: let isShow = Defaults.bool(forKey: TalkingPrivateChatVideoTipsIsShow)
        let isShow = user_liveMsg.bool(forKey: TalkingPrivateChatVideoTipsIsShow)
        //: guard isShow == false else { return }
        guard isShow == false else { return }

        // 消息达到5条
        //: guard msgView.uiMsgs.count >= 5 else { return }
        guard msgView.uiMsgs.count >= 5 else { return }

        //: var hasVoiceVideo = false
        var hasVoiceVideo = false // 是否有音视频通话消息
        //: var outgoingMsgCount = 0
        var outgoingMsgCount = 0 // 消息发送方已发送消息数量
        //: for indexModel in msgView.uiMsgs {
        for indexModel in msgView.uiMsgs {
            //: let indexModel = indexModel as? TwoCellData
            let indexModel = indexModel as? TwoCellData
            //: if indexModel != nil {
            if indexModel != nil {
                //: if indexModel!.isKind(of: SortCellData.self) {
                if indexModel!.isKind(of: SortCellData.self) { // 是否包含音视频文本
                    //: let textMsgModel = indexModel as! SortCellData
                    let textMsgModel = indexModel as! SortCellData
                    //: if textMsgModel.isVoiceVideo == true {
                    if textMsgModel.isVoiceVideo == true {
                        //: hasVoiceVideo = true
                        hasVoiceVideo = true
                        //: break
                        break
                    }
                }

                // 语音消息 || 文本消息 || 图片消息 || 视频消息
                //: if indexModel!.isKind(of: MidReactiveCompatible.self) ||
                if indexModel!.isKind(of: MidReactiveCompatible.self) ||
                    //: indexModel!.isKind(of: SortCellData.self) ||
                    indexModel!.isKind(of: SortCellData.self) ||
                    //: indexModel!.isKind(of: MilitaryCellData.self) ||
                    indexModel!.isKind(of: MilitaryCellData.self) ||
                    //: indexModel!.isKind(of: MovieReactiveCompatible.self) {
                    indexModel!.isKind(of: MovieReactiveCompatible.self)
                {
                    //: if indexModel?.direction == .MsgDirectionOutgoing {
                    if indexModel?.direction == .MsgDirectionOutgoing { // 消息发送方
                        //: outgoingMsgCount += 1
                        outgoingMsgCount += 1
                    }
                }
            }
        }

        //: guard hasVoiceVideo == false else {
        guard hasVoiceVideo == false else {
            //: Defaults.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            user_liveMsg.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            //: return
            return
        }
        //: guard outgoingMsgCount >= 5 else { return }
        guard outgoingMsgCount >= 5 else { return }

        // 回调外部插入音视频提示消息
        //: if needInsertHandler != nil {
        if needInsertHandler != nil {
            //: needInsertHandler!()
            needInsertHandler!()
            //: Defaults.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            user_liveMsg.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
        }
    }
}

// MARK: - 一键打招呼

//: extension TalkingPrivateChatManager {
extension ChockThen {
    /// 判断是否可以一键打招呼，回调结果
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - handler: errorCode：1 = 已发送过；2=未添加打招呼数据;
    //: static func chat_sendQuickGreeting(toUserId: String, completionHandler: @escaping QuickGreetingBlock) {
    static func connectSh(toUserId: String, completionHandler: @escaping QuickGreetingBlock) {
        //: let key = "\(CompositionReactiveCompatible.share.loginUserMode.userID)_\(TalkingSendAutoGreetIsToKey)_\(toUserId)"
        let key = "\(CompositionReactiveCompatible.share.loginUserMode.userID)_\(user_firstGuidePlayValue)_\(toUserId)"
        //: let ishave = UserDefaults.standard.bool(forKey: key)
        let ishave = UserDefaults.standard.bool(forKey: key)
        //: guard !ishave else {
        guard !ishave else {
            //: completionHandler(1, "Quick greeting can only be sent to him once".localized, nil, nil)
            completionHandler(1, String(bytes: kSenseFormat.map{whatEnjoy(by: $0)}, encoding: .utf8)!.localized, nil, nil)
            //: return
            return
        }

        //: ProgressHUD.show()
        PointerReactiveCompatible.soundAssetThrow()
        //: TalkingChatRequestTool.req_getAutoGreetContent { succeed, result, errorModel in
        ReminderRequestTool.get { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            PointerReactiveCompatible.motivationCharmDismiss()
            //: guard succeed == true else {
            guard succeed == true else {
                //: if errorModel?.errorCode == 60003, !CompositionReactiveCompatible.share.loginUserMode.isNaUser {
                if errorModel?.errorCode == 60003, !CompositionReactiveCompatible.share.loginUserMode.isNaUser {
                    /// 真人认证提示弹窗
                    //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                    GenerateingReactiveCompatible.shared.nuclearFamilyConversion()
                    //: return
                    return
                }
                //: completionHandler(2, errorModel?.errorMsg ?? "", nil, nil)
                completionHandler(2, errorModel?.errorMsg ?? "", nil, nil)
                //: return
                return
            }
            //: guard let dict = result as? [String: Any] else {
            guard let dict = result as? [String: Any] else {
                //: completionHandler(2, "", nil, nil)
                completionHandler(2, "", nil, nil)
                //: return
                return
            }
            //: let textDict = dict["txt"] as? [String: Any]
            let textDict = dict[(user_inmateMainTitle.replacingOccurrences(of: "comply", with: "xt"))] as? [String: Any]
            //: let audioDict = dict["audio"] as? [String: Any]
            let audioDict = dict[(String(constDivisionKey))] as? [String: Any]
            //: if textDict?.count == 0 && audioDict?.count == 0 {
            if textDict?.count == 0, audioDict?.count == 0 {
                //: completionHandler(2, "Please add greeting text".localized, nil, nil)
                completionHandler(2, (String(dataSuccessfullyPageText.prefix(2)) + String(data_workerStr)).localized, nil, nil)
                //: return
                return
            }

            // 一键打招呼本地存储
            //: chat_changeSaveGreetData(toUserId: toUserId, isHave: true)
            switchly(toUserId: toUserId, isHave: true)
            //: completionHandler(nil, nil, textDict, audioDict)
            completionHandler(nil, nil, textDict, audioDict)
        }
    }

    /// 一键打招呼状态本地存储
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - isHave: 是否已发送
    //: static func chat_changeSaveGreetData(toUserId: String, isHave: Bool) {
    static func switchly(toUserId: String, isHave: Bool) {
        // 一键打招呼本地cunc
        //: let key = "\(CompositionReactiveCompatible.share.loginUserMode.userID)_\(TalkingSendAutoGreetIsToKey)_\(toUserId)"
        let key = "\(CompositionReactiveCompatible.share.loginUserMode.userID)_\(user_firstGuidePlayValue)_\(toUserId)"
        //: UserDefaults.standard.set(isHave, forKey: key)
        UserDefaults.standard.set(isHave, forKey: key)
    }

    /// 图片打招呼
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - handler: errorCode：1 = 已发送过；2=未添加打招呼数据；
    //: static func chat_sendBeautyPhotos(toUserId: String, completionHandler: @escaping BeautyPhotosBlock) {
    static func earlyish(toUserId: String, completionHandler: @escaping BeautyPhotosBlock) {
        //: ProgressHUD.show()
        PointerReactiveCompatible.soundAssetThrow()
        //: TalkingChatRequestTool.req_getIntimatePhoto(toUid: toUserId) { succeed, result, errorModel in
        ReminderRequestTool.directCompletion(toUid: toUserId) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            PointerReactiveCompatible.motivationCharmDismiss()
            /// 未添加打招呼图片
            //: if errorModel?.errorCode == 111 {
            if errorModel?.errorCode == 111 {
                //: let config = ShowAlertConfig()
                let config = ReminderAlertConfig()
                //: config.alignment = .center
                config.alignment = .center
                //: if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
                if CosSweetReactiveCompatible.share.interfaceLang == ShadesOfTransformable.pt.rawValue {
                    //: config.width = 330
                    config.width = 330
                }
                //: TalkingAlertShow.customAlert(message: "You have not set up a photo greeting, please set it up before sending!".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Go to set".localized, leftBlock: {
                YetAlertShow.humanRightModel(message: String(bytes: mainLetterId.map{prisonDemonstrate(address: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(mainMedicationMsg.suffix(6))).localized, rightBtnTitle: (String(userSchemeData.prefix(9))).localized, leftBlock: {
                    //: TalkingAlertShow.hideAlert()
                    YetAlertShow.usance()

                    //: }, rightBlock: {
                }, rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    YetAlertShow.usance()
                    //: completionHandler(true, nil)
                    completionHandler(true, nil)
                    //: }, config: config)
                }, config: config)
                //: return
                return
                    //: } else if errorModel?.errorCode == 60003, !CompositionReactiveCompatible.share.loginUserMode.isNaUser {
            } else if errorModel?.errorCode == 60003, !CompositionReactiveCompatible.share.loginUserMode.isNaUser {
                /// 真人认证提示弹窗
                //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                GenerateingReactiveCompatible.shared.nuclearFamilyConversion()
                //: return
                return
            }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? [String: Any] else {
                guard let dict = result as? [String: Any] else {
                    //: return
                    return
                }
                //: completionHandler(false, dict)
                completionHandler(false, dict)
            }
        }
    }
}

// MARK: - 插入与官方客服聊天提示消息

//: extension TalkingPrivateChatManager {
extension ChockThen {
    ///  判断是否需要插入与官方客服聊天提示消息
    /// - Parameter needInsertHandler: 回调
    //: static func chat_customerServiceCenter_insertTipMsg(needInsertHandler: ((_ tipsStr: String?) -> Void)?) {
    static func red(needInsertHandler: ((_ tipsStr: String?) -> Void)?) {
        //: guard CompositionReactiveCompatible.share.appConfigMode.CSConfig.systemTips.count > 0 else {
        guard CompositionReactiveCompatible.share.appConfigMode.CSConfig.systemTips.count > 0 else { // 接口没下发，无需提示
            //: if needInsertHandler != nil {
            if needInsertHandler != nil {
                //: needInsertHandler!(nil)
                needInsertHandler!(nil)
            }
            //: return
            return
        }

        // 根据设备所在时区转换时间
        //: let startTime = NSDate.getCurrentZoneDateString(shDateStr: CompositionReactiveCompatible.share.appConfigMode.CSConfig.startTime)
        let startTime = NSDate.filingLanguage(shDateStr: CompositionReactiveCompatible.share.appConfigMode.CSConfig.startTime)
        //: let endTime = NSDate.getCurrentZoneDateString(shDateStr: CompositionReactiveCompatible.share.appConfigMode.CSConfig.endTime)
        let endTime = NSDate.filingLanguage(shDateStr: CompositionReactiveCompatible.share.appConfigMode.CSConfig.endTime)
        //: let isIncluded = NSDate.compareCurrentTimeIsIncluded(startTime: startTime, endTime: endTime)
        let isIncluded = NSDate.compareInstance(startTime: startTime, endTime: endTime)

        //: guard isIncluded == false else {
        guard isIncluded == false else {
            //: if needInsertHandler != nil {
            if needInsertHandler != nil {
                //: needInsertHandler!(nil)
                needInsertHandler!(nil)
            }
            //: return
            return
        }

        // 非工作时间段内，添加提示
        //: var tips = CompositionReactiveCompatible.share.appConfigMode.CSConfig.systemTips
        var tips = CompositionReactiveCompatible.share.appConfigMode.CSConfig.systemTips
        //: tips = tips.replacingOccurrences(of: "#startTime#", with: "\(startTime)")
        tips = tips.replacingOccurrences(of: (String(mainMakerName.prefix(5)) + "tTime#"), with: "\(startTime)")
        //: tips = tips.replacingOccurrences(of: "#endTime#", with: "\(endTime)")
        tips = tips.replacingOccurrences(of: (String(app_pingId) + String(app_joinMsg.suffix(3))), with: "\(endTime)")
        //: if needInsertHandler != nil {
        if needInsertHandler != nil {
            //: needInsertHandler!(tips)
            needInsertHandler!(tips)
        }
    }
}

// MARK: - 刷新私密消息（照片、视频）展示状态

//: extension TalkingPrivateChatManager {
extension ChockThen {
    /// 接收到解锁私密消息（照片、视频）的礼物，刷新本地消息状态
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static func chat_onNewMessage_refreshLocalIntimateMsgStatus(cellData: TwoCellData, msgView: TUIMessageController) {
    static func data(cellData: TwoCellData, msgView: ResponseActualTableViewController) {
        //: guard msgView.uiMsgs.count > 0 else {
        guard msgView.uiMsgs.count > 0 else {
            // --------- 【外部页面】收到了解锁礼物消息 ---------
            // 首次进入到当前页面，刷新消息状态
            //: var array = Defaults.object(forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey) as? [String]
            var array = user_liveMsg.object(forKey: ChockThen.share.UnlockMsgIdArrayKey) as? [String]

            // 本地有私密消息解锁礼物缓存，且是图片消息 或 视频消息
            //: guard array?.count ?? 0 > 0 &&
            guard array?.count ?? 0 > 0,
                  //: (cellData.isKind(of: MilitaryCellData.self) ||
                  cellData.isKind(of: MilitaryCellData.self) ||
                  //: cellData.isKind(of: MovieReactiveCompatible.self)) else { return }
                  cellData.isKind(of: MovieReactiveCompatible.self) else { return }

            // 找到本人发送的私密消息，更新状态为已解锁
            //: if array!.contains(cellData.msgModel.msgInfo.msgId) {
            if array!.contains(cellData.msgModel.msgInfo.msgId) {
                //: inner_changeIntimateMsg(cellData, msgView)
                workQueryed(cellData, msgView)

                // 更新本地缓存
                //: array!.removeAll(where: { $0 == cellData.msgModel.msgInfo.msgId })
                array!.removeAll(where: { $0 == cellData.msgModel.msgInfo.msgId })
                //: Defaults.set(array, forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey)
                user_liveMsg.set(array, forKey: ChockThen.share.UnlockMsgIdArrayKey)
            }

            //: return
            return
        }

        //  --------- 在【当前页面】收到解锁礼物消息 ---------
        // 只有收到礼物解锁消息才刷新
        //: guard cellData.isKind(of: OpenceMoreCellData.self) && cellData.msgModel.gift.unlockMsgId.count > 0 else { return }
        guard cellData.isKind(of: OpenceMoreCellData.self), cellData.msgModel.gift.unlockMsgId.count > 0 else { return }

        // 找到本人发送的私密消息，更新状态为已解锁
        //: let unlockMsgId = cellData.msgModel.gift.unlockMsgId
        let unlockMsgId = cellData.msgModel.gift.unlockMsgId
        //: for msgCellData in msgView.uiMsgs {
        for msgCellData in msgView.uiMsgs {
            //: let data = msgCellData as! TwoCellData
            let data = msgCellData as! TwoCellData
            //: if data.msgModel.msgInfo.msgId == unlockMsgId {
            if data.msgModel.msgInfo.msgId == unlockMsgId {
                //: inner_changeIntimateMsg(data, msgView)
                workQueryed(data, msgView)
                //: break
                break
            }
        }
    }

    /// 刷新本地消息状态
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static private func inner_changeIntimateMsg(_ cellData: TwoCellData, _ msgView: TUIMessageController) {
    private static func workQueryed(_ cellData: TwoCellData, _ msgView: ResponseActualTableViewController) {
        //: if cellData.isKind(of: MilitaryCellData.self) {
        if cellData.isKind(of: MilitaryCellData.self) { // 私密照片
            //: let model = cellData.msgModel.msgInfo.intimatePhoto
            let model = cellData.msgModel.msgInfo.intimatePhoto
            //: if model.lockStatus != 0 {
            if model.lockStatus != 0 {
                //: model.lockStatus = 0
                model.lockStatus = 0
                //: msgView.changeIntimatePhotoMsg(cellData, photoModel: model)
                msgView.stopAppear(cellData, photoResult: model)
            }

            //: } else if cellData.isKind(of: MovieReactiveCompatible.self) {
        } else if cellData.isKind(of: MovieReactiveCompatible.self) { // 私密视频
            //: let model = cellData.msgModel.msgInfo.video
            let model = cellData.msgModel.msgInfo.video
            //: if model.lockStatus != 0 {
            if model.lockStatus != 0 {
                //: model.lockStatus = 0
                model.lockStatus = 0
                //: msgView.changeIntimateVideoMsg(cellData, videoModel: model)
                msgView.model(cellData, timeWantAge: model)
            }
        }
    }
}

// MARK: - 未回复Reply to get points~逻辑

//: extension TalkingPrivateChatManager {
extension ChockThen {
    /// 女性记录最新回复时间, 刷新表格
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static func updateReplyLatestTimeAndReload(_ msgIncome: CGFloat, _ msgTime: Date?, _ msgView: TUIMessageController) {
    static func doingDirect(_ msgIncome: CGFloat, _ msgTime: Date?, _ msgView: ResponseActualTableViewController) {
        //: guard CompositionReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.female.rawValue else { return }
        //: guard msgIncome > 0 else { return }
        guard msgIncome > 0 else { return }
        //: guard let msgTime = msgTime else { return }
        guard let msgTime = msgTime else { return }
        //: guard TalkingPrivateChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return }
        guard ParentControllerDelegate.replyLatestTimes.compare(msgTime) == .orderedAscending else { return }
        //: TalkingPrivateChatController.replyLatestTimes = msgTime
        ParentControllerDelegate.replyLatestTimes = msgTime
        //: msgView.tableView.reloadData()
        msgView.tableView.reloadData()
    }

    /// 判断是否展示未回复付费消息提示
    //: @objc public static func needShowReplyTipsMessage(_ direction: TMsgDirection, msgType: Int, msgTime: Date?) -> Bool {
    @objc public static func speedy(_ direction: FindExpressionConvertible, msgType: Int, msgTime: Date?) -> Bool {
        //: guard CompositionReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue else { return false }
        guard CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.female.rawValue else { return false }
        //: guard direction == .MsgDirectionIncoming else { return false }
        guard direction == .MsgDirectionIncoming else { return false }
        //: guard let msgTime = msgTime else { return false }
        guard let msgTime = msgTime else { return false }
        //: guard TalkingPrivateChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return false }
        guard ParentControllerDelegate.replyLatestTimes.compare(msgTime) == .orderedAscending else { return false }
        //: guard TalkingPrivateChatManager.isReplyToGetPointsMsg(direction, msgType, msgTime: msgTime) else { return false }
        guard ChockThen.getUp(direction, msgType, msgTime: msgTime) else { return false }
        //: return true
        return true
    }

    /// 是否是回复获取积分消息
    /// - Parameters:
    ///   - direction: 消息方向
    ///   - msgType: 消息类型
    ///   - msgTime: 消息时间
    /// - Returns: 结果
    //: static func isReplyToGetPointsMsg(_ direction: TMsgDirection, _ msgType: Int, msgTime: Date?) -> Bool {
    static func getUp(_ direction: FindExpressionConvertible, _ msgType: Int, msgTime: Date?) -> Bool {
        // 非审核模式, messageType == 5, 时间<24小时
        //: guard CompositionReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue else { return false }
        guard CompositionReactiveCompatible.share.appStatus == ColumnExInsetTarget.normal.rawValue else { return false }
        //: guard direction == .MsgDirectionIncoming else { return false }
        guard direction == .MsgDirectionIncoming else { return false }
        //: guard msgType == 5 else { return false }
        guard msgType == 5 else { return false }
        //: guard let msgTime = msgTime else { return false }
        guard let msgTime = msgTime else { return false }
        //: guard Date().timeIntervalSince(msgTime) < 24*60*60 else { return false }
        guard Date().timeIntervalSince(msgTime) < 24 * 60 * 60 else { return false }
        //: return true
        return true
    }
}

// MARK: - VIP展示消息已读逻辑

//: extension TalkingPrivateChatManager {
extension ChockThen {
    /// 是否需要插入已读回执引导充值VIP提醒消息
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func needInsertVIPReadReceiptMsg(cellData: TwoCellData) -> Bool {
    static func motivation(cellData: TwoCellData) -> Bool {
        //: if CompositionReactiveCompatible.share.loginUserMode.loungePlus == false,
        if CompositionReactiveCompatible.share.loginUserMode.loungePlus == false,
           //: cellData.innerMessage.groupID == nil,
           cellData.innerMessage.groupID == nil,
           //: cellData.status == .Msg_Status_Succ,
           cellData.status == .Msg_Status_Succ,
           //: cellData.direction == .MsgDirectionOutgoing,
           cellData.direction == .MsgDirectionOutgoing,
           //: cellData.msgModel.msgInfo.callCmd.count <= 0 {
           cellData.msgModel.msgInfo.callCmd.count <= 0
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 是否展示消息 已读/未读 标识
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func isShowReadMsg(cellData: TwoCellData) -> Bool {
    static func productCell(cellData: TwoCellData) -> Bool {
        // vip && 非群聊 && 发送成功 && 本人发送 && 非音视频通话文本消息，展示消息是否已读标识
        //: if CompositionReactiveCompatible.share.loginUserMode.loungePlus == true,
        if CompositionReactiveCompatible.share.loginUserMode.loungePlus == true,
           //: cellData.innerMessage.groupID == nil,
           cellData.innerMessage.groupID == nil,
           //: cellData.status == .Msg_Status_Succ,
           cellData.status == .Msg_Status_Succ,
           //: cellData.direction == .MsgDirectionOutgoing,
           cellData.direction == .MsgDirectionOutgoing,
           //: cellData.msgModel.msgInfo.callCmd.count <= 0 {
           cellData.msgModel.msgInfo.callCmd.count <= 0
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 消息对方是否已读
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func msgIsRead(cellData: TwoCellData) -> Bool {
    static func meanDistance(cellData: TwoCellData) -> Bool {
        //: guard let selfMsgTime = cellData.innerMessage.timestamp else { return false }
        guard let selfMsgTime = cellData.innerMessage.timestamp else { return false }
        //: if cellData.innerMessage.isPeerRead == true {
        if cellData.innerMessage.isPeerRead == true {
            //: return true
            return true
        }
        //: let readTimeInterval = TalkingPrivateChatManager.share.readReceiptDict[cellData.innerMessage.userID] ?? 0
        let readTimeInterval = ChockThen.share.readReceiptDict[cellData.innerMessage.userID] ?? 0
        //: let readTime = Date(timeIntervalSince1970: TimeInterval(readTimeInterval))
        let readTime = Date(timeIntervalSince1970: TimeInterval(readTimeInterval))
        //: if selfMsgTime <= readTime {
        if selfMsgTime <= readTime {
            //: return true
            return true
        }
        //: return false
        return false
    }
}

// MARK: - Reply消息逻辑

//: extension TalkingPrivateChatManager {
extension ChockThen {
    /// 回复消息
    /// - Parameters:
    ///   - cellData: 数据
    ///   - targetId: 对方uid
    /// - Returns: 引用消息模型
    //: static func handleReplyMsg(cellData: TwoCellData, targetId: String) -> AbTalkingChatMsgQuoteModel {
    static func earlier(cellData: TwoCellData, targetId: String) -> RankModel {
        //: let quoteModel = AbTalkingChatMsgQuoteModel()
        let quoteModel = RankModel()
        //: quoteModel.msgId = cellData.msgModel.msgInfo.msgId
        quoteModel.msgId = cellData.msgModel.msgInfo.msgId
        //: if cellData.direction == .MsgDirectionIncoming {
        if cellData.direction == .MsgDirectionIncoming {
            //: quoteModel.uid = targetId
            quoteModel.uid = targetId
            //: } else {
        } else {
            //: quoteModel.uid = CompositionReactiveCompatible.share.loginUserMode.userID
            quoteModel.uid = CompositionReactiveCompatible.share.loginUserMode.userID
        }
        //: let renderData = AbTalkingChatMsgQuoteDataModel()
        let renderData = PlaceModel()
        //: if cellData.isKind(of: SortCellData.self) {
        if cellData.isKind(of: SortCellData.self) {
            //: quoteModel.renderType = "text"
            quoteModel.renderType = (String(data_handMessage))
            //: renderData.content = cellData.msgModel.msgInfo.content
            renderData.content = cellData.msgModel.msgInfo.content

            //: } else if cellData.isKind(of: MilitaryCellData.self) {
        } else if cellData.isKind(of: MilitaryCellData.self) {
            //: quoteModel.renderType = "img"
            quoteModel.renderType = (String(mainIllegalLessShareId))
            //: renderData.previewUrl = cellData.msgModel.msgInfo.imageUri
            renderData.previewUrl = cellData.msgModel.msgInfo.imageUri

            //: } else if cellData.isKind(of: MovieReactiveCompatible.self) {
        } else if cellData.isKind(of: MovieReactiveCompatible.self) {
            //: quoteModel.renderType = "video"
            quoteModel.renderType = (kBecomeDiscoverMessage.lowercased())
            //: renderData.videoUrl = cellData.msgModel.msgInfo.video.videoUrl
            renderData.videoUrl = cellData.msgModel.msgInfo.video.videoUrl
            //: renderData.coverUrl = cellData.msgModel.msgInfo.video.coverImg
            renderData.coverUrl = cellData.msgModel.msgInfo.video.coverImg

            //: } else if cellData.isKind(of: MidReactiveCompatible.self) {
        } else if cellData.isKind(of: MidReactiveCompatible.self) {
            //: let audioCelldata = cellData as! MidReactiveCompatible
            let audioCelldata = cellData as! MidReactiveCompatible
            //: quoteModel.renderType = "audio"
            quoteModel.renderType = (String(constDivisionKey))
            //: let voiceCache = DBUserInfoManager.cache_getAudioDB(message: audioCelldata.innerMessage)
            let voiceCache = OverAgainInfoManager.clubMessage(message: audioCelldata.innerMessage)
            //: renderData.duration = Int(voiceCache.db_audioLength) ?? 0
            renderData.duration = Int(voiceCache.db_audioLength) ?? 0

            //: } else if cellData.isKind(of: OpenceMoreCellData.self) {
        } else if cellData.isKind(of: OpenceMoreCellData.self) {
            //: quoteModel.renderType = "gift"
            quoteModel.renderType = (constHugeUrl.replacingOccurrences(of: "focus", with: "i"))
            //: let giftCellData = cellData as! OpenceMoreCellData
            let giftCellData = cellData as! OpenceMoreCellData
            //: renderData.giftName = giftCellData.msgModel.gift.name
            renderData.giftName = giftCellData.msgModel.gift.name
            //: renderData.giftNameI18n = giftCellData.msgModel.gift.nameI18n
            renderData.giftNameI18n = giftCellData.msgModel.gift.nameI18n
            //: renderData.giftIcon = giftCellData.msgModel.gift.imgPreview
            renderData.giftIcon = giftCellData.msgModel.gift.imgPreview
            //: renderData.giftPrice = giftCellData.msgModel.gift.price
            renderData.giftPrice = giftCellData.msgModel.gift.price
            //: renderData.giftNum = Int(giftCellData.msgModel.gift.num) ?? 0
            renderData.giftNum = Int(giftCellData.msgModel.gift.num) ?? 0
        }

        //: quoteModel.renderData = renderData
        quoteModel.renderData = renderData
        //: return quoteModel
        return quoteModel
    }

    /// 点击“引用”消息
    /// - Parameters:
    ///   - cellData: 数据
    ///   - targetId: 对方uid
    //: static func handleClickReplyMsg(cellData: TwoCellData, targetId: String) {
    static func dealNeedTarget(cellData: TwoCellData, targetId: String) {
        //: let renderData = cellData.msgModel.quoteMsgInfo
        let renderData = cellData.msgModel.quoteMsgInfo
        //: UploadLogTool.writeLog(msg: "PrivateChat 点击引用消息\(renderData.renderType).")
        FinishThen.onicial(msg: (String(dataZzDuringName.suffix(3)) + String(show_randomPath.suffix(6)) + "at 点击" + mainSpringAppearId.capitalized) + "\(renderData.renderType).")
        //: if renderData.renderType == "text" {
        if renderData.renderType == (String(data_handMessage)) {
            //: let popView = QuoteDetailPopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let popView = DiscoidalPopView(frame: CGRect(x: 0, y: 0, width: user_needValue, height: kStreamTitle))
            //: popView.msgDetailText = renderData.renderData.content
            popView.msgDetailText = renderData.renderData.content
            //: popView.show()
            popView.native()

            //: } else if renderData.renderType == "img" {
        } else if renderData.renderType == (String(mainIllegalLessShareId)) {
            //: let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            //: var filePath = (libraryPath as NSString).appendingPathComponent(imageFileName)
            var filePath = (libraryPath as NSString).appendingPathComponent(show_blockTopUrl)
            //: filePath = (filePath as NSString).appendingPathComponent((renderData.renderData.previewUrl as NSString).lastPathComponent)
            filePath = (filePath as NSString).appendingPathComponent((renderData.renderData.previewUrl as NSString).lastPathComponent)

            //: var model = TalkingMomentPhotoModel.init()
            var model = HostEvenPhotoModel()
            //: if FileManager.default.fileExists(atPath: filePath) {
            if FileManager.default.fileExists(atPath: filePath) {
                //: let data = NSData.init(contentsOfFile: filePath)
                let data = NSData(contentsOfFile: filePath)
                //: model.imagePic = UIImage(data: data! as Data)
                model.imagePic = UIImage(data: data! as Data)
                //: } else {
            } else {
                //: model.imgUrl =  renderData.renderData.previewUrl
                model.imgUrl = renderData.renderData.previewUrl
            }
            //: var currenModel = TalkingMomentModel.init()
            var currenModel = LivingMomentModel()
            //: var tempArr: [TalkingMomentPhotoModel] = []
            var tempArr: [HostEvenPhotoModel] = []
            //: tempArr.append(model)
            tempArr.append(model)
            //: currenModel.pic = tempArr
            currenModel.pic = tempArr
            //: let vc = TalkingMomentPhotosVC.init(momentModel: currenModel, index: 0, type: .normal)
            let vc = CompositionViewController(momentModel: currenModel, index: 0, type: .normal)
            //: TalkingPrivateChatManager.share.getNavigationController()?.pushViewController(vc, animated: true)
            ChockThen.share.volition()?.pushViewController(vc, animated: true)

            //: } else if renderData.renderType == "video" {
        } else if renderData.renderType == (kBecomeDiscoverMessage.lowercased()) {
            //: let videoPath = renderData.renderData.videoUrl
            let videoPath = renderData.renderData.videoUrl
            //: let vc = TalkingMomentVideoVC.init(videoPath: videoPath)
            let vc = HostViewController(videoPath: videoPath)
            //: TalkingPrivateChatManager.share.getNavigationController()?.pushViewController(vc, animated: true)
            ChockThen.share.volition()?.pushViewController(vc, animated: true)

            //: } else if renderData.renderType == "audio" {
        } else if renderData.renderType == (String(constDivisionKey)) {
            //: let cacheWrap = WCDBVoiceMsgTable.db_getVoiceMsg(with: renderData.msgId)
            let cacheWrap = HelpReaderReactiveCompatible.aboveServer(with: renderData.msgId)
            //: let playModel = TalkingVoiceMsgPlayModel()
            let playModel = MidPlayModel()
            //: if cacheWrap != nil {
            if cacheWrap != nil {
                //: playModel.db_voiceCacheWrap = cacheWrap!
                playModel.db_voiceCacheWrap = cacheWrap!

                //: } else {
            } else {
                //: let model = WCDBVoiceMsgTable()
                let model = HelpReaderReactiveCompatible()
                //: model.msgId = renderData.msgId
                model.msgId = renderData.msgId
                //: model.db_voiceUri = renderData.renderData.url
                model.db_voiceUri = renderData.renderData.url
                //: model.db_senduid = renderData.uid
                model.db_senduid = renderData.uid
                //: if renderData.uid == CompositionReactiveCompatible.share.loginUserMode.userID {
                if renderData.uid == CompositionReactiveCompatible.share.loginUserMode.userID {
                    //: model.db_touid = targetId
                    model.db_touid = targetId
                    //: } else {
                } else {
                    //: model.db_touid = CompositionReactiveCompatible.share.loginUserMode.userID
                    model.db_touid = CompositionReactiveCompatible.share.loginUserMode.userID
                }
                //: model.db_audioLength = "\(renderData.renderData.duration)"
                model.db_audioLength = "\(renderData.renderData.duration)"
                //: WCDBVoiceMsgTable.db_insertVoiceMsg(model)
                HelpReaderReactiveCompatible.vocalism(model)
                //: playModel.db_voiceCacheWrap = model
                playModel.db_voiceCacheWrap = model
            }

            //: TalkingVoiceMsgPlayManager.shared.stopAudioPlayer()
            WhitePlayerDelegate.shared.commitPending()
            //: TalkingVoiceMsgPlayManager.shared.starPlayReplyMsg(playModel: playModel)
            WhitePlayerDelegate.shared.actionCalendar(playModel: playModel)

            //: } else if renderData.renderType == "gift" {
        } else if renderData.renderType == (constHugeUrl.replacingOccurrences(of: "focus", with: "i")) {
            //: let popView = QuoteDetailPopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let popView = DiscoidalPopView(frame: CGRect(x: 0, y: 0, width: user_needValue, height: kStreamTitle))
            //: popView.msgDetailText = "Sent ".localized + renderData.renderData.giftNameLocal() + " x\(renderData.renderData.giftNum)"
            popView.msgDetailText = (String(constStrikeAlreadyMsg)).localized + renderData.renderData.begin() + " x\(renderData.renderData.giftNum)"
            //: popView.show()
            popView.native()
        }
    }
}

// MARK: - Event

//: extension TalkingPrivateChatManager {
extension ChockThen {
    /// 检测用户短视频版本是否可用【> = 1.1.6 可用】
    /// - Returns: 是否可用
    //: static func checkShortVideo(userVersion: String) -> Bool {
    static func talkAbout(userVersion: String) -> Bool {
        //: guard let version = Int(userVersion.replacingOccurrences(of: ".", with: "")) else {
        guard let version = Int(userVersion.replacingOccurrences(of: ".", with: "")) else {
            //: return false
            return false
        }
        //: if version*100 < 116*100 {
        if version * 100 < 116 * 100 {
            //: return false
            return false
        }

        //: return true
        return true
    }
}


//: Declare String Begin

/*: "msgInfo" :*/
fileprivate let appVolumeName:String = "MS"
fileprivate let userBusyEarlyKey:String = "skip demonstrate blanket lay origingInfo"

/*: "jumps" :*/
fileprivate let dataTraceEditorName:String = "jextentps"

/*: "uid" :*/
fileprivate let constLiteHolderUrl:[Character] = ["u","i","d"]

/*: "roomId" :*/
fileprivate let const_detectMessage:[UInt8] = [0x57,0x4a,0x4a,0x48,0x6c,0x41]

private func informedConsent(tone num: UInt8) -> UInt8 {
    return num ^ 37
}

/*: "msgId" :*/
fileprivate let notiClothesPath:[UInt8] = [0xee,0xf0,0xe4,0xca,0xe7]

/*: "time" :*/
fileprivate let showEarFormat:[UInt8] = [0x7e,0x63,0x67,0x6f]

private func aliveLite(reach num: UInt8) -> UInt8 {
    return num ^ 10
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReaderMedalThen.swift
//  AbroadTalking
//
//  Created by young on 2023/4/12.
//

//: import UIKit
import UIKit

//: class TalkingGroupChatManager: NSObject {
class ReaderMedalThen: NSObject {
    //: weak var chatRoomVC: TalkingGroupChatController?
    weak var chatRoomVC: MeetControllerDelegate?
    //: @objc static let share = TalkingGroupChatManager()
    @objc static let share = ReaderMedalThen()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

// MARK: - 处理@ 消息

//: extension TalkingGroupChatManager {
extension ReaderMedalThen {
    /// 接收到@ 消息
    /// - Parameters:
    ///   - msg: 腾讯消息体
    ///   - extraInfo: "extra" 数据
    //: func receivedMentionMsg(msg: V2TIMMessage, extraInfo: [AnyHashable: Any]) {
    func compare(msg: V2TIMMessage, extraInfo: [AnyHashable: Any]) {
        //: let dict = JSON(extraInfo)
        let dict = JSON(extraInfo)
        //: let jumps = dict["msgInfo"]["jumps"].arrayValue
        let jumps = dict[(appVolumeName.lowercased() + String(userBusyEarlyKey.suffix(5)))][(dataTraceEditorName.replacingOccurrences(of: "extent", with: "um"))].arrayValue

        // 判断是否有@ 本人
        //: var atMe = false
        var atMe = false
        //: for dict in jumps {
        for dict in jumps {
            //: if dict["uid"].stringValue == CompositionReactiveCompatible.share.loginUid {
            if dict[(String(constLiteHolderUrl))].stringValue == CompositionReactiveCompatible.share.loginUid {
                //: atMe = true
                atMe = true
                //: break
                break
            }
        }
        //: guard atMe == true else { return }
        guard atMe == true else { return }

        //: let sendTime = msg.timestamp.timeIntervalSince1970*1000
        let sendTime = msg.timestamp.timeIntervalSince1970 * 1000
        //: if DirtyMacroDefine.isGroupChat(msg.groupID) {
        if DirtyMacroDefine.socialGroup(msg.groupID) { // 家族
            //: } else {
        } else { // 公共聊天室
            //: guard let vc = chatRoomVC else { return }
            guard let vc = chatRoomVC else { return }
            //: let dict: [String: Any] = ["roomId": msg.groupID ?? "",
            let dict: [String: Any] = [String(bytes: const_detectMessage.map{informedConsent(tone: $0)}, encoding: .utf8)!: msg.groupID ?? "",
                                       //: "msgId": msg.msgID ?? "",
                                       String(bytes: notiClothesPath.map{$0^131}, encoding: .utf8)!: msg.msgID ?? "",
                                       //: "time": sendTime]
                                       String(bytes: showEarFormat.map{aliveLite(reach: $0)}, encoding: .utf8)!: sendTime]
            //: vc.handleMentionMsg(info: dict)
            vc.searchion(info: dict)
        }
    }
}

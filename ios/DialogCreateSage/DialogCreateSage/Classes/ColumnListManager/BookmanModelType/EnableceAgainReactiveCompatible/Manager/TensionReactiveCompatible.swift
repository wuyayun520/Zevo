
//: Declare String Begin

/*: "live/enter" :*/
fileprivate let main_tailHouseKey:String = "live/ebox birth discover zone"
fileprivate let mainRandomMsg:String = "noffer"

/*: "streamerUid" :*/
fileprivate let show_ownName:[UInt8] = [0x64,0x69,0x55,0x72,0x65,0x6d,0x61,0x65,0x72,0x74,0x73]

/*: "live/userNum" :*/
fileprivate let appCareerName:String = "LIVE"
fileprivate let appMutualValue:[Character] = ["N","u","m"]

/*: "chatGroupId" :*/
fileprivate let user_sphereName:[UInt8] = [0x3a,0x31,0x38,0x2d,0x1e,0x2b,0x36,0x2c,0x29,0x10,0x3d]

private func cellVisual(coordinator num: UInt8) -> UInt8 {
    return num ^ 89
}

/*: "live/members" :*/
fileprivate let notiBlackKey:[Character] = ["l","i","v","e","/","m","e","m","b","e"]
fileprivate let mainCalendarTitle:String = "RS"

/*: "live/mute" :*/
fileprivate let kOppositionKey:String = "target task nearby memorylive/mute"

/*: "targetUid" :*/
fileprivate let notiResultKey:[UInt8] = [0x49,0x5c,0x4f,0x5a,0x58,0x49,0x68,0x54,0x59]

/*: "duration" :*/
fileprivate let k_twoTitle:[UInt8] = [0x5,0x16,0x13,0x2,0x15,0xa,0x10,0xf]

fileprivate func themeShareApproval(filter num: UInt8) -> UInt8 {
    let value = Int(num) - 161
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "live/unmute" :*/
fileprivate let k_whyRemainSectionContent:String = "live/unmexact street between large entry"
fileprivate let user_saveMessage:[Character] = ["u","t","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TensionReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

// 观众/主播
//: class TalkingAudienceManager: NSObject {
class TensionReactiveCompatible: NSObject {
    /// 进房
    //: func req_enterLiveRoom(streamerUid: String, completion: @escaping FinishBlock) {
    func permissionWeekly(streamerUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestPath = "live/enter"
        reqModel.requestPath = (String(main_tailHouseKey.prefix(6)) + mainRandomMsg.replacingOccurrences(of: "off", with: "t"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["streamerUid": streamerUid]
        reqModel.params = [String(bytes: show_ownName.reversed(), encoding: .utf8)!: streamerUid]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 在线人数
    //: func req_liveRoomOnlineNum(chatGroupId: String, completion: @escaping FinishBlock) {
    func doinge(chatGroupId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestPath = "live/userNum"
        reqModel.requestPath = (appCareerName.lowercased() + "/user" + String(appMutualValue))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["chatGroupId": chatGroupId]
        reqModel.params = [String(bytes: user_sphereName.map{cellVisual(coordinator: $0)}, encoding: .utf8)!: chatGroupId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 在线列表
    //: func req_liveRoomOnlineList(chatGroupId: String, completion: @escaping FinishBlock) {
    func oner(chatGroupId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestPath = "live/members"
        reqModel.requestPath = (String(notiBlackKey) + mainCalendarTitle.lowercased())
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["chatGroupId": chatGroupId]
        reqModel.params = [String(bytes: user_sphereName.map{cellVisual(coordinator: $0)}, encoding: .utf8)!: chatGroupId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 禁言
    //: func req_liveRoomMute(targetUid: String, duration: String, completion: @escaping FinishBlock) {
    func thenObject(targetUid: String, duration: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestPath = "live/mute"
        reqModel.requestPath = (String(kOppositionKey.suffix(9)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "duration": duration]
        reqModel.params = [String(bytes: notiResultKey.map{$0^61}, encoding: .utf8)!: targetUid, String(bytes: k_twoTitle.map{themeShareApproval(filter: $0)}, encoding: .utf8)!: duration]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 解禁
    //: func req_liveRoomUnmute(targetUid: String, completion: @escaping FinishBlock) {
    func transferIn(targetUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestPath = "live/unmute"
        reqModel.requestPath = (String(k_whyRemainSectionContent.prefix(8)) + String(user_saveMessage))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid]
        reqModel.params = [String(bytes: notiResultKey.map{$0^61}, encoding: .utf8)!: targetUid]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}

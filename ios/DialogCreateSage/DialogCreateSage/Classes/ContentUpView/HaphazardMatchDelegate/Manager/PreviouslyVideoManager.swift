
//: Declare String Begin

/*: "mf/videoMatch/switch" :*/
fileprivate let const_followContent:String = "strength threemf/vi"
fileprivate let notiRestrictionTitle:String = "switcfeedback"

/*: "status" :*/
fileprivate let user_pastFormat:[UInt8] = [0x83,0x84,0x91,0x84,0x85,0x83]

/*: "mf/videoMatch/checkMatch" :*/
fileprivate let app_theData:String = "mf/vioutput angle"
fileprivate let mainDestinationText:[Character] = ["d"]
fileprivate let noti_thirdAreaKey:String = "eoMatexcept disagree"
fileprivate let main_inviteBirdFormat:String = "hecshall"

/*: "matchVersion" :*/
fileprivate let show_operateMsg:[UInt8] = [0xcc,0xc0,0xd3,0xc2,0xc7,0xb5,0xc4,0xd1,0xd2,0xc8,0xce,0xcd]

fileprivate func listenerConvert(activity num: UInt8) -> UInt8 {
    let value = Int(num) + 161
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "enterType" :*/
fileprivate let dataBeatUrl:[UInt8] = [0x1d,0x16,0xc,0x1d,0xa,0x2c,0x1,0x8,0x1d]

/*: "mf/videoMatch/headPics" :*/
fileprivate let userHeavyFormat:String = "mf/vidleading occur multiple"
fileprivate let const_leastId:String = "h/headPsupport him"
fileprivate let noti_panelTitle:String = "spys"

/*: "mf/videoMatch/matchV3" :*/
fileprivate let k_kitCramStr:[Character] = ["m","f","/","v","i","d","e","o","M","a","t","c","h","/","m","a","t","c"]
fileprivate let dataBanStr:String = "unit tender normallyhV3"

/*: "matchId" :*/
fileprivate let notiBoldUtilizeMsg:[UInt8] = [0x7a,0x76,0x63,0x74,0x7f,0x5e,0x73]

/*: "mf/videoMatch/matchV4" :*/
fileprivate let dataVisitorPath:[Character] = ["m","f","/","v","i","d","e","o","M","a","t","c"]
fileprivate let mainNorName:[Character] = ["h","/","m","a"]
fileprivate let data_viewKey:String = "class marriage minimize preparetchV4"

/*: "mf/videoMatch/matchV4List" :*/
fileprivate let app_supportStr:[Character] = ["m","f","/","v","i","d"]
fileprivate let mainDogTitle:[Character] = ["e","o","M","a","t","c"]
fileprivate let const_quoteValue:String = "h/mapeer block system accelerate act"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PreviouslyVideoManager.swift
//  AbroadTalking
//
//  Created by young on 2022/11/4.
//

//: import UIKit
import UIKit

//: class TalkingQuickVideoManager: NSObject {
class PreviouslyVideoManager: NSObject {
    /// 视频速配开关（女）
    /// - Parameters:
    ///   - status: status=1开启，status=0关闭
    ///   - completion: 回调
    //: class func req_videoMatchSwitch(status: Bool, completion: @escaping FinishBlock) {
    class func bullMooseParty(status: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestPath = "mf/videoMatch/switch"
        reqModel.requestPath = (String(const_followContent.suffix(5)) + "deoMatch/" + notiRestrictionTitle.replacingOccurrences(of: "feedback", with: "h"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: reqModel.params = ["status": status]
        reqModel.params = [String(bytes: user_pastFormat.map{$0^240}, encoding: .utf8)!: status]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 视频速配资格检查（男）
    /// - Parameters:
    ///   - isRandomVideo: 是否是随机视频
    ///   - completion: 回调
    //: class func req_videoMatchCheck(enterType: Int = 0, completion: @escaping FinishBlock) {
    class func punish(enterType: Int = 0, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestPath = "mf/videoMatch/checkMatch"
        reqModel.requestPath = (String(app_theData.prefix(5)) + String(mainDestinationText) + String(noti_thirdAreaKey.prefix(5)) + "ch/c" + main_inviteBirdFormat.replacingOccurrences(of: "shall", with: "k") + "Match")
        //: reqModel.params = ["matchVersion": "v4", "enterType": enterType]
        reqModel.params = [String(bytes: show_operateMsg.map{listenerConvert(activity: $0)}, encoding: .utf8)!: "v4", String(bytes: dataBeatUrl.map{$0^120}, encoding: .utf8)!: enterType]
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 速配头像列表（男）
    /// - Parameter completion: 回调
    //: class func req_videoMatchHeadPics(completion: @escaping FinishBlock) {
    class func videoMapCompletion(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestPath = "mf/videoMatch/headPics"
        reqModel.requestPath = (String(userHeavyFormat.prefix(6)) + "eoMatc" + String(const_leastId.prefix(7)) + noti_panelTitle.replacingOccurrences(of: "spy", with: "ic"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开始视频速配（男）
    /// - Parameters:
    ///   - matchId: 默认传0，skip的时候传之前的matchId
    ///   - completion: 回调
    //: class func req_videoMatchToMatch(matchId: Int, completion: @escaping FinishBlock) {
    class func attention(matchId: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestPath = "mf/videoMatch/matchV3"
        reqModel.requestPath = (String(k_kitCramStr) + String(dataBanStr.suffix(3)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["matchId": matchId]
        reqModel.params = [String(bytes: notiBoldUtilizeMsg.map{$0^23}, encoding: .utf8)!: matchId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开始随机视频（男）
    /// - Parameters:
    ///   - params: 参数
    ///   - completion: 回调
    //: class func req_randomVideoToMatch(params: [String: Any], completion: @escaping FinishBlock) {
    class func designCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestPath = "mf/videoMatch/matchV4"
        reqModel.requestPath = (String(dataVisitorPath) + String(mainNorName) + String(data_viewKey.suffix(5)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取随机视频池子用户列表
    /// - Parameters:
    ///   - params: 参数
    ///   - completion: 回调
    //: class func req_getMatchV4List(params: [String: Any], completion: @escaping FinishBlock) {
    class func screen(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestPath = "mf/videoMatch/matchV4List"
        reqModel.requestPath = (String(app_supportStr) + String(mainDogTitle) + String(const_quoteValue.prefix(4)) + "tchV4List")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}

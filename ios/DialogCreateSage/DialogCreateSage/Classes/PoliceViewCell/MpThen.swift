
//: Declare String Begin

/*: "mf/user/getUserInfo" :*/
fileprivate let main_arrowUrl:String = "mf/uangle video gold bounce"
fileprivate let app_tradeKey:String = "pending enough star twentytUserI"
fileprivate let userSocialId:String = "ndarko"

/*: "uid" :*/
fileprivate let noti_channelStr:[UInt8] = [0x64,0x69,0x75]

/*: "mf/user/getReceivedGifts" :*/
fileprivate let const_outerMsg:[Character] = ["m","f","/","u","s","e","r","/","g","e","t","R","e","c","e","i","v","e","d","G"]
fileprivate let constActUrl:String = "ifedibles"

/*: "mf/crush/send" :*/
fileprivate let constKindData:String = "mf/crstereo insert if interrupt creature"

/*: "targetUid" :*/
fileprivate let notiDismissPath:[UInt8] = [0x64,0x69,0x55,0x74,0x65,0x67,0x72,0x61,0x74]

/*: "user/attention" :*/
fileprivate let showHandBrightText:[UInt8] = [0xc4,0xc2,0xb4,0xc1,0x7e,0xb0,0xc3,0xc3,0xb4,0xbd,0xc3,0xb8,0xbe,0xbd]

fileprivate func truthSquare(incident num: UInt8) -> UInt8 {
    let value = Int(num) + 177
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "user/removeAttention" :*/
fileprivate let data_fromKey:[Character] = ["u","s","e","r","/","r","e","m","o","v","e","A","t","t","e","n","t","i"]
fileprivate let main_literalValue:String = "ON"

/*: "attentionUid" :*/
fileprivate let kCurveFormat:[UInt8] = [0x7d,0x68,0x68,0x79,0x72,0x68,0x75,0x73,0x72,0x49,0x75,0x78]

private func grabSample(location num: UInt8) -> UInt8 {
    return num ^ 28
}

/*: "removeAttentionUid" :*/
fileprivate let k_botWaveContent:[UInt8] = [0x64,0x69,0x55,0x6e,0x6f,0x69,0x74,0x6e,0x65,0x74,0x74,0x41,0x65,0x76,0x6f,0x6d,0x65,0x72]

/*: "user/addBlack" :*/
fileprivate let constDynamicsMsg:[UInt8] = [0x6b,0x63,0x61,0x6c,0x42,0x64,0x64,0x61,0x2f,0x72,0x65,0x73,0x75]

/*: "user/remBlack" :*/
fileprivate let noti_earnBenchMsg:String = "user/forehead eh description"
fileprivate let notiTheFormat:String = "remBlackits access clearly large pick"

/*: "mf/moment/like" :*/
fileprivate let noti_oldData:[Character] = ["m","f","/","m","o","m","e","n","t","/","l"]
fileprivate let noti_aircraftFormat:String = "viae"

/*: "momentId" :*/
fileprivate let const_satisfyDoingingMsg:[UInt8] = [0xf5,0xf7,0xf5,0xfd,0xf6,0xec,0xd1,0xfc]

private func hangUp(evaluate num: UInt8) -> UInt8 {
    return num ^ 152
}

/*: "type" :*/
fileprivate let data_sphereContent:[UInt8] = [0x64,0x69,0x60,0x75]

private func underAnima(regain num: UInt8) -> UInt8 {
    return num ^ 16
}

/*: "mf/user/uploadAuthPic" :*/
fileprivate let user_transformStr:String = "yes origin sum pricemf/use"
fileprivate let const_frontId:String = "maker general workplace able sectionloadAuthP"
fileprivate let show_greenLevelTitle:String = "homec"

/*: "auth_pic" :*/
fileprivate let constBottomMsg:[UInt8] = [0x27,0x33,0x32,0x2e,0x19,0x36,0x2f,0x25]

private func automaticOff(sort num: UInt8) -> UInt8 {
    return num ^ 70
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MpThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/8.
//

//: import UIKit
import UIKit

//: class TalkingUserRequestManager: NSObject {
class MpThen: NSObject {
    // MARK: - 用户信息

    //: class func func__otherUserInfo(uid: String, completion: @escaping FinishBlock) {
    class func funcShareCompletion(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestPath = "mf/user/getUserInfo"
        reqModel.requestPath = (String(main_arrowUrl.prefix(4)) + "ser/ge" + String(app_tradeKey.suffix(6)) + userSocialId.replacingOccurrences(of: "dark", with: "f"))
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: noti_channelStr.reversed(), encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 收到的礼物

    //: class func func__getReceivedGift(uid: String, completion: @escaping FinishBlock) {
    class func received(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestPath = "mf/user/getReceivedGifts"
        reqModel.requestPath = (String(const_outerMsg) + constActUrl.replacingOccurrences(of: "edible", with: "t"))
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: noti_channelStr.reversed(), encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 发送心动

    //: class func func__sendCrushWithUserId(targetUid: String, completion: @escaping FinishBlock) {
    class func fulgidFamily(targetUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/crush/send"
        reqModel.requestPath = (String(constKindData.prefix(5)) + "ush/send")
        //: reqModel.params = ["targetUid": targetUid]
        reqModel.params = [String(bytes: notiDismissPath.reversed(), encoding: .utf8)!: targetUid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 关注

    //: class func func__attentionWithUserId(uid: String, isAttention: Bool, completion: @escaping FinishBlock) {
    class func speakerCreate(uid: String, isAttention: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = isAttention == true ? "user/attention" : "user/removeAttention"
        reqModel.requestPath = isAttention == true ? String(bytes: showHandBrightText.map{truthSquare(incident: $0)}, encoding: .utf8)! : (String(data_fromKey) + main_literalValue.lowercased())
        //: reqModel.params = isAttention == true ? ["attentionUid": uid] : ["removeAttentionUid": uid]
        reqModel.params = isAttention == true ? [String(bytes: kCurveFormat.map{grabSample(location: $0)}, encoding: .utf8)!: uid] : [String(bytes: k_botWaveContent.reversed(), encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 拉黑

    //: class func func__pullBlackWithUserId(uid: String, isBlack: Bool, completion: @escaping FinishBlock) {
    class func personality(uid: String, isBlack: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = isBlack == true ? "user/addBlack" : "user/remBlack"
        reqModel.requestPath = isBlack == true ? String(bytes: constDynamicsMsg.reversed(), encoding: .utf8)! : (String(noti_earnBenchMsg.prefix(5)) + String(notiTheFormat.prefix(8)))
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: noti_channelStr.reversed(), encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: if succeed == true {
            if succeed == true {
                //: if isBlack {
                if isBlack {
                    //: TalkingBlockListManager.shared.addUserToBlockList(userId: uid)
                    RouteReactiveCompatible.shared.conId(userId: uid)
                    //: } else {
                } else {
                    //: TalkingBlockListManager.shared.removeUserForBlockList(userId: uid)
                    RouteReactiveCompatible.shared.conceal(userId: uid)
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 点赞

    //: class func func__likeMoment(mid: String, type: String, completion: @escaping FinishBlock) {
    class func ad(mid: String, type: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/moment/like"
        reqModel.requestPath = (String(noti_oldData) + noti_aircraftFormat.replacingOccurrences(of: "via", with: "ik"))
        //: reqModel.params = ["momentId": mid, "type": type]
        reqModel.params = [String(bytes: const_satisfyDoingingMsg.map{hangUp(evaluate: $0)}, encoding: .utf8)!: mid, String(bytes: data_sphereContent.map{underAnima(regain: $0)}, encoding: .utf8)!: type]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 举报

    //: class func func__reportRequest(reqPath: String, reqParams: Dictionary<String, String>, completion: @escaping FinishBlock) {
    class func draftCompletion(reqPath: String, reqParams: [String: String], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = reqPath
        reqModel.requestPath = reqPath
        //: reqModel.params = reqParams
        reqModel.params = reqParams
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 真人认证

    //: class func func__realVerifyUploadPic(pic: UIImage, completion: @escaping FinishBlock) {
    class func design(pic: UIImage, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/user/uploadAuthPic"
        reqModel.requestPath = (String(user_transformStr.suffix(6)) + "r/up" + String(const_frontId.suffix(9)) + show_greenLevelTitle.replacingOccurrences(of: "home", with: "i"))
        //: let data = pic.jpegData(compressionQuality: 1)
        let data = pic.jpegData(compressionQuality: 1)
        //: reqModel.params = ["auth_pic": data ?? ""]
        reqModel.params = [String(bytes: constBottomMsg.map{automaticOff(sort: $0)}, encoding: .utf8)!: data ?? ""]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}

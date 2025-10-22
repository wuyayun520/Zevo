
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let user_plantMessage:[UInt8] = [0x60,0x65,0x60,0x6b,0x1f,0x5a,0x66,0x5b,0x5c,0x69,0x31,0x20,0x17,0x5f,0x58,0x6a,0x17,0x65,0x66,0x6b,0x17,0x59,0x5c,0x5c,0x65,0x17,0x60,0x64,0x67,0x63,0x5c,0x64,0x5c,0x65,0x6b,0x5c,0x5b]

fileprivate func bearLat(quick num: UInt8) -> UInt8 {
    let value = Int(num) - 247
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "gift" :*/
fileprivate let kAcquisitionTitle:[Character] = ["g","i","f","t"]

/*: "iosEffect" :*/
fileprivate let kValidRocketData:[Character] = ["i","o","s","E","f"]
fileprivate let app_seatName:String = "fecstaff"

/*: "iosEmperorEffect" :*/
fileprivate let constAgentPlanValue:[Character] = ["i","o","s","E","m"]
fileprivate let showGrayMessage:[Character] = ["p","e","r","o","r","E"]
fileprivate let kVideoStr:[Character] = ["f","f","e","c","t"]

/*: "fromUid" :*/
fileprivate let kClearlyId:[Character] = ["f","r","o","m","U","i"]
fileprivate let showInputAnimalData:String = "makeup"

/*: "fromNickname" :*/
fileprivate let kSegmentSuccessData:String = "fromNprotection graduate fore"
fileprivate let main_languageId:String = "location"

/*: "fromHeadPic" :*/
fileprivate let user_handleStr:String = "post"
fileprivate let data_minimizeUrl:String = "conversion process cognitive mine animaomHe"

/*: "pid" :*/
fileprivate let noti_relieveRefId:String = "pextra"

/*: "num" :*/
fileprivate let const_landName:[Character] = ["n","u","m"]

/*: "pname" :*/
fileprivate let userReplacementText:String = "pwriteame"

/*: "name" :*/
fileprivate let main_tapMsg:String = "namcapable"

/*: "giftPic" :*/
fileprivate let notiChildMessage:[Character] = ["g","i","f","t","P","i","c"]

/*: "imgPreview" :*/
fileprivate let showStrategicTitle:[Character] = ["i"]
fileprivate let appSinkUrl:String = "mgPrrobot busy representation"

/*: "comboNum" :*/
fileprivate let notiWorldKey:String = "path threshold dynamics commit highlightcomboNu"
fileprivate let const_heartUrl:String = "phase"

/*: "showType" :*/
fileprivate let kBubbleFormat:String = "showTypefound state deliver big"

/*: "animationTimes" :*/
fileprivate let app_fourId:String = "anireader"
fileprivate let kArmReMsg:[Character] = ["s"]

/*: "iosVapEffect" :*/
fileprivate let userUnitPhysicalTitle:[Character] = ["i","o","s","V","a","p","E","f","f"]
fileprivate let noti_bringText:[Character] = ["e","c","t"]

/*: "giftNum" :*/
fileprivate let userManageTitle:String = "giftNumkit medium subject mention stage"

/*: "Send to %@" :*/
fileprivate let kPrimaryUrl:[Character] = ["S","e","n","d"," ","t","o"]
fileprivate let mainTowardAirData:[Character] = [" ","%","@"]

/*: "all" :*/
fileprivate let noti_opportunityId:[Character] = ["a","l","l"]

/*: "Send to All Numbers" :*/
fileprivate let const_anyoneId:[Character] = ["S","e","n","d"," ","t","o"," ","A","l","l"," ","N","u","m","b"]
fileprivate let constReportRequestFormTitle:String = "easset"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RoundThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/7.
//

//: import UIKit
import UIKit

/// 私聊 礼物动效层
//: class TalkingPrivateChatAnimatView: UIView {
class RoundThen: UIView {
    //: var animatArray: NSMutableArray =  NSMutableArray.init(capacity: 0)
    var animatArray: NSMutableArray = .init(capacity: 0)
    //: var isPlayAnimat = false
    var isPlayAnimat = false

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.source()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: user_plantMessage.map{bearLat(quick: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: public lazy var giftAnimatView: TalkingGiftAnimatView = {
    public lazy var giftAnimatView: AnimatView = {
        //: let view = TalkingGiftAnimatView.init()
        let view = AnimatView()
        //: return view
        return view
        //: }()
    }()
}

//: extension TalkingPrivateChatAnimatView {
extension RoundThen {
    /// 自己私聊送礼,动效处理

    //: func dealGiftAnimatData(dict: Dictionary<String, Any>) {
    func purblind(dict: [String: Any]) {
        //: if dict.keys.isEmpty {
        if dict.keys.isEmpty {
            //: return
            return
        }
        //: let  giftInfo: Dictionary? = dict["gift"] as? Dictionary<String, Any>
        let giftInfo: Dictionary? = dict[(String(kAcquisitionTitle))] as? [String: Any]
        //: if giftInfo == nil || giftInfo?.keys.contains("iosEffect") == false {
        if giftInfo == nil || giftInfo?.keys.contains((String(kValidRocketData) + app_seatName.replacingOccurrences(of: "staff", with: "t"))) == false {
            //: return
            return
        }

        // 帝王礼物特效
        //: if  giftInfo?.keys.contains("iosEmperorEffect") != false {
        if giftInfo?.keys.contains((String(constAgentPlanValue) + String(showGrayMessage) + String(kVideoStr))) != false {
            // 开头动效
            //: let giftArr: NSMutableArray = giftInfo?["iosEmperorEffect"] as! NSMutableArray
            let giftArr: NSMutableArray = giftInfo?[(String(constAgentPlanValue) + String(showGrayMessage) + String(kVideoStr))] as! NSMutableArray

            //: giftArr.insert(giftInfo!["iosEffect"] ?? "", at: 0)
            giftArr.insert(giftInfo![(String(kValidRocketData) + app_seatName.replacingOccurrences(of: "staff", with: "t"))] ?? "", at: 0)
            //: let tempArr = NSMutableArray.init()
            let tempArr = NSMutableArray()

            //: for giftStr in giftArr {
            for giftStr in giftArr {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)
                //: dictM["fromUid"] = CompositionReactiveCompatible.share.loginUserMode.userID
                dictM[(String(kClearlyId) + showInputAnimalData.replacingOccurrences(of: "makeup", with: "d"))] = CompositionReactiveCompatible.share.loginUserMode.userID
                //: dictM["fromNickname"] = CompositionReactiveCompatible.share.loginUserMode.nickname
                dictM[(String(kSegmentSuccessData.prefix(5)) + "icknam" + main_languageId.replacingOccurrences(of: "location", with: "e"))] = CompositionReactiveCompatible.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = CompositionReactiveCompatible.share.loginUserMode.headPic
                dictM[(user_handleStr.replacingOccurrences(of: "post", with: "fr") + String(data_minimizeUrl.suffix(4)) + "adPic")] = CompositionReactiveCompatible.share.loginUserMode.headPic
                //: dictM["pid"] = "0" // 缓存兼容
                dictM[(noti_relieveRefId.replacingOccurrences(of: "extra", with: "id"))] = "0" // 缓存兼容
                //: dictM["num"] =  giftInfo?["num"]
                dictM[(String(const_landName))] = giftInfo?[(String(const_landName))]
                //: dictM["pname"] = giftInfo?["name"]
                dictM[(userReplacementText.replacingOccurrences(of: "write", with: "n"))] = giftInfo?[(main_tapMsg.replacingOccurrences(of: "capable", with: "e"))]
                //: dictM["giftPic"] = giftInfo?["imgPreview"]
                dictM[(String(notiChildMessage))] = giftInfo?[(String(showStrategicTitle) + String(appSinkUrl.prefix(4)) + "eview")]
                //: dictM["comboNum"] = giftInfo?["comboNum"]
                dictM[(String(notiWorldKey.suffix(7)) + const_heartUrl.replacingOccurrences(of: "phase", with: "m"))] = giftInfo?[(String(notiWorldKey.suffix(7)) + const_heartUrl.replacingOccurrences(of: "phase", with: "m"))]
                //: dictM["iosEffect"] = giftStr
                dictM[(String(kValidRocketData) + app_seatName.replacingOccurrences(of: "staff", with: "t"))] = giftStr
                //: dictM["showType"] = giftInfo?["showType"]
                dictM[(String(kBubbleFormat.prefix(8)))] = giftInfo?[(String(kBubbleFormat.prefix(8)))]
                //: dictM["animationTimes"] = "1"
                dictM[(app_fourId.replacingOccurrences(of: "reader", with: "m") + "ationTime" + String(kArmReMsg))] = "1"
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<RecoverAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: tempArr.add(giftModel)
                    tempArr.add(giftModel)
                }
            }
            // 循环播放次数
            //: var animationTimes = 1
            var animationTimes = 1
            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((app_fourId.replacingOccurrences(of: "reader", with: "m") + "ationTime" + String(kArmReMsg))) != false {
                //: animationTimes = giftInfo!["animationTimes"] as! Int
                animationTimes = giftInfo![(app_fourId.replacingOccurrences(of: "reader", with: "m") + "ationTime" + String(kArmReMsg))] as! Int
                //: } else {
            } else {
                //: animationTimes = giftInfo!["num"] as! Int
                animationTimes = giftInfo![(String(const_landName))] as! Int
            }
            //: let tempGiftArr = tempArr
            let tempGiftArr = tempArr
            //: for _ in 0..<animationTimes {
            for _ in 0 ..< animationTimes {
                //: self.animatArray.addObjects(from: tempGiftArr as! [Any])
                self.animatArray.addObjects(from: tempGiftArr as! [Any])
            }

            //: } else {
        } else {
            //: let dictM = NSMutableDictionary.init(capacity: 0)
            let dictM = NSMutableDictionary(capacity: 0)
            //: dictM["fromUid"] = CompositionReactiveCompatible.share.loginUserMode.userID
            dictM[(String(kClearlyId) + showInputAnimalData.replacingOccurrences(of: "makeup", with: "d"))] = CompositionReactiveCompatible.share.loginUserMode.userID
            //: dictM["fromNickname"] = CompositionReactiveCompatible.share.loginUserMode.nickname
            dictM[(String(kSegmentSuccessData.prefix(5)) + "icknam" + main_languageId.replacingOccurrences(of: "location", with: "e"))] = CompositionReactiveCompatible.share.loginUserMode.nickname
            //: dictM["fromHeadPic"] = CompositionReactiveCompatible.share.loginUserMode.headPic
            dictM[(user_handleStr.replacingOccurrences(of: "post", with: "fr") + String(data_minimizeUrl.suffix(4)) + "adPic")] = CompositionReactiveCompatible.share.loginUserMode.headPic
            //: dictM["pid"] = giftInfo?["id"]
            dictM[(noti_relieveRefId.replacingOccurrences(of: "extra", with: "id"))] = giftInfo?["id"]
            //: dictM["num"] =  giftInfo?["num"]
            dictM[(String(const_landName))] = giftInfo?[(String(const_landName))]
            //: dictM["pname"] = giftInfo?["name"]
            dictM[(userReplacementText.replacingOccurrences(of: "write", with: "n"))] = giftInfo?[(main_tapMsg.replacingOccurrences(of: "capable", with: "e"))]
            //: dictM["giftPic"] = giftInfo?["imgPreview"]
            dictM[(String(notiChildMessage))] = giftInfo?[(String(showStrategicTitle) + String(appSinkUrl.prefix(4)) + "eview")]
            //: dictM["comboNum"] = giftInfo?["comboNum"]
            dictM[(String(notiWorldKey.suffix(7)) + const_heartUrl.replacingOccurrences(of: "phase", with: "m"))] = giftInfo?[(String(notiWorldKey.suffix(7)) + const_heartUrl.replacingOccurrences(of: "phase", with: "m"))]
            //: dictM["iosEffect"] = giftInfo?["iosEffect"]
            dictM[(String(kValidRocketData) + app_seatName.replacingOccurrences(of: "staff", with: "t"))] = giftInfo?[(String(kValidRocketData) + app_seatName.replacingOccurrences(of: "staff", with: "t"))]
            //: dictM["showType"] = giftInfo?["showType"]
            dictM[(String(kBubbleFormat.prefix(8)))] = giftInfo?[(String(kBubbleFormat.prefix(8)))]
            //: dictM["iosVapEffect"] = giftInfo?["iosVapEffect"]
            dictM[(String(userUnitPhysicalTitle) + String(noti_bringText))] = giftInfo?[(String(userUnitPhysicalTitle) + String(noti_bringText))]

            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((app_fourId.replacingOccurrences(of: "reader", with: "m") + "ationTime" + String(kArmReMsg))) != false {
                //: dictM["animationTimes"] = giftInfo?["animationTimes"]
                dictM[(app_fourId.replacingOccurrences(of: "reader", with: "m") + "ationTime" + String(kArmReMsg))] = giftInfo?[(app_fourId.replacingOccurrences(of: "reader", with: "m") + "ationTime" + String(kArmReMsg))]
                //: } else {
            } else {
                //: dictM["animationTimes"] = dictM["num"]
                dictM[(app_fourId.replacingOccurrences(of: "reader", with: "m") + "ationTime" + String(kArmReMsg))] = dictM[(String(const_landName))]
            }
            //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
            if let giftModel = JSONDeserializer<RecoverAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                //: self.animatArray.add(giftModel)
                self.animatArray.add(giftModel)
            }
        }
        //: judgePlay()
        occupation()
    }

    /// 视频通话送礼,模型转换
    //: func changeGiftToModel(dict: Dictionary<String, Any>) ->TalkingGiftMsgAnimatModel? {
    func arm(dict: [String: Any]) -> RecoverAnimatModel? {
        //: if dict.keys.isEmpty {
        if dict.keys.isEmpty {
            //: return nil
            return nil
        }
        //: let  giftInfo: Dictionary? = dict["gift"] as? Dictionary<String, Any>
        let giftInfo: Dictionary? = dict[(String(kAcquisitionTitle))] as? [String: Any]
        //: if giftInfo == nil {
        if giftInfo == nil {
            //: return nil
            return nil
        }

        // 帝王礼物特效
        //: if  giftInfo?.keys.contains("iosEmperorEffect") != false {
        if giftInfo?.keys.contains((String(constAgentPlanValue) + String(showGrayMessage) + String(kVideoStr))) != false {
            // 开头动效
            //: let giftArr: NSMutableArray = giftInfo?["iosEmperorEffect"] as! NSMutableArray
            let giftArr: NSMutableArray = giftInfo?[(String(constAgentPlanValue) + String(showGrayMessage) + String(kVideoStr))] as! NSMutableArray

            //: giftArr.insert(giftInfo!["iosEffect"] ?? "", at: 0)
            giftArr.insert(giftInfo![(String(kValidRocketData) + app_seatName.replacingOccurrences(of: "staff", with: "t"))] ?? "", at: 0)

            //: for giftStr in giftArr {
            for giftStr in giftArr {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)
                //: dictM["fromUid"] = CompositionReactiveCompatible.share.loginUserMode.userID
                dictM[(String(kClearlyId) + showInputAnimalData.replacingOccurrences(of: "makeup", with: "d"))] = CompositionReactiveCompatible.share.loginUserMode.userID
                //: dictM["fromNickname"] = CompositionReactiveCompatible.share.loginUserMode.nickname
                dictM[(String(kSegmentSuccessData.prefix(5)) + "icknam" + main_languageId.replacingOccurrences(of: "location", with: "e"))] = CompositionReactiveCompatible.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = CompositionReactiveCompatible.share.loginUserMode.headPic
                dictM[(user_handleStr.replacingOccurrences(of: "post", with: "fr") + String(data_minimizeUrl.suffix(4)) + "adPic")] = CompositionReactiveCompatible.share.loginUserMode.headPic
                //: dictM["pid"] = "0" // 缓存兼容
                dictM[(noti_relieveRefId.replacingOccurrences(of: "extra", with: "id"))] = "0" // 缓存兼容
                //: dictM["num"] =  giftInfo?["num"]
                dictM[(String(const_landName))] = giftInfo?[(String(const_landName))]
                //: dictM["pname"] = giftInfo?["name"]
                dictM[(userReplacementText.replacingOccurrences(of: "write", with: "n"))] = giftInfo?[(main_tapMsg.replacingOccurrences(of: "capable", with: "e"))]
                //: dictM["giftPic"] = giftInfo?["imgPreview"]
                dictM[(String(notiChildMessage))] = giftInfo?[(String(showStrategicTitle) + String(appSinkUrl.prefix(4)) + "eview")]
                //: dictM["comboNum"] = giftInfo?["comboNum"]
                dictM[(String(notiWorldKey.suffix(7)) + const_heartUrl.replacingOccurrences(of: "phase", with: "m"))] = giftInfo?[(String(notiWorldKey.suffix(7)) + const_heartUrl.replacingOccurrences(of: "phase", with: "m"))]
                //: dictM["iosEffect"] = giftStr
                dictM[(String(kValidRocketData) + app_seatName.replacingOccurrences(of: "staff", with: "t"))] = giftStr
                //: dictM["showType"] = giftInfo?["showType"]
                dictM[(String(kBubbleFormat.prefix(8)))] = giftInfo?[(String(kBubbleFormat.prefix(8)))]
                //: dictM["animationTimes"] = "1"
                dictM[(app_fourId.replacingOccurrences(of: "reader", with: "m") + "ationTime" + String(kArmReMsg))] = "1"
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<RecoverAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: return giftModel
                    return giftModel
                }
            }
            //: } else {
        } else {
            //: let dictM = NSMutableDictionary.init(capacity: 0)
            let dictM = NSMutableDictionary(capacity: 0)
            //: dictM["fromUid"] = CompositionReactiveCompatible.share.loginUserMode.userID
            dictM[(String(kClearlyId) + showInputAnimalData.replacingOccurrences(of: "makeup", with: "d"))] = CompositionReactiveCompatible.share.loginUserMode.userID
            //: dictM["fromNickname"] = CompositionReactiveCompatible.share.loginUserMode.nickname
            dictM[(String(kSegmentSuccessData.prefix(5)) + "icknam" + main_languageId.replacingOccurrences(of: "location", with: "e"))] = CompositionReactiveCompatible.share.loginUserMode.nickname
            //: dictM["fromHeadPic"] = CompositionReactiveCompatible.share.loginUserMode.headPic
            dictM[(user_handleStr.replacingOccurrences(of: "post", with: "fr") + String(data_minimizeUrl.suffix(4)) + "adPic")] = CompositionReactiveCompatible.share.loginUserMode.headPic
            //: dictM["pid"] = giftInfo?["id"]
            dictM[(noti_relieveRefId.replacingOccurrences(of: "extra", with: "id"))] = giftInfo?["id"]
            //: dictM["num"] =  giftInfo?["num"]
            dictM[(String(const_landName))] = giftInfo?[(String(const_landName))]
            //: dictM["pname"] = giftInfo?["name"]
            dictM[(userReplacementText.replacingOccurrences(of: "write", with: "n"))] = giftInfo?[(main_tapMsg.replacingOccurrences(of: "capable", with: "e"))]
            //: dictM["giftPic"] = giftInfo?["imgPreview"]
            dictM[(String(notiChildMessage))] = giftInfo?[(String(showStrategicTitle) + String(appSinkUrl.prefix(4)) + "eview")]
            //: dictM["comboNum"] = giftInfo?["comboNum"]
            dictM[(String(notiWorldKey.suffix(7)) + const_heartUrl.replacingOccurrences(of: "phase", with: "m"))] = giftInfo?[(String(notiWorldKey.suffix(7)) + const_heartUrl.replacingOccurrences(of: "phase", with: "m"))]
            //: dictM["iosEffect"] = giftInfo?["iosEffect"]
            dictM[(String(kValidRocketData) + app_seatName.replacingOccurrences(of: "staff", with: "t"))] = giftInfo?[(String(kValidRocketData) + app_seatName.replacingOccurrences(of: "staff", with: "t"))]
            //: dictM["showType"] = giftInfo?["showType"]
            dictM[(String(kBubbleFormat.prefix(8)))] = giftInfo?[(String(kBubbleFormat.prefix(8)))]
            //: dictM["iosVapEffect"] = giftInfo?["iosVapEffect"]
            dictM[(String(userUnitPhysicalTitle) + String(noti_bringText))] = giftInfo?[(String(userUnitPhysicalTitle) + String(noti_bringText))]

            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((app_fourId.replacingOccurrences(of: "reader", with: "m") + "ationTime" + String(kArmReMsg))) != false {
                //: dictM["animationTimes"] = giftInfo?["animationTimes"]
                dictM[(app_fourId.replacingOccurrences(of: "reader", with: "m") + "ationTime" + String(kArmReMsg))] = giftInfo?[(app_fourId.replacingOccurrences(of: "reader", with: "m") + "ationTime" + String(kArmReMsg))]
                //: } else {
            } else {
                //: dictM["animationTimes"] = dictM["num"]
                dictM[(app_fourId.replacingOccurrences(of: "reader", with: "m") + "ationTime" + String(kArmReMsg))] = dictM[(String(const_landName))]
            }
            //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
            if let giftModel = JSONDeserializer<RecoverAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                //: return giftModel
                return giftModel
            }
        }
        //: return nil
        return nil
    }

    /// 聊天室收到礼物消息处理
    //: func chatRoomDisposeReceiveGiftMsg(giftMessageDic: Dictionary<String, Any>, model: TalkingChatRoomMemberModel)->TalkingGiftMsgAnimatModel? {
    func modify(giftMessageDic: [String: Any], model: WealthyMemberModel) -> RecoverAnimatModel? {
        //: if  giftMessageDic.keys.contains("gift") == false {
        if giftMessageDic.keys.contains((String(kAcquisitionTitle))) == false {
            //: return nil
            return nil
        }
        //: if var roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: giftMessageDic["gift"] as? Dictionary<String, Any>, designatedPath: nil) {
        if var roomGiftModel = JSONDeserializer<AppearanceModelType>.deserializeFrom(dict: giftMessageDic[(String(kAcquisitionTitle))] as? [String: Any], designatedPath: nil) {
            //: let dic =  giftMessageDic["gift"] as? Dictionary<String, Any>
            let dic = giftMessageDic[(String(kAcquisitionTitle))] as? [String: Any]
            //: roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
            roomGiftModel.giftNum = dic?[(String(userManageTitle.prefix(7)))] as? Int ?? 0
            //: var effect = roomGiftModel.iosEffect
            var effect = roomGiftModel.iosEffect
            //: if effect.count == 0 {
            if effect.count == 0 {
                //: effect = roomGiftModel.effect
                effect = roomGiftModel.effect
            }

            //: let tempGiftModel = NSMutableArray.init()
            let tempGiftModel = NSMutableArray()
            //: let tempDictM = NSMutableArray.init()
            let tempDictM = NSMutableArray()

            // 帝王礼物特效
            //: if  roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
            if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                // 开头动效
                //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                //: let tempArr = NSMutableArray.init()
                let tempArr = NSMutableArray()
                //: let tempDicArr = NSMutableArray.init()
                let tempDicArr = NSMutableArray()

                //: for giftStr in giftArr! {
                for giftStr in giftArr! {
                    //: let dictM = NSMutableDictionary.init(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)
                    //: dictM["fromUid"] = CompositionReactiveCompatible.share.loginUserMode.userID
                    dictM[(String(kClearlyId) + showInputAnimalData.replacingOccurrences(of: "makeup", with: "d"))] = CompositionReactiveCompatible.share.loginUserMode.userID
                    //: dictM["fromNickname"] = CompositionReactiveCompatible.share.loginUserMode.nickname
                    dictM[(String(kSegmentSuccessData.prefix(5)) + "icknam" + main_languageId.replacingOccurrences(of: "location", with: "e"))] = CompositionReactiveCompatible.share.loginUserMode.nickname
                    //: dictM["fromHeadPic"] = CompositionReactiveCompatible.share.loginUserMode.headPic
                    dictM[(user_handleStr.replacingOccurrences(of: "post", with: "fr") + String(data_minimizeUrl.suffix(4)) + "adPic")] = CompositionReactiveCompatible.share.loginUserMode.headPic
                    //: dictM["pid"] = "0" // 缓存兼容
                    dictM[(noti_relieveRefId.replacingOccurrences(of: "extra", with: "id"))] = "0" // 缓存兼容
                    //: dictM["num"] =  (roomGiftModel.giftNum)
                    dictM[(String(const_landName))] = (roomGiftModel.giftNum)
                    //: dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                    dictM[(userReplacementText.replacingOccurrences(of: "write", with: "n"))] = (String(kPrimaryUrl) + String(mainTowardAirData)).temporaryWorker(model.nickname)
                    //: if model.uid == "all" {
                    if model.uid == (String(noti_opportunityId)) {
                        //: dictM["pname"] = "Send to All Numbers".localized
                        dictM[(userReplacementText.replacingOccurrences(of: "write", with: "n"))] = (String(const_anyoneId) + constReportRequestFormTitle.replacingOccurrences(of: "asset", with: "rs")).localized
                    }
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(notiChildMessage))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(String(notiWorldKey.suffix(7)) + const_heartUrl.replacingOccurrences(of: "phase", with: "m"))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = giftStr
                    dictM[(String(kValidRocketData) + app_seatName.replacingOccurrences(of: "staff", with: "t"))] = giftStr
                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(kBubbleFormat.prefix(8)))] = (roomGiftModel.showType)
                    //: dictM["animationTimes"] = "1"
                    dictM[(app_fourId.replacingOccurrences(of: "reader", with: "m") + "ationTime" + String(kArmReMsg))] = "1"

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                    if let giftModel = JSONDeserializer<RecoverAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: return giftModel
                        return giftModel
                    }
                }
                // 循环播放次数
                //: var animationTimes = 1
                var animationTimes = 1
                //: if roomGiftModel.animationTimes > 0 {
                if roomGiftModel.animationTimes > 0 {
                    //: animationTimes = roomGiftModel.animationTimes
                    animationTimes = roomGiftModel.animationTimes
                    //: } else {
                } else {
                    //: animationTimes = roomGiftModel.giftNum
                    animationTimes = roomGiftModel.giftNum
                }
                //: let tempGiftArr = tempArr
                let tempGiftArr = tempArr
                //: for _ in 0..<animationTimes {
                for _ in 0 ..< animationTimes {
                    //: tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                    tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                    //: tempDictM.addObjects(from: tempDicArr as! [Any])
                    tempDictM.addObjects(from: tempDicArr as! [Any])
                }
                //: } else {
            } else {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)

                //: dictM["fromUid"] = CompositionReactiveCompatible.share.loginUserMode.userID
                dictM[(String(kClearlyId) + showInputAnimalData.replacingOccurrences(of: "makeup", with: "d"))] = CompositionReactiveCompatible.share.loginUserMode.userID
                //: dictM["fromNickname"] = CompositionReactiveCompatible.share.loginUserMode.nickname
                dictM[(String(kSegmentSuccessData.prefix(5)) + "icknam" + main_languageId.replacingOccurrences(of: "location", with: "e"))] = CompositionReactiveCompatible.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = CompositionReactiveCompatible.share.loginUserMode.headPic
                dictM[(user_handleStr.replacingOccurrences(of: "post", with: "fr") + String(data_minimizeUrl.suffix(4)) + "adPic")] = CompositionReactiveCompatible.share.loginUserMode.headPic

                //: dictM["pid"] = roomGiftModel.giftId
                dictM[(noti_relieveRefId.replacingOccurrences(of: "extra", with: "id"))] = roomGiftModel.giftId
                //: dictM["num"] =  (roomGiftModel.giftNum)
                dictM[(String(const_landName))] = (roomGiftModel.giftNum)
                // 显示送给谁
                //: dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                dictM[(userReplacementText.replacingOccurrences(of: "write", with: "n"))] = (String(kPrimaryUrl) + String(mainTowardAirData)).temporaryWorker(model.nickname)
                //: if model.uid == "all" {
                if model.uid == (String(noti_opportunityId)) {
                    //: dictM["pname"] = "Send to All Numbers".localized
                    dictM[(userReplacementText.replacingOccurrences(of: "write", with: "n"))] = (String(const_anyoneId) + constReportRequestFormTitle.replacingOccurrences(of: "asset", with: "rs")).localized
                }
                //: dictM["giftPic"] = roomGiftModel.imgPreview
                dictM[(String(notiChildMessage))] = roomGiftModel.imgPreview
                //: dictM["comboNum"] = (roomGiftModel.comboNum)
                dictM[(String(notiWorldKey.suffix(7)) + const_heartUrl.replacingOccurrences(of: "phase", with: "m"))] = (roomGiftModel.comboNum)
                //: dictM["iosEffect"] = effect
                dictM[(String(kValidRocketData) + app_seatName.replacingOccurrences(of: "staff", with: "t"))] = effect
                //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                dictM[(String(userUnitPhysicalTitle) + String(noti_bringText))] = roomGiftModel.iosVapEffect

                //: dictM["showType"] = (roomGiftModel.showType)
                dictM[(String(kBubbleFormat.prefix(8)))] = (roomGiftModel.showType)
                //: if (roomGiftModel.animationTimes > 0) {
                if roomGiftModel.animationTimes > 0 {
                    //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                    dictM[(app_fourId.replacingOccurrences(of: "reader", with: "m") + "ationTime" + String(kArmReMsg))] = (roomGiftModel.animationTimes)
                    //: } else {
                } else {
                    //: dictM["animationTimes"] = dictM["num"]
                    dictM[(app_fourId.replacingOccurrences(of: "reader", with: "m") + "ationTime" + String(kArmReMsg))] = dictM[(String(const_landName))]
                }

                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<RecoverAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: return giftModel
                    return giftModel
                }
            }
        }
        //: return nil
        return nil
    }

    /// 收到礼物消息的动效模型(私信收到)
    //: func addGiftAnimatModel(model: TalkingGiftMsgAnimatModel) {
    func modelBlind(model: RecoverAnimatModel) {
        //: animatArray.add(model)
        animatArray.add(model)
        //: judgePlay()
        occupation()
    }

    /// 收到礼物消息的动效组(私信收到)
    //: func addGiftAnimatModelArr(modelArr: Array<Any>) {
    func running(modelArr: [Any]) {
        //: animatArray.addObjects(from: modelArr)
        animatArray.addObjects(from: modelArr)
        //: judgePlay()
        occupation()
    }

    /// 获取剩余的动画队列
    //: func getLeftGiftAnimat() ->NSMutableArray {
    func announcementLength() -> NSMutableArray {
        //: let data = animatArray
        let data = animatArray
        //: animatArray.removeAllObjects()
        animatArray.removeAllObjects()
        //: isPlayAnimat = false
        isPlayAnimat = false
        //: return data
        return data
    }

    /// 初始化动画资源(针对通话的显示 最小化 关闭的切换)
    //: func initAnimatData(data: NSMutableArray) {
    func decisionName(data: NSMutableArray) {
        //: animatArray.removeAllObjects()
        animatArray.removeAllObjects()
        //: isPlayAnimat = false
        isPlayAnimat = false
        //: if data.count > 0 {
        if data.count > 0 {
            //: animatArray.addObjects(from: data as! [Any])
            animatArray.addObjects(from: data as! [Any])
        }
        //: judgePlay()
        occupation()
    }

    /// 根据会话id 将对应的缓存动画加进来

    //: func initCachAnimatData(tagetID: String) {
    func behindCos(tagetID: String) {
        //: let data = AbTalkingPrivateChatAnimatTool.shared.getConverCacheGiftAnimat(tagetId: tagetID)
        let data = FactorAnimatTool.shared.drawId(tagetId: tagetID)
        //: if data.count > 0 {
        if data.count > 0 {
            //: animatArray.addObjects(from: data as! [Any])
            animatArray.addObjects(from: data as! [Any])
        }
        //: judgePlay()
        occupation()
    }

    /// 判断是否要取数组动效 开始播放
    //: func judgePlay() {
    func occupation() {
        //: if animatArray.count>0 && isPlayAnimat == false {
        if animatArray.count > 0, isPlayAnimat == false {
            //: playNext()
            accountCount()
        }
    }

    /// 播放
    //: func playNext() {
    func accountCount() {
        //: if animatArray.count > 0 {
        if animatArray.count > 0 {
            //: var index = 0
            var index = 0
            //: animatArray.enumerateObjects { obj, idx, stop in
            animatArray.enumerateObjects { obj, idx, stop in
                // 盲盒礼物\帝王礼物 优先播放
                //: let model: TalkingGiftMsgAnimatModel = obj as! TalkingGiftMsgAnimatModel
                let model: RecoverAnimatModel = obj as! RecoverAnimatModel
                //: if (model.showType == ChatGiftAnimatType.myStery.rawValue || model.showType == ChatGiftAnimatType.king.rawValue) {
                if model.showType == MaximumAnimatType.myStery.rawValue || model.showType == MaximumAnimatType.king.rawValue {
                    //: index = idx
                    index = idx
                    //: stop.pointee = true
                    stop.pointee = true
                }
            }
            //: let giftModel = self.animatArray[index]
            let giftModel = self.animatArray[index]
            //: self.isPlayAnimat = true
            self.isPlayAnimat = true
            //: self.animatArray.removeObject(at: index)
            self.animatArray.removeObject(at: index)
            //: let iscanPlay = self.giftAnimatView.didReceiveMsgModel(msgModel: giftModel)
            let iscanPlay = self.giftAnimatView.haveAdmin(msgModel: giftModel)
            //: if !iscanPlay {
            if !iscanPlay {
                //: self.isPlayAnimat = false
                self.isPlayAnimat = false
                //: judgePlay()
                occupation()
            }
        }
    }

    //: override var contentMode: UIView.ContentMode {
    override var contentMode: UIView.ContentMode {
        //: didSet {
        didSet {
            //: self.giftAnimatView.contentMode = contentMode
            self.giftAnimatView.contentMode = contentMode
        }
    }
}

//: extension TalkingPrivateChatAnimatView {
extension RoundThen {
    // 添加视图
    //: private func setupSubviews() {
    private func source() {
        //: self.isUserInteractionEnabled = false
        self.isUserInteractionEnabled = false

        //: self.addSubview(giftAnimatView)
        self.addSubview(giftAnimatView)

        //: giftAnimatView.snp.makeConstraints { make in
        giftAnimatView.snp.makeConstraints { make in
            //: make.edges.equalTo(self)
            make.edges.equalTo(self)
        }
        //: giftAnimatView.animationFinishCallback = { [weak self] obj in
        giftAnimatView.animationFinishCallback = { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.isPlayAnimat = false
            self.isPlayAnimat = false
            //: self.playNext()
            self.accountCount()
        }

        //: giftAnimatView.finishAnimBlock = { [weak self] success in
        giftAnimatView.finishAnimBlock = { [weak self] success in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if !success {
            if !success {
                //: self.isPlayAnimat = false
                self.isPlayAnimat = false
                //: self.playNext()
                self.accountCount()
            }
        }
    }
}

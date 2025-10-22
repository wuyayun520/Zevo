
//: Declare String Begin

/*: "toUserInfo" :*/
fileprivate let dataNearText:String = "toUserlaugh restore book"
fileprivate let app_maleMsg:String = "Infotalk request ear"

/*: "toUid" :*/
fileprivate let const_carrierData:String = "toUidwelcome extent safety"

/*: "nickname" :*/
fileprivate let dataBurnKey:String = "nextendedc"
fileprivate let main_countId:String = "readyame"

/*: "headPic" :*/
fileprivate let constHoneyTitle:String = "HE"
fileprivate let showCurveCapableName:[Character] = ["a","d","P","i","c"]

/*: "sex" :*/
fileprivate let appStallName:String = "ssuccessfullyx"

/*: "age" :*/
fileprivate let notiWithinText:String = "agworld"

/*: "tpAuth" :*/
fileprivate let data_albumTellKitPath:String = "lite publication live country suspendtpAuth"

/*: "interest" :*/
fileprivate let const_workerName:[Character] = ["i","n"]
fileprivate let noti_exitUrl:String = "tgainrgainst"

/*: "picture" :*/
fileprivate let app_scriptMessage:[Character] = ["p","i","c","t","u","r"]
fileprivate let k_greetPath:String = "E"

/*: "loungePlus" :*/
fileprivate let data_requestStr:String = "happyoun"
fileprivate let dataTotalerruptMessage:[Character] = ["g","e","P","l","u","s"]

/*: "vipSkinId" :*/
fileprivate let noti_absolutePath:String = "income regainvipS"

/*: "voicePrice" :*/
fileprivate let data_viewInsideCanvasStr:String = "vtenderice"

/*: "videoPrice" :*/
fileprivate let k_animalTitle:String = "viddomaino"

/*: "voiceVIPPrice" :*/
fileprivate let constStandardCityValue:String = "carryic"
fileprivate let const_publicityTitle:String = "icmake"

/*: "videoVIPPrice" :*/
fileprivate let main_tarValue:String = "meetide"
fileprivate let mainPhenomenonText:String = "extension content centeroVIPPrice"

/*: "version" :*/
fileprivate let app_lovelyFormat:String = "versicurrent"
fileprivate let app_chooseHolderFormat:[Character] = ["n"]

/*: "headPicFrame" :*/
fileprivate let appHeMsg:[Character] = ["h","e","a","d","P","i","c","F","r","a","m","e"]

/*: "signature" :*/
fileprivate let noti_lensStackId:[Character] = ["s","i","g","n","a","t","u"]
fileprivate let show_communicateMsg:String = "rpopulation"

/*: "constellation" :*/
fileprivate let dataFormatMsg:[Character] = ["c","o","n","s","t","e","l","l","a","t","i","o","n"]

/*: "onlineStatus" :*/
fileprivate let user_disableName:String = "healthy"
fileprivate let appMatchFinishShutKey:[Character] = ["l","i","n","e","S","t","a","t","u","s"]

/*: "isNewUser" :*/
fileprivate let showSuperiorMsg:String = "isNewproperty magnitude control income a"
fileprivate let constSinceMsg:[Character] = ["U","s","e","r"]

/*: "isOfficial" :*/
fileprivate let app_ballData:[Character] = ["i","s","O","f","f","i","c"]
fileprivate let app_administrativeStr:String = "ispread"

/*: "userStatus" :*/
fileprivate let notiPublicationTitle:String = "process protocoluserS"
fileprivate let kOpId:String = "tatupetition"

/*: "remarkInfo" :*/
fileprivate let constActionPath:[Character] = ["r","e","m","a","r","k","I"]
fileprivate let k_beatData:String = "nfterms"

/*: "content" :*/
fileprivate let kDiskLickProposeText:String = "callegedtent"

/*: "top" :*/
fileprivate let noti_translationNativeEntryPath:[Character] = ["t","o","p"]

/*: "enableVideoCall" :*/
fileprivate let dataExerciseUrl:[Character] = ["e","n","a","b","l","e","V","i","d","e","o","C","a","l","l"]

/*: "voiceBean" :*/
fileprivate let appForwardStr:String = "voiaverage"
fileprivate let dataDisplayScriptThanksId:String = "eBeanrandom she team appropriate surgery"

/*: "videoBean" :*/
fileprivate let mainScheduleMsg:String = "capacity transfervideoBean"

/*: "prompt" :*/
fileprivate let userPermissionRejectKey:String = "PROMPT"

/*: "matchRate" :*/
fileprivate let mainBullMessage:[Character] = ["m","a","t","c","h","R","a","t"]
fileprivate let kWeeklyUrl:String = "daily"

/*: "existSess" :*/
fileprivate let const_currencyInformContent:[Character] = ["e"]
fileprivate let appTwoTitle:String = "xistSessglory equity mm recommendation bean"

/*: "totalIntimate" :*/
fileprivate let data_panelName:[Character] = ["t","o","t","a","l","I","n","t","i","m","a","t","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChinMeasurable.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/16.
//

//: import UIKit
import UIKit

//: @objcMembers
@objcMembers
//: public class ChinMeasurable: NSObject, HandyJSON {
public class ChinMeasurable: NSObject, HandyJSON {
    //: public var uid: String = ""
    public var uid: String = ""
    //: public var nickname: String = ""
    public var nickname: String = ""
    //: public var age: String = "0"
    public var age: String = "0"
    //: public var headPic: String = ""
    public var headPic: String = ""
    //: public var sex: String = "0"                   // 1 男性 2 女性
    public var sex: String = "0" // 1 男性 2 女性
    //: public var version: String = "0"               // 当前用户版本
    public var version: String = "0" // 当前用户版本

    //: var interest: Array<String> = []
    var interest: [String] = []
    //: var picture: Array<String> = []
    var picture: [String] = []
    //: public var tpAuth: Bool = false
    public var tpAuth: Bool = false // 是否认证
    //: var enableVideoCall = false
    var enableVideoCall = false // 是否展示视频通话按钮，默认否
    //: public var loungePlus: Bool = false
    public var loungePlus: Bool = false // 是否订阅
    //: var vipSkinId = 0
    var vipSkinId = 0 // vip皮肤id
    //: var voicePrice: String = ""             // 语音通话价格
    var voicePrice: String = "" // 语音通话价格
    //: var videoPrice: String = ""             // 视频通话价格
    var videoPrice: String = "" // 视频通话价格
    //: var videoVIPPrice: String = ""          // 视频通话VIP价格
    var videoVIPPrice: String = "" // 视频通话VIP价格
    //: var voiceVIPPrice: String = ""          // 语音通话VIP价格
    var voiceVIPPrice: String = "" // 语音通话VIP价格
    //: var videoBean: String = ""              // 视频通话获取积分（限女性）
    var videoBean: String = "" // 视频通话获取积分（限女性）
    //: var voiceBean: String = ""              // 语音通话获取积分（限女性）
    var voiceBean: String = "" // 语音通话获取积分（限女性）
    //: var prompt: String = ""                 // VIP折扣提醒（限女性）
    var prompt: String = "" // VIP折扣提醒（限女性）
    //: public var headPicFrame: String = ""    // 头像框
    public var headPicFrame: String = "" // 头像框
    //: var matchRate = 0
    var matchRate = 0 // 匹配度
    //: var signature: String = ""              // 签名
    var signature: String = "" // 签名
    //: var constellation: String = ""          // 星座
    var constellation: String = "" // 星座
    //: var existSess: Bool = false
    var existSess: Bool = false // false表示未建立会话
    //: var onlineStatus = 0
    var onlineStatus = 0 // 用户在线状态 1=在线 0=不在线
    //: var isNewUser = false
    var isNewUser = false // 是否新用户
    //: var isHaveSession = false
    var isHaveSession = false // 是否建立会话（本地自定义字段）
    //: public var isOfficial = false
    public var isOfficial = false // 是否官方账号
    //: var intimate = 0
    var intimate = 0 // 亲密度
    //: var intimateTime = 0
    var intimateTime = 0 // 亲密度保存时间
    //: var readReceiptTime = 0
    var readReceiptTime = 0 // 对方已读消息回执时间戳
    //: var userStatus = 1
    var userStatus = 1 // 用户状态 1正常2被禁言3被封号5被拉黑
    //: var content = ""                        // 置顶内容
    var content = "" // 置顶内容
    //: var top = 2
    var top = 2 // 是否置顶 1：置顶，2：否

    //: public required override init() {}
    override public required init() {}

    //: public class func func__transformedChatinfo(userDic: Dictionary<String, Any>) -> ChinMeasurable {
    public class func someRecommend(userDic: [String: Any]) -> ChinMeasurable {
        //: let wrap = ChinMeasurable.init()
        let wrap = ChinMeasurable()

        //: if userDic.keys.contains("toUserInfo") {
        if userDic.keys.contains((String(dataNearText.prefix(6)) + String(app_maleMsg.prefix(4)))) {
            //: let userInfoDic = userDic["toUserInfo"] as! Dictionary<String, Any>
            let userInfoDic = userDic[(String(dataNearText.prefix(6)) + String(app_maleMsg.prefix(4)))] as! [String: Any]
            //: if userInfoDic.keys.contains("toUid") {
            if userInfoDic.keys.contains((String(const_carrierData.prefix(5)))) {
                //: wrap.uid = "\(userInfoDic["toUid"] as! NSNumber)"
                wrap.uid = "\(userInfoDic[(String(const_carrierData.prefix(5)))] as! NSNumber)"
            }
            //: wrap.nickname = userInfoDic["nickname"] as? String ?? ""
            wrap.nickname = userInfoDic[(dataBurnKey.replacingOccurrences(of: "extended", with: "i") + main_countId.replacingOccurrences(of: "ready", with: "kn"))] as? String ?? ""
            //: wrap.headPic = userInfoDic["headPic"] as? String ?? ""
            wrap.headPic = userInfoDic[(constHoneyTitle.lowercased() + String(showCurveCapableName))] as? String ?? ""
            //: wrap.sex = userInfoDic["sex"] as? String ?? ""
            wrap.sex = userInfoDic[(appStallName.replacingOccurrences(of: "successfully", with: "e"))] as? String ?? ""
            //: wrap.age = "\(userInfoDic["age"] as? NSNumber ?? NSNumber.init())"
            wrap.age = "\(userInfoDic[(notiWithinText.replacingOccurrences(of: "world", with: "e"))] as? NSNumber ?? NSNumber())"
            //: wrap.tpAuth = userInfoDic["tpAuth"] as? Bool ?? false
            wrap.tpAuth = userInfoDic[(String(data_albumTellKitPath.suffix(6)))] as? Bool ?? false
            //: wrap.interest = userInfoDic["interest"] as? Array<String> ?? [""]
            wrap.interest = userInfoDic[(String(const_workerName) + noti_exitUrl.replacingOccurrences(of: "gain", with: "e"))] as? [String] ?? [""]
            //: wrap.picture = userInfoDic["picture"] as? Array<String> ?? [""]
            wrap.picture = userInfoDic[(String(app_scriptMessage) + k_greetPath.lowercased())] as? [String] ?? [""]
            //: wrap.loungePlus = userInfoDic["loungePlus"] as? Bool ?? false
            wrap.loungePlus = userInfoDic[(data_requestStr.replacingOccurrences(of: "happy", with: "l") + String(dataTotalerruptMessage))] as? Bool ?? false
            //: wrap.vipSkinId = userInfoDic["vipSkinId"] as? Int ?? 0
            wrap.vipSkinId = userInfoDic[(String(noti_absolutePath.suffix(4)) + "kinId")] as? Int ?? 0
            //: wrap.voicePrice = userInfoDic["voicePrice"] as? String ?? ""
            wrap.voicePrice = userInfoDic[(data_viewInsideCanvasStr.replacingOccurrences(of: "tender", with: "o") + "Price")] as? String ?? ""
            //: wrap.videoPrice = userInfoDic["videoPrice"] as? String ?? ""
            wrap.videoPrice = userInfoDic[(k_animalTitle.replacingOccurrences(of: "domain", with: "e") + "Price")] as? String ?? ""
            //: wrap.voiceVIPPrice = userInfoDic["voiceVIPPrice"] as? String ?? ""
            wrap.voiceVIPPrice = userInfoDic[(constStandardCityValue.replacingOccurrences(of: "carry", with: "vo") + "eVIPPr" + const_publicityTitle.replacingOccurrences(of: "make", with: "e"))] as? String ?? ""
            //: wrap.videoVIPPrice = userInfoDic["videoVIPPrice"] as? String ?? ""
            wrap.videoVIPPrice = userInfoDic[(main_tarValue.replacingOccurrences(of: "meet", with: "v") + String(mainPhenomenonText.suffix(9)))] as? String ?? ""
            //: wrap.version = userInfoDic["version"] as? String ?? ""
            wrap.version = userInfoDic[(app_lovelyFormat.replacingOccurrences(of: "current", with: "o") + String(app_chooseHolderFormat))] as? String ?? ""
            //: wrap.headPicFrame = userInfoDic["headPicFrame"] as? String ?? ""
            wrap.headPicFrame = userInfoDic[(String(appHeMsg))] as? String ?? ""
            //: wrap.signature = userInfoDic["signature"] as? String ?? ""
            wrap.signature = userInfoDic[(String(noti_lensStackId) + show_communicateMsg.replacingOccurrences(of: "population", with: "e"))] as? String ?? ""
            //: wrap.constellation = userInfoDic["constellation"] as? String ?? ""
            wrap.constellation = userInfoDic[(String(dataFormatMsg))] as? String ?? ""
            //: wrap.onlineStatus = userInfoDic["onlineStatus"] as! Int
            wrap.onlineStatus = userInfoDic[(user_disableName.replacingOccurrences(of: "healthy", with: "on") + String(appMatchFinishShutKey))] as! Int
            //: wrap.isNewUser = userInfoDic["isNewUser"] as? Bool ?? false
            wrap.isNewUser = userInfoDic[(String(showSuperiorMsg.prefix(5)) + String(constSinceMsg))] as? Bool ?? false
            //: wrap.isOfficial = userInfoDic["isOfficial"] as? Bool ?? false
            wrap.isOfficial = userInfoDic[(String(app_ballData) + app_administrativeStr.replacingOccurrences(of: "spread", with: "al"))] as? Bool ?? false
            //: wrap.userStatus = userInfoDic["userStatus"] as? Int ?? 1
            wrap.userStatus = userInfoDic[(String(notiPublicationTitle.suffix(5)) + kOpId.replacingOccurrences(of: "petition", with: "s"))] as? Int ?? 1
        }
        //: if userDic.keys.contains("remarkInfo") { // 备注相关
        if userDic.keys.contains((String(constActionPath) + k_beatData.replacingOccurrences(of: "terms", with: "o"))) { // 备注相关
            //: let remarkDict = userDic["remarkInfo"] as! [String: Any]
            let remarkDict = userDic[(String(constActionPath) + k_beatData.replacingOccurrences(of: "terms", with: "o"))] as! [String: Any]
            //: wrap.content = remarkDict["content"] as? String ?? ""
            wrap.content = remarkDict[(kDiskLickProposeText.replacingOccurrences(of: "alleged", with: "on"))] as? String ?? ""
            //: wrap.top = remarkDict["top"] as? Int ?? 2
            wrap.top = remarkDict[(String(noti_translationNativeEntryPath))] as? Int ?? 2
        }
        //: if userDic.keys.contains("enableVideoCall") {
        if userDic.keys.contains((String(dataExerciseUrl))) {
            //: wrap.enableVideoCall = userDic["enableVideoCall"] as! Bool
            wrap.enableVideoCall = userDic[(String(dataExerciseUrl))] as! Bool
        }
        //: if userDic.keys.contains("voiceBean") {
        if userDic.keys.contains((appForwardStr.replacingOccurrences(of: "average", with: "c") + String(dataDisplayScriptThanksId.prefix(5)))) {
            //: wrap.voiceBean = userDic["voiceBean"] as! String
            wrap.voiceBean = userDic[(appForwardStr.replacingOccurrences(of: "average", with: "c") + String(dataDisplayScriptThanksId.prefix(5)))] as! String
        }
        //: if userDic.keys.contains("videoBean") {
        if userDic.keys.contains((String(mainScheduleMsg.suffix(9)))) {
            //: wrap.videoBean =  userDic["videoBean"] as! String
            wrap.videoBean = userDic[(String(mainScheduleMsg.suffix(9)))] as! String
        }
        //: if userDic.keys.contains("prompt") {
        if userDic.keys.contains((userPermissionRejectKey.lowercased())) {
            //: wrap.prompt = userDic["prompt"] as! String
            wrap.prompt = userDic[(userPermissionRejectKey.lowercased())] as! String
        }
        //: if userDic.keys.contains("matchRate") {
        if userDic.keys.contains((String(mainBullMessage) + kWeeklyUrl.replacingOccurrences(of: "daily", with: "e"))) {
            //: wrap.matchRate =  userDic["matchRate"] as! Int
            wrap.matchRate = userDic[(String(mainBullMessage) + kWeeklyUrl.replacingOccurrences(of: "daily", with: "e"))] as! Int
        }
        //: if userDic.keys.contains("existSess") {
        if userDic.keys.contains((String(const_currencyInformContent) + String(appTwoTitle.prefix(8)))) {
            //: wrap.existSess = userDic["existSess"] as? Bool ?? false
            wrap.existSess = userDic[(String(const_currencyInformContent) + String(appTwoTitle.prefix(8)))] as? Bool ?? false
        }
        //: if userDic.keys.contains("totalIntimate") {
        if userDic.keys.contains((String(data_panelName))) {
            //: wrap.intimate = userDic["totalIntimate"] as? Int ?? 0
            wrap.intimate = userDic[(String(data_panelName))] as? Int ?? 0
        }
        //: return wrap
        return wrap
    }
}


//: Declare String Begin

/*: "className" :*/
fileprivate let mainNoUrl:String = "CLASS"

/*: "nativeClassName" :*/
fileprivate let kCollectStrengthMsg:String = "duringative"

/*: "effectType" :*/
fileprivate let main_remarkId:[Character] = ["e","f","f","e","c","t","T","y","p","e"]

/*: "gifFile" :*/
fileprivate let noti_normallyPerformAPath:[Character] = ["g","i"]
fileprivate let mainRevenuePlantName:[Character] = ["f","F","i","l","e"]

/*: "versions" :*/
fileprivate let showLayName:String = "venothingsion"
fileprivate let appDitData:String = "selected"

/*: "config" :*/
fileprivate let main_deliverMsg:[Character] = ["c"]
fileprivate let show_genderSubUrl:String = "onfball"

/*: "mainFile" :*/
fileprivate let k_canvasRemoteKey:String = "possibility worldwide reservemainFi"
fileprivate let constBringFormat:[Character] = ["l","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  InformationMeasurable.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/9.
//

//: import UIKit
import UIKit

//: enum TalkingGiftAnimatType: String {
enum SpeakDirtyOutputStream: String {
    //: case Gif  = "gif"
    case Gif = "gif"
    //: case Chat = "chatGift"
    case Chat = "chatGift"
}

//: enum GiftAnimatUpdateError: Int {
enum LivingWidthTotal: Int {
    //: case UnzipFailed  = -1001
    case UnzipFailed = -1001 // 资源 解压失败
    //: case VerifyFailed = -1002
    case VerifyFailed = -1002 // 资源 校验失败
    //: case DownLoadFailed = -1003
    case DownLoadFailed = -1003 // 资源 下载失败
}

//: enum TalkingAnimatType: Int {
enum RetrieveEquatable: Int {
    //: case Unknown  = 0
    case Unknown = 0
    //: case Gift = 1
    case Gift = 1 // 礼物动效
}

/// 动效资源的信息封装，对应一个zip资源的config.json

//: struct TalkingGiftAnimatModel: HandyJSON {
struct InformationMeasurable: HandyJSON {
    //: init() {
    init() {}

    //: var className = ""
    var className = ""
    //: var nativeClassName = ""
    var nativeClassName = ""
    //: var effectType = TalkingGiftAnimatType.Gif
    var effectType = SpeakDirtyOutputStream.Gif /// 加载动效指定的类型
    //: var mainFile = ""
    var mainFile = ""
    //: var effectConfig = Dictionary<String, Any>()
    var effectConfig = [String: Any]()
}

//: extension TalkingGiftAnimatModel {
extension InformationMeasurable {
    //: func setAnimatModek(dic: NSDictionary) -> TalkingGiftAnimatModel {
    func tillUs(dic: NSDictionary) -> InformationMeasurable {
        //: var model =  TalkingGiftAnimatModel.init()
        var model = InformationMeasurable()
        //: model.className = dic["className"] as? String ?? ""
        model.className = dic[(mainNoUrl.lowercased() + "Name")] as? String ?? ""
        //: model.nativeClassName = dic["nativeClassName"] as? String ?? ""
        model.nativeClassName = dic[(kCollectStrengthMsg.replacingOccurrences(of: "during", with: "n") + "ClassName")] as? String ?? ""
        //: model.effectType = dic["effectType"] as? TalkingGiftAnimatType ?? TalkingGiftAnimatType.Gif
        model.effectType = dic[(String(main_remarkId))] as? SpeakDirtyOutputStream ?? SpeakDirtyOutputStream.Gif

        //: if model.effectType == .Gif {
        if model.effectType == .Gif {
            //: model.mainFile = dic["gifFile"] as? String ?? ""
            model.mainFile = dic[(String(noti_normallyPerformAPath) + String(mainRevenuePlantName))] as? String ?? ""
            //: } else {
        } else {
            //: model.mainFile = dic[TalkingGiftAnimatType.Chat.rawValue] as? String ?? ""
            model.mainFile = dic[SpeakDirtyOutputStream.Chat.rawValue] as? String ?? ""
        }
        //: let versions: Array = dic["versions"] as! Array<Dictionary<String, Any>>
        let versions: Array = dic[(showLayName.replacingOccurrences(of: "nothing", with: "r") + appDitData.replacingOccurrences(of: "selected", with: "s"))] as! [[String: Any]]
        //: if versions.count <= 0 {
        if versions.count <= 0 {
            //: return model
            return model
        }
        //: let match = true
        let match = true
        /*!
         * 遍历versions数组，匹配应用版本，匹配到则使用config数据
         */
        //: for item in versions {
        for item in versions {
            //: model.effectConfig = item["config"] as! [String: Any]
            model.effectConfig = item[(String(main_deliverMsg) + show_genderSubUrl.replacingOccurrences(of: "ball", with: "ig"))] as! [String: Any]
        }
        //: if (match) {
        if match {
            //: model.className       = model.effectConfig["className"] as? String ?? ""
            model.className = model.effectConfig[(mainNoUrl.lowercased() + "Name")] as? String ?? ""
            //: model.nativeClassName = model.effectConfig["nativeClassName"] as? String ?? ""
            model.nativeClassName = model.effectConfig[(kCollectStrengthMsg.replacingOccurrences(of: "during", with: "n") + "ClassName")] as? String ?? ""
            //: model.effectType      = model.effectConfig["effectType"] as? TalkingGiftAnimatType ?? TalkingGiftAnimatType.Gif
            model.effectType = model.effectConfig[(String(main_remarkId))] as? SpeakDirtyOutputStream ?? SpeakDirtyOutputStream.Gif
            //: model.mainFile        = model.effectConfig["mainFile"] as? String ?? ""
            model.mainFile = model.effectConfig[(String(k_canvasRemoteKey.suffix(6)) + String(constBringFormat))] as? String ?? ""
        }
        //: return model
        return model
    }
}

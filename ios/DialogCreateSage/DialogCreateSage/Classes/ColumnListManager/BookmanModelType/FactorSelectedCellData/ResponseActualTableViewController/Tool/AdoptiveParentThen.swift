
//: Declare String Begin

/*: "msgType" :*/
fileprivate let const_aliveKey:[Character] = ["m","s","g","T","y","p","e"]

/*: "audio" :*/
fileprivate let userPublicationData:String = "abodyio"

/*: "contentType" :*/
fileprivate let k_displayMsg:String = "contfloorn"
fileprivate let showSingleId:String = "sneak"

/*: "AudioMsg" :*/
fileprivate let dataNoFormat:String = "world hugeAudioMsg"

/*: "audioData" :*/
fileprivate let showRateValue:[Character] = ["a","u","d","i","o","D","a"]
fileprivate let appMobileValue:String = "jump"

/*: "audioUri" :*/
fileprivate let appEffName:String = "unknown slowaudioUri"

/*: " customElem.data is error" :*/
fileprivate let notiCoverTrackTitle:[Character] = [" ","c","u","s","t","o","m","E","l","e","m",".","d","a"]
fileprivate let kRangeKey:String = "ta ifinger every indicator prompt"
fileprivate let notiOvalKey:String = "ember isolate progress clings error"

/*: "extra" :*/
fileprivate let dataLibraryKey:String = "eunknowntra"

/*: "msgInfo" :*/
fileprivate let appStreetData:String = "leave maybemsgInfo"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AdoptiveParentThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/12.
//

//: import Foundation
import Foundation

//: public class AdoptiveParentThen: NSObject {
public class AdoptiveParentThen: NSObject {
    //: @objc class public func parseTXMessageData(data: Data)-> Dictionary<String, Any> {
    @objc public class func adjust(data: Data) -> [String: Any] {
        //: let dict = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers)
        let dict = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers)
        //: if dict != nil {
        if dict != nil {
            //: return (dict as! NSDictionary) as! Dictionary<String, Any>
            return (dict as! NSDictionary) as! [String: Any]
        }
        //: return NSDictionary() as! Dictionary<String, Any>
        return NSDictionary() as! [String: Any]
    }
}

//: extension AdoptiveParentThen {
extension AdoptiveParentThen {
    //: class func getMessageInsertTime() -> Double {
    class func todayTo() -> Double {
        //: var timeStamp: Double = 0
        var timeStamp: Double = 0
        //: let curDate = Date().timeIntervalSince1970
        let curDate = Date().timeIntervalSince1970
        //: let msInterval = floor(curDate * 1000)
        let msInterval = floor(curDate * 1000)
        //: var deltaTime = Double(V2TIMManager.sharedInstance().getServerTime())
        var deltaTime = Double(V2TIMManager.sharedInstance().getServerTime()) // 秒为单位
        //: if deltaTime<1 {
        if deltaTime < 1 {
            //: deltaTime = 0
            deltaTime = 0
        }
        //: timeStamp = msInterval-deltaTime
        timeStamp = msInterval - deltaTime
        //: return timeStamp
        return timeStamp
    }

    //: class func checkVoiceJsonMsg(msginfo: [String: JSON]) -> Bool {
    class func exMsginfo(msginfo: [String: JSON]) -> Bool {
        //: let msgType = msginfo["msgType"]?.stringValue ?? ""
        let msgType = msginfo[(String(const_aliveKey))]?.stringValue ?? ""
        //: if msgType == "audio" {
        if msgType == (userPublicationData.replacingOccurrences(of: "body", with: "ud")) {
            //: return true
            return true
        }
        //: let contentType = msginfo["contentType"]?.stringValue ?? ""
        let contentType = msginfo[(k_displayMsg.replacingOccurrences(of: "floor", with: "e") + "tTyp" + showSingleId.replacingOccurrences(of: "sneak", with: "e"))]?.stringValue ?? ""
        //: if contentType == "AudioMsg" {
        if contentType == (String(dataNoFormat.suffix(8))) {
            //: return true
            return true
        }
        //: let audioData = msginfo["audioData"]?.stringValue ?? ""
        let audioData = msginfo[(String(showRateValue) + appMobileValue.replacingOccurrences(of: "jump", with: "ta"))]?.stringValue ?? ""
        //: if  audioData.isEmptyString == false {
        if audioData.isEmptyString == false {
            //: return true
            return true
        }

        //: let audioUri = msginfo["audioUri"]?.stringValue ?? ""
        let audioUri = msginfo[(String(appEffName.suffix(8)))]?.stringValue ?? ""
        //: if audioUri.isEmptyString == false {
        if audioUri.isEmptyString == false {
            //: return true
            return true
        }
        //: return false
        return false
    }

    //: class func checkVoiceMessage(message: V2TIMMessage) -> Bool {
    class func packet(message: V2TIMMessage) -> Bool {
        //: guard let extra = String(data: message.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: message.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(notiCoverTrackTitle) + String(kRangeKey.prefix(4)) + String(notiOvalKey.suffix(7))))
            //: return false
            return false
        }
        //: let json = JSON(parseJSON: extra)
        let json = JSON(parseJSON: extra)
        //: let extraDic = json["extra"]
        let extraDic = json[(dataLibraryKey.replacingOccurrences(of: "unknown", with: "x"))]
        //: let msgInfo = extraDic["msgInfo"]
        let msgInfo = extraDic[(String(appStreetData.suffix(7)))]
        //: return checkVoiceJsonMsg(msginfo: msgInfo.dictionaryValue)
        return exMsginfo(msginfo: msgInfo.dictionaryValue)
    }

    //: @objc class public func checkVoiceMsg(msginfo: [String: Any]) -> Bool {
    @objc public class func openUpMsginfo(msginfo: [String: Any]) -> Bool {
        //: if msginfo.keys.contains("msgType") {
        if msginfo.keys.contains((String(const_aliveKey))) {
            //: let msgType = msginfo["msgType"] as? String
            let msgType = msginfo[(String(const_aliveKey))] as? String
            //: if msgType == "audio" {
            if msgType == (userPublicationData.replacingOccurrences(of: "body", with: "ud")) {
                //: return true
                return true
            }
        }
        //: if msginfo.keys.contains("contentType") {
        if msginfo.keys.contains((k_displayMsg.replacingOccurrences(of: "floor", with: "e") + "tTyp" + showSingleId.replacingOccurrences(of: "sneak", with: "e"))) {
            //: let contentType = msginfo["contentType"] as? String
            let contentType = msginfo[(k_displayMsg.replacingOccurrences(of: "floor", with: "e") + "tTyp" + showSingleId.replacingOccurrences(of: "sneak", with: "e"))] as? String
            //: if contentType == "AudioMsg" {
            if contentType == (String(dataNoFormat.suffix(8))) {
                //: return true
                return true
            }
        }
        //: if msginfo.keys.contains("audioData") {
        if msginfo.keys.contains((String(showRateValue) + appMobileValue.replacingOccurrences(of: "jump", with: "ta"))) {
            //: let audioData = msginfo["audioData"] as? String
            let audioData = msginfo[(String(showRateValue) + appMobileValue.replacingOccurrences(of: "jump", with: "ta"))] as? String
            //: if !audioData!.isEmptyString {
            if !audioData!.isEmptyString {
                //: return true
                return true
            }
        }
        //: if msginfo.keys.contains("audioUri") {
        if msginfo.keys.contains((String(appEffName.suffix(8)))) {
            //: let audioUri = msginfo["audioUri"] as? String
            let audioUri = msginfo[(String(appEffName.suffix(8)))] as? String
            //: if !audioUri!.isEmptyString {
            if !audioUri!.isEmptyString {
                //: return true
                return true
            }
        }
        //: return false
        return false
    }
}

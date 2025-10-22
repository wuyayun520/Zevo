
//: Declare String Begin

/*: "V4ujGjsNUl6RvgjvgD6m91" :*/
fileprivate let user_botTitle:String = "V4ujGsuccessfully opening house healthy"
fileprivate let app_creationText:String = "perform negativeRvgjvg"
fileprivate let dataMinimizeTitle:String = "D6m91delay sea create who miss"

/*: "data/index" :*/
fileprivate let main_cloudWaitUrl:String = "data/imerge combined"

/*: "toUid" :*/
fileprivate let dataBeneathMessage:String = "coat contact firmtoUid"

/*: "uid" :*/
fileprivate let notiHoneyTempMessage:String = "umakeupd"

/*: "POST" :*/
fileprivate let show_circleFormat:[Character] = ["P","O","S","T"]

/*: "Token" :*/
fileprivate let kAnalysisData:String = "future drag sense destroy selectionToken"

/*: "无法解析出JSON字符串" :*/
fileprivate let user_activeMessage:[Character] = ["无","\u{6cd5}","解","析","出","J","S","O","N","字","\u{7b26}","串"]

/*: "plat" :*/
fileprivate let const_priceUrl:String = "plawithout"

/*: "ios" :*/
fileprivate let appNumberName:String = "IOS"

/*: "packageId" :*/
fileprivate let app_wholePiPath:[Character] = ["p","a","c","k","a","g","e","I","d"]

/*: "channel" :*/
fileprivate let const_firstHumanFruitKey:[Character] = ["c","h","a","n","n","e","l"]

/*: "type" :*/
fileprivate let user_particleStr:String = "rangeype"

/*: "stat" :*/
fileprivate let dataBaseballStr:String = "stquantityt"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ExecFormalRecordManage.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/19.
//

//: import Alamofire
import Alamofire
//: import UIKit
import UIKit

//: let uploadRecord = UploadRecordManage()
let noti_liveLevelUrl = ExecFormalRecordManage()
//: let TokenSaltStr = "V4ujGjsNUl6RvgjvgD6m91"
let dataHomeMsg = (String(user_botTitle.prefix(5)) + "jsNUl6" + String(app_creationText.suffix(6)) + String(dataMinimizeTitle.prefix(5)))

//: class UploadRecordManage: NSObject {
class ExecFormalRecordManage: NSObject {
    //: public func uploadRecordEvent(eventID: String, toUid: String? = nil, jsonStr: String? = nil) {
    public func recordGender(eventID: String, toUid: String? = nil, jsonStr: String? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestPath = "data/index"
        reqModel.requestPath = (String(main_cloudWaitUrl.prefix(6)) + "ndex")
        //: reqModel.requestServer = CompositionReactiveCompatible.share.appConfigMode.reportDomain
        reqModel.requestServer = CompositionReactiveCompatible.share.appConfigMode.reportDomain
        //: var dict = self.getUploadInfoDict()
        var dict = self.outputDict()
        //: dict["e"] = eventID /// 事件关键字
        dict["e"] = eventID /// 事件关键字
        //: if jsonStr?.count ?? 0 > 0 {
        if jsonStr?.count ?? 0 > 0 {
            //: dict["c"] = NSDictionary.dictionary(withJsonString: jsonStr)
            dict["c"] = NSDictionary.progressModelOffer(withJsonString: jsonStr)
            //: } else {
        } else {
            //: var messageDic = [String: Any]()
            var messageDic = [String: Any]()
            //: if toUid?.count ?? 0 > 0 {
            if toUid?.count ?? 0 > 0 {
                //: messageDic["toUid"] = toUid
                messageDic[(String(dataBeneathMessage.suffix(5)))] = toUid
            }
            //: messageDic["uid"] = CompositionReactiveCompatible.share.loginUserMode.userID
            messageDic[(notiHoneyTempMessage.replacingOccurrences(of: "makeup", with: "i"))] = CompositionReactiveCompatible.share.loginUserMode.userID
            //: dict["c"] = messageDic /// 事件详细内容
            dict["c"] = messageDic /// 事件详细内容
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: self.uploadRecordRequest(model: reqModel) { succeed, _, _ in
        self.accountFitModelRequestUpload(model: reqModel) { succeed, _, _ in
            //: if succeed {}
            if succeed {}
        }
    }

    //: public func uploadRecordEvent(eventID: String, parameterStr: [String: Any]) {
    public func pendingConfirm(eventID: String, parameterStr: [String: Any]) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestPath = "data/index"
        reqModel.requestPath = (String(main_cloudWaitUrl.prefix(6)) + "ndex")
        //: reqModel.requestServer = CompositionReactiveCompatible.share.appConfigMode.reportDomain
        reqModel.requestServer = CompositionReactiveCompatible.share.appConfigMode.reportDomain
        //: var dict = self.getUploadInfoDict()
        var dict = self.outputDict()
        //: dict["e"] = eventID /// 事件关键字
        dict["e"] = eventID /// 事件关键字
        //: let messageDic = NSMutableDictionary(dictionary: parameterStr)
        let messageDic = NSMutableDictionary(dictionary: parameterStr)
        //: messageDic["uid"] = CompositionReactiveCompatible.share.loginUserMode.userID
        messageDic[(notiHoneyTempMessage.replacingOccurrences(of: "makeup", with: "i"))] = CompositionReactiveCompatible.share.loginUserMode.userID
        //: dict["c"] = messageDic /// 事件详细内容
        dict["c"] = messageDic /// 事件详细内容
        //: reqModel.params = dict
        reqModel.params = dict
        //: self.uploadRecordRequest(model: reqModel) { succeed, _, _ in
        self.accountFitModelRequestUpload(model: reqModel) { succeed, _, _ in
            //: if succeed {}
            if succeed {}
        }
    }

    //: public func uploadRecordRequest(model: TalkingRequestModel, completion: @escaping FinishBlock) {
    public func accountFitModelRequestUpload(model: RoundReactiveCompatible, completion _: @escaping FinishBlock) {
        //: let serverUrl = GJ.buildServerUrl(model: model)
        let serverUrl = constNextKey.alongModel(model: model)

        //: let token = NSDate.getCurrentTimeStamp()
        let token = NSDate.duringDirection()

        //: let request = NSMutableURLRequest()
        let request = NSMutableURLRequest()
        //: request.httpMethod = "POST"
        request.httpMethod = (String(show_circleFormat))
        //: request.url = NSURL(string: serverUrl) as URL?
        request.url = NSURL(string: serverUrl) as URL?
        //: request.timeoutInterval = 30
        request.timeoutInterval = 30
//        request.setValue("keep-alive", forHTTPHeaderField: "Connection")
//        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        //: request.setValue(token, forHTTPHeaderField: "Token")
        request.setValue(token, forHTTPHeaderField: (String(kAnalysisData.suffix(5))))

        //: let key = token.appendingFormat("%@", TokenSaltStr)
        let key = token.appendingFormat("%@", dataHomeMsg)
        //: let bodyString = self.getJSONStringFromDictionary(model.params as NSDictionary)
        let bodyString = self.statRating(model.params as NSDictionary)
        //: let encryStr = bodyString.encrypt(withKey: key)
        let encryStr = bodyString.bottom(key)
        //: request.httpBody = encryStr?.data(using: .utf8)
        request.httpBody = encryStr?.data(using: .utf8)
        //: let session = URLSession.shared
        let session = URLSession.shared
        //: let datatask = session.dataTask(with: request as URLRequest) { data, _, error in
        let datatask = session.dataTask(with: request as URLRequest) { data, _, error in
            //: if error != nil {
            if error != nil {
                //: print(error ?? "")
                //: } else {
            } else {
                //: let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
                let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
                //: if let responseModel = JSONDeserializer<TalkingBaseResponse>.deserializeFrom(json: jsonStr as String?) {
                if let responseModel = JSONDeserializer<MisestimationModelType>.deserializeFrom(json: jsonStr as String?) {
                    //: print(responseModel)
                }
            }
        }
        //: datatask.resume()
        datatask.resume()
    }

    //: func getJSONStringFromDictionary(_ dictionary: NSDictionary) -> String {
    func statRating(_ dictionary: NSDictionary) -> String {
        //: if !JSONSerialization.isValidJSONObject(dictionary) {
        if !JSONSerialization.isValidJSONObject(dictionary) {
            //: printLog(message: "无法解析出JSON字符串")
            printLog(message: (String(user_activeMessage)))
            //: return String()
            return String()
        }
        //: let data: NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData?
        let data: NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData?
        //: let JSONString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)
        let JSONString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)
        //: return JSONString! as String
        return JSONString! as String
    }
}

//: extension UploadRecordManage {
extension ExecFormalRecordManage {
    /// 获取上报字典信息
    //: private func getUploadInfoDict() -> [String: Any] {
    private func outputDict() -> [String: Any] {
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["plat"] = "ios" /// 客户端平台
        dict[(const_priceUrl.replacingOccurrences(of: "without", with: "t"))] = (appNumberName.lowercased()) /// 客户端平台
        //: dict["packageId"] = PackageID /// 分包号
        dict[(String(app_wholePiPath))] = kLogData /// 分包号
        //: dict["v"] = AppNetVersion /// 客户端版本
        dict["v"] = mainControlUrl /// 客户端版本
        //: dict["t"] = NSDate.getCurrentTimeStamp() /// 事件发生的时间
        dict["t"] = NSDate.duringDirection() /// 事件发生的时间
        //: dict["channel"] = PackageID /// 渠道代号,ios默认和packageId 相同
        dict[(String(const_firstHumanFruitKey))] = kLogData /// 渠道代号,ios默认和packageId 相同
        //: dict["type"] = "stat" /// 上报类型(stat埋点上报、pfm性能指标)
        dict[(user_particleStr.replacingOccurrences(of: "range", with: "t"))] = (dataBaseballStr.replacingOccurrences(of: "quantity", with: "a")) /// 上报类型(stat埋点上报、pfm性能指标)
        //: return dict
        return dict
    }
}

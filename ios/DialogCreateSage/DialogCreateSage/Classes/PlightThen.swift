
//: Declare String Begin

/*: "app/getConfig" :*/
fileprivate let mainWeatherName:String = "aanother"
fileprivate let show_eliteTitle:String = "p/gethis dismiss user sum"

/*: "mf/user/getMyInfo" :*/
fileprivate let show_actualValue:[Character] = ["m","f","/","u","s","e","r","/","g","e","t","M","y","I","n","f","o"]

/*: "mf/user/getInfoColumn" :*/
fileprivate let userPanShutGenreFormat:String = "mf/usquote suspend promotion prise"
fileprivate let main_evaluateMessage:[Character] = ["e","t","I","n","f","o","C","o","l","u","m","n"]

/*: "mfCoin" :*/
fileprivate let noti_statusText:[Character] = ["m","f","C","o","i"]
fileprivate let appOpportunityData:String = "action"

/*: "mf/index/getConfig" :*/
fileprivate let notiMaybeValue:[Character] = ["m","f","/","i","n","d","e","x","/","g","e","t","C"]
fileprivate let notiOuterFinishZzFormat:String = "onfiping"

/*: "baseinfo =  :*/
fileprivate let userMemoryPerformKey:String = "BASEINF"
fileprivate let showDistantText:[Character] = ["o"," ","="," "]

/*: "UserBasicInfoSetting" :*/
fileprivate let showAddedSinceMsg:String = "lose suite relation hockeyUser"
fileprivate let kYesPath:String = "beauty hockeyInfoSe"
fileprivate let main_ableKey:[Character] = ["g"]

/*: "/userTag.json" :*/
fileprivate let mainGraduateName:[Character] = ["/","u","s","e","r","T","a","g",".","j","s"]
fileprivate let main_technologyData:[Character] = ["o","n"]

/*: "json 解析失败" :*/
fileprivate let noti_linePriorityKey:[Character] = ["j","s"]
fileprivate let mainEquallyYellowMsg:[Character] = ["o","n"," ","\u{89e3}","析","\u{5931}","败"]

/*: "app/reportDeviceId" :*/
fileprivate let data_exposureMsg:String = "app/repocarve somebody"
fileprivate let main_lackName:[Character] = ["r","t","D"]
fileprivate let kTradeName:[Character] = ["e","v","i","c","e","I","d"]

/*: "token" :*/
fileprivate let noti_sightKey:[UInt8] = [0x6e,0x65,0x6b,0x6f,0x74]

/*: "app/reportFcmPushToken" :*/
fileprivate let userMultipleKey:[Character] = ["a","p","p","/","r","e","p","o","r","t","F","c","m","P","u","s","h","T","o","k","e"]
fileprivate let constKingMsg:String = "compute"

/*: "app/init" :*/
fileprivate let appHighlightPath:String = "app/iyesterday mode straight nor pop"
fileprivate let noti_lineUrl:String = "NIT"

/*: "app/ping" :*/
fileprivate let main_groundFormat:String = "resign zone weekly yourapp/pi"
fileprivate let const_gloryValue:String = "NG"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PlightThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/3/25.
//

//: import Adjust
import Adjust
//: import Alamofire
import Alamofire
//: import FirebaseMessaging
import FirebaseMessaging
//: import UIKit
import UIKit

//: var isRequestingInit = false
var constListMessage = false

//: var isRetryDeviceIdTime = 3.0
var kLastValue = 3.0

//: class AppManagerRequest: NSObject {
class PlightThen: NSObject {
    /// 请求app配置信息【无需登录】
    //: class func requestAppConfig(completion: @escaping FinishBlock) {
    class func belowPageCompletion(completion: @escaping FinishBlock) {
        //: let requestModel = TalkingRequestModel.init()
        let requestModel = RoundReactiveCompatible()
        //: requestModel.requestPath = "app/getConfig"
        requestModel.requestPath = (mainWeatherName.replacingOccurrences(of: "another", with: "p") + String(show_eliteTitle.prefix(5)) + "Config")
        //: requestModel.showErrorStatusBar = false
        requestModel.showErrorStatusBar = false
        //: ProgressHUD.show()
        PointerReactiveCompatible.soundAssetThrow()
        //: GJ.startRequest(model: requestModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: requestModel) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            PointerReactiveCompatible.motivationCharmDismiss()
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: TalkingAppConfigKey)
                user_liveMsg.set(result, forKey: userKeyMessage)
                //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let configModel = JSONDeserializer<SweetMTheoryTransformable>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: CompositionReactiveCompatible.share.appConfigMode = configModel
                    CompositionReactiveCompatible.share.appConfigMode = configModel
                    // 通知
                    //: NotificationCenter.default.post(name: UPDATE_APP_GETCONFIG_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: kDisplayName, object: nil)
                    //: completion(succeed, result, errorModel)
                    completion(succeed, result, errorModel)
                }
                //: } else {
            } else {
                //: let configInfo = Defaults.dictionary(forKey: TalkingAppConfigKey)
                let configInfo = user_liveMsg.dictionary(forKey: userKeyMessage)
                //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                if let configModel = JSONDeserializer<SweetMTheoryTransformable>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                    //: CompositionReactiveCompatible.share.appConfigMode = configModel
                    CompositionReactiveCompatible.share.appConfigMode = configModel
                    //: NotificationCenter.default.post(name: UPDATE_APP_GETCONFIG_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: kDisplayName, object: nil)
                    //: completion(true, result, errorModel)
                    completion(true, result, errorModel)
                }
            }
        }
    }

    //: class func func__requestUserInfo(completion: @escaping FinishBlock) {
    class func end(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestPath = "mf/user/getMyInfo"
        reqModel.requestPath = (String(show_actualValue))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: TalkingLoginUserInfoCacheKey)
                user_liveMsg.set(result, forKey: noti_lineImageBlockValue)
                //: if let userModel = JSONDeserializer<LoginUserModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let userModel = JSONDeserializer<OptReactiveCompatible>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: CompositionReactiveCompatible.share.loginUserMode = userModel
                    CompositionReactiveCompatible.share.loginUserMode = userModel
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询用户余额
    //: class func func__getInfoColumn(completion: @escaping FinishBlock) {
    class func bugOut(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestPath = "mf/user/getInfoColumn"
        reqModel.requestPath = (String(userPanShutGenreFormat.prefix(5)) + "er/g" + String(main_evaluateMessage))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: if succeed {
            if succeed {
                //: let json = JSON(result ?? [String: Any]())
                let json = JSON(result ?? [String: Any]())
                //: CompositionReactiveCompatible.share.loginUserMode.mf_coin = String(format: "%.2f", json["mfCoin"].doubleValue)
                CompositionReactiveCompatible.share.loginUserMode.mf_coin = String(format: "%.2f", json[(String(noti_statusText) + appOpportunityData.replacingOccurrences(of: "action", with: "n"))].doubleValue)
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    //: class func func__requestUserConfig(completion: @escaping FinishBlock) {
    class func dismissImage(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestPath = "mf/index/getConfig"
        reqModel.requestPath = (String(notiMaybeValue) + notiOuterFinishZzFormat.replacingOccurrences(of: "ping", with: "g"))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: let configKey = "\(TalkingLoginUserConfigKey)_\(String(describing: CompositionReactiveCompatible.share.loginUserMode.sex))"
            let configKey = "\(appOkContent)_\(String(describing: CompositionReactiveCompatible.share.loginUserMode.sex))"
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: configKey)
                user_liveMsg.set(result, forKey: configKey)
                //: if let userModel = JSONDeserializer<AppUserConfigModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let userModel = JSONDeserializer<AfterConfigModel>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: CompositionReactiveCompatible.share.appUserConfigMode = userModel
                    CompositionReactiveCompatible.share.appUserConfigMode = userModel
                    //: LightConversationListener.shared.func__LogingIn()
                    LightConversationListener.shared.carryDoing()
                    //: func__checkUserBaseinfoFileVersionWithURL(baseinfo: CompositionReactiveCompatible.share.appUserConfigMode.baseInfo)
                    filter(baseinfo: CompositionReactiveCompatible.share.appUserConfigMode.baseInfo)
                    // 上传用户日志
                    //: if userModel.needUploadLog == true {
                    if userModel.needUploadLog == true {
                        //: UploadLogTool.shared.uploadLog(false)
                        FinishThen.shared.weightTranslate(false)
                    }
                    // 上报女性用户busy状态
                    //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
                    (SceneKingfisherCompatible.shared as! SceneKingfisherCompatible).toilingStatusDamDescribe()
                }
                //: } else {
            } else {
                //: let configInfo = Defaults.dictionary(forKey: configKey)
                let configInfo = user_liveMsg.dictionary(forKey: configKey)
                //: if let userModel = JSONDeserializer<AppUserConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                if let userModel = JSONDeserializer<AfterConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                    //: CompositionReactiveCompatible.share.appUserConfigMode = userModel
                    CompositionReactiveCompatible.share.appUserConfigMode = userModel
                    //: LightConversationListener.shared.func__LogingIn()
                    LightConversationListener.shared.carryDoing()
                }
            }
            //: NotificationCenter.default.post(name: UPDATE_INDEX_GETCONFIG_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: constAddKey, object: nil)
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    //: class func func__checkUserBaseinfoFileVersionWithURL(baseinfo: String) {
    class func filter(baseinfo: String) {
        //: let cacheUrl = Defaults.string(forKey: TalkingUserTagCacheUrlKey)
        let cacheUrl = user_liveMsg.string(forKey: userPartyValue)
        //: printLog(message: "baseinfo = \(baseinfo)")
        printLog(message: (userMemoryPerformKey.lowercased() + String(showDistantText)) + "\(baseinfo)")
        //: if cacheUrl != baseinfo {
        if cacheUrl != baseinfo {
            //: AF.request(baseinfo, method: .get).responseData { responseData in
            AF.request(baseinfo, method: .get).responseData { responseData in
                //: switch responseData.result {
                switch responseData.result {
                //: case .success:
                case .success:
                    //: let responseJson = String(data: responseData.data!, encoding: .utf8)
                    let responseJson = String(data: responseData.data!, encoding: .utf8)
                    //: if let responseModel = JSONDeserializer<UserTagModel>.deserializeFrom(json: responseJson) {
                    if let responseModel = JSONDeserializer<TwoMeasurable>.deserializeFrom(json: responseJson) {
                        //: Defaults.set(baseinfo, forKey: TalkingUserTagCacheUrlKey)
                        user_liveMsg.set(baseinfo, forKey: userPartyValue)
                        //: let jsonPath = FileManager.CachesDirectory()+"UserBasicInfoSetting"
                        let jsonPath = FileManager.realized() + (String(showAddedSinceMsg.suffix(4)) + "Basic" + String(kYesPath.suffix(6)) + "ttin" + String(main_ableKey))
                        //: if FileManager.createFolder(folderPath: jsonPath) {
                        if FileManager.phallicStage(folderPath: jsonPath) {
                            //: FileManager.writeStringToFile(content: responseJson!, writePath: jsonPath+"/userTag.json")
                            FileManager.birthdayPath(content: responseJson!, writePath: jsonPath + (String(mainGraduateName) + String(main_technologyData)))
                            //: CompositionReactiveCompatible.share.func__loadUserTagCacheData()
                            CompositionReactiveCompatible.share.factorSwitchdData()
                        }
                        //: } else {
                    } else {
                        //: printLog(message: "json 解析失败")
                        printLog(message: (String(noti_linePriorityKey) + String(mainEquallyYellowMsg)))
                    }
                //: break
                //: case .failure:
                case .failure:

                    //: break
                    break
                }
            }
            //: } else {
        } else {
            //: CompositionReactiveCompatible.share.func__loadUserTagCacheData()
            CompositionReactiveCompatible.share.factorSwitchdData()
        }
    }

    // 登录后上报FCM跟Device
    //: class func func__reportDeviceID() {
    class func actionFollowing() {
        //: func__reportDeviceIdentifier()
        at()
    }

    /// 上报adid
    //: class func func__reportDeviceIdentifier() {
    class func at() {
        //: let adid = Adjust.adid() ?? ""
        let adid = Adjust.adid() ?? ""
        //: if !adid.isEmptyString {
        if !adid.isEmptyString {
            //: let reqModel = TalkingRequestModel.init()
            let reqModel = RoundReactiveCompatible()
            //: reqModel.requestType = .POST
            reqModel.requestType = .POST
            //: reqModel.requestPath = "app/reportDeviceId"
            reqModel.requestPath = (String(data_exposureMsg.prefix(8)) + String(main_lackName) + String(kTradeName))
            //: reqModel.showErrorStatusBar = false
            reqModel.showErrorStatusBar = false
            //: var params = UIDevice.deviceInfoDic
            var params = UIDevice.deviceInfoDic
            //: if let poStr = params["p0"] {
            if let poStr = params["p0"] {
                //: let token = NSDate.getCurrentTimeStamp()
                let token = NSDate.duringDirection()
                //: reqModel.addHeaderToken = token
                reqModel.addHeaderToken = token
                //: let key = token.appending(TokenSaltStr)
                let key = token.appending(dataHomeMsg)
                //: params["p0"] = (poStr as? String)?.encrypt(withKey: key)
                params["p0"] = (poStr as? String)?.bottom(key)
            }
            //: reqModel.params = params
            reqModel.params = params
            //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
            constNextKey.swaddlingClothes(model: reqModel) { _, _, _ in
            }
            //: }else {
        } else {
            //: if isRetryDeviceIdTime <= 384 {
            if kLastValue <= 384 {
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + isRetryDeviceIdTime) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + kLastValue) {
                    //: isRetryDeviceIdTime *= 2
                    kLastValue *= 2
                    //: self.func__reportDeviceIdentifier()
                    self.at()
                }
            }
        }
    }

    //: class func func__reportFCMID() {
    class func permission() {
        //: Messaging.messaging().token { token, error in
        Messaging.messaging().token { token, _ in
            //: if let token = token {
            if let token = token {
                //: let params = ["token": token]
                let params = [String(bytes: noti_sightKey.reversed(), encoding: .utf8)!: token]
                //: let reqModel = TalkingRequestModel.init()
                let reqModel = RoundReactiveCompatible()
                //: reqModel.requestType = .POST
                reqModel.requestType = .POST
                //: reqModel.requestPath = "app/reportFcmPushToken"
                reqModel.requestPath = (String(userMultipleKey) + constKingMsg.replacingOccurrences(of: "compute", with: "n"))
                //: reqModel.params = params
                reqModel.params = params
                //: reqModel.showErrorStatusBar = false
                reqModel.showErrorStatusBar = false
                //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
                constNextKey.swaddlingClothes(model: reqModel) { _, _, _ in
                }
            }
        }
    }

    //: class func func__initAppRequest() {
    class func work() {
        //: if isRequestingInit {
        if constListMessage {
            //: return
            return
        }
        //: isRequestingInit = true
        constListMessage = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestPath = "app/init"
        reqModel.requestPath = (String(appHighlightPath.prefix(5)) + noti_lineUrl.lowercased())
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, _, _ in
            //: isRequestingInit =  false
            constListMessage = false
            //: if succeed && CompositionReactiveCompatible.share.request_HasInit == false {
            if succeed && CompositionReactiveCompatible.share.request_HasInit == false {
                //: CompositionReactiveCompatible.share.request_HasInit = true
                CompositionReactiveCompatible.share.request_HasInit = true
            }
        }
    }

    //: class func func__initRequestHost(completion: @escaping FinishBlock) {
    class func reevaluation(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestPath = "app/ping"
        reqModel.requestPath = (String(main_groundFormat.suffix(6)) + const_gloryValue.lowercased())
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}

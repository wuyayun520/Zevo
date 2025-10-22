
//: Declare String Begin

/*: "unarchive failure in init" :*/
fileprivate let main_assertStr:[Character] = ["u","n","a","r","c","h","i","v","e"," ","f","a","i"]
fileprivate let appTillData:String = "lcreatee"
fileprivate let showSpringUrl:String = " in initoccupation theme"

/*: "App" :*/
fileprivate let const_appearStr:String = "Appperson automatic secret shuttle"

/*: "privateChatEffect%@" :*/
fileprivate let constConsciousPath:String = "pstativ"
fileprivate let userPreviousPath:String = "hatEpermission beyond copy calculate shut"

/*: "extra" :*/
fileprivate let data_capAppealMsg:String = "EXTRA"

/*: "user" :*/
fileprivate let constDoingMsg:String = "ustrengther"

/*: "gift" :*/
fileprivate let main_trailMsg:String = "gmutualt"

/*: "fromUid" :*/
fileprivate let noti_standFormat:[Character] = ["f","r","o","m","U","i","d"]

/*: "fromNickname" :*/
fileprivate let noti_takeKey:String = "here materialfromN"
fileprivate let notiResMayStr:[Character] = ["i","c","k","n","a","m","e"]

/*: "name" :*/
fileprivate let constEveryoneData:[Character] = ["n","a","m","e"]

/*: "fromHeadPic" :*/
fileprivate let userOutputId:String = "tick essay firefromH"
fileprivate let data_birdTitle:String = "texture"

/*: "icon" :*/
fileprivate let const_inputMaxName:String = "ICON"

/*: "pid" :*/
fileprivate let user_disableKey:String = "PID"

/*: "num" :*/
fileprivate let constConceptFormat:String = "ngiant"

/*: "pname" :*/
fileprivate let noti_replacementMovieBucketName:String = "becomeame"

/*: "giftPic" :*/
fileprivate let dataTriggerQuitTitle:[Character] = ["g","i","f","t","P","i","c"]

/*: "comboNum" :*/
fileprivate let data_adviseExtendSumValue:String = "comboNsnap indicator invitation outcome"
fileprivate let main_sendOfMsg:[Character] = ["u","m"]

/*: "iosEffect" :*/
fileprivate let main_triggerMsg:[Character] = ["i"]
fileprivate let dataDecisionMsg:String = "osEffectphenomenon via mini sequence private"

/*: "showType" :*/
fileprivate let constPoliceRefreshPath:String = "secure ask anyone elseshowType"

/*: "animationTimes" :*/
fileprivate let k_scopeUrl:[Character] = ["a","n","i","m","a","t","i","o","n","T","i"]
fileprivate let noti_advancedFormat:String = "mleading"

/*: "iosVapEffect" :*/
fileprivate let userTaId:[Character] = ["i","o","s","V","a","p","E","f","f","e"]
fileprivate let userPresentationId:[Character] = ["c","t"]

/*: "msgInfo" :*/
fileprivate let main_betweenKey:[Character] = ["m","s","g","I","n","f","o"]

/*: "mfBean" :*/
fileprivate let show_armKey:[UInt8] = [0x68,0x61,0x3d,0x60,0x5c,0x69]

fileprivate func recentSwim(medal num: UInt8) -> UInt8 {
    let value = Int(num) - 251
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "toUser" :*/
fileprivate let kTurnTitle:String = "toUseranswer main principal opening city"

/*: "uid" :*/
fileprivate let constPickId:[Character] = ["u","i","d"]

/*: "giftNum" :*/
fileprivate let mainSideMsg:String = "giftNumquick crush"

/*: "nickname" :*/
fileprivate let notiCharacterMsg:String = "shallckname"

/*: "Send to %@" :*/
fileprivate let const_earlySheerMessage:String = "to print behindSend "
fileprivate let data_sourceName:String = "appeal whento %@"

/*: "Send to All Numbers" :*/
fileprivate let show_permissionDownPath:String = "Send tcommunication woman notice representation"
fileprivate let k_senseStr:String = "l Numbite medal element"

/*: "headPic" :*/
fileprivate let noti_panelMessage:String = "compete portrait newheadPic"

/*: "LiveGift_%@" :*/
fileprivate let mainDeliverId:[Character] = ["L","i","v","e","G","i"]
fileprivate let show_stepPath:String = "frame intervalft_%@"

/*: "toUid" :*/
fileprivate let appFollowFormat:String = "technology skirt cut out hearttoUid"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FactorAnimatTool.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/6.
//

/// 私聊 动效管理  会话id->礼物动效数组  本地存起来

//: import UIKit
import UIKit

//: @objc class AbTalkingPrivateChatAnimatTool: NSObject {
@objc class FactorAnimatTool: NSObject {
    //: var cachDict = NSMutableDictionary(capacity: 0)
    var cachDict = NSMutableDictionary(capacity: 0)

    //: @objc static let shared = AbTalkingPrivateChatAnimatTool()
    @objc static let shared = FactorAnimatTool()

    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        //: readAnimatData()
        failureProcess()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: @objc extension AbTalkingPrivateChatAnimatTool {
@objc extension FactorAnimatTool {
    /// 初始化,读取缓存归档的文件
    //: func readAnimatData() {
    func failureProcess() {
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: do {
            do {
                //: let data = try Data(contentsOf: URL(fileURLWithPath: getPrivateChatAnimtoFile()))
                let data = try Data(contentsOf: URL(fileURLWithPath: replacement()))
                //: if let dict: NSDictionary = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? NSDictionary {
                if let dict: NSDictionary = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? NSDictionary {
                    //: self.cachDict = NSMutableDictionary(dictionary: dict)
                    self.cachDict = NSMutableDictionary(dictionary: dict)
                }
                //: } catch {
            } catch {
                //: printLog(message: "unarchive failure in init")
                printLog(message: (String(main_assertStr) + appTillData.replacingOccurrences(of: "create", with: "ur") + String(showSpringUrl.prefix(8))))
            }
            //: } else {
        } else {
            //: let dict: NSDictionary? = NSKeyedUnarchiver.unarchiveObject(withFile: self.getPrivateChatAnimtoFile()) as? NSDictionary
            let dict: NSDictionary? = NSKeyedUnarchiver.unarchiveObject(withFile: self.replacement()) as? NSDictionary
            //: if dict != nil {
            if dict != nil {
                //: self.cachDict = NSMutableDictionary(dictionary: dict!)
                self.cachDict = NSMutableDictionary(dictionary: dict!)
            }
        }
    }

    /// 存储缓存
    //: func saveAnimatDataToFile() {
    func remindFile() {
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: do {
            do {
                //: let data = try NSKeyedArchiver.archivedData(withRootObject: self.cachDict, requiringSecureCoding: true)
                let data = try NSKeyedArchiver.archivedData(withRootObject: self.cachDict, requiringSecureCoding: true)
                //: try data.write(to: URL(fileURLWithPath: getPrivateChatAnimtoFile()))
                try data.write(to: URL(fileURLWithPath: replacement()))
                //: } catch {
            } catch {
                //: printLog(message: error)
                printLog(message: error)
            }

            //: } else {
        } else {
            //: NSKeyedArchiver.archiveRootObject(self.cachDict, toFile: self.getPrivateChatAnimtoFile())
            NSKeyedArchiver.archiveRootObject(self.cachDict, toFile: self.replacement())
        }
    }

    //: func getPrivateChatAnimtoFile() -> String {
    func replacement() -> String {
        //: let documentFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let appPath = (documentFilePath as NSString).appendingPathComponent("App")
        let appPath = (documentFilePath as NSString).appendingPathComponent((String(const_appearStr.prefix(3))))

        //: let fm = FileManager.default
        let fm = FileManager.default
        //: if fm.fileExists(atPath: appPath) == false {
        if fm.fileExists(atPath: appPath) == false {
            //: try? FileManager.default.createDirectory(atPath: appPath, withIntermediateDirectories: true)
            try? FileManager.default.createDirectory(atPath: appPath, withIntermediateDirectories: true)
        }

        //: let name = String(format: "privateChatEffect%@", CompositionReactiveCompatible.share.loginUserMode.userID)
        let name = String(format: (constConsciousPath.replacingOccurrences(of: "stat", with: "r") + "ateC" + String(userPreviousPath.prefix(4)) + "ffect%@"), CompositionReactiveCompatible.share.loginUserMode.userID)
        //: let filePath = (appPath as NSString).appendingPathComponent(name)
        let filePath = (appPath as NSString).appendingPathComponent(name)
        //: return filePath
        return filePath
    }

    /// 根据会话获取需要播放的礼物动效数组,同时会删除
    //: func getConverCacheGiftAnimat(tagetId: String) -> NSMutableArray {
    func drawId(tagetId: String) -> NSMutableArray {
        //: let data: NSMutableArray? = self.cachDict.object(forKey: tagetId) as? NSMutableArray
        let data: NSMutableArray? = self.cachDict.object(forKey: tagetId) as? NSMutableArray
        //: let modelArray = NSMutableArray(capacity: 0)
        let modelArray = NSMutableArray(capacity: 0)
        //: if data != nil {
        if data != nil {
            //: for dict in data! {
            for dict in data! {
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dict as? [String: Any], designatedPath: nil) {
                if let giftModel = JSONDeserializer<RecoverAnimatModel>.deserializeFrom(dict: dict as? [String: Any], designatedPath: nil) {
                    //: modelArray.add(giftModel)
                    modelArray.add(giftModel)
                }
            }
            //: self.cachDict.removeObject(forKey: tagetId)
            self.cachDict.removeObject(forKey: tagetId)
        }
        //: self.saveAnimatDataToFile()
        self.remindFile()
        //: return modelArray
        return modelArray
    }

    /// 删除会话,同步删除缓存
    //: func removeConversionAnimat(targetID: String) {
    func bull(targetID: String) {
        //: if !targetID.isEmptyString, self.cachDict.object(forKey: targetID) != nil {
        if !targetID.isEmptyString, self.cachDict.object(forKey: targetID) != nil {
            //: self.cachDict.removeObject(forKey: targetID)
            self.cachDict.removeObject(forKey: targetID)
            //: self.saveAnimatDataToFile()
            self.remindFile()
        }
    }

    /// 收到礼物消息处理
    //: func disposeReceiveGiftMsg(giftMessageDic: NSDictionary) {
    func nearNight(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(data_capAppealMsg.lowercased())] as? [String: Any]
            //: let user: NSDictionary? = giftMessageDic["user"] as? NSDictionary
            let user: NSDictionary? = giftMessageDic[(constDoingMsg.replacingOccurrences(of: "strength", with: "s"))] as? NSDictionary
            //: let targetId = String(format: "%@", user?["id"] as! CVarArg)
            let targetId = String(format: "%@", user?["id"] as! CVarArg)

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((main_trailMsg.replacingOccurrences(of: "mutual", with: "if"))) == false {
                //: return
                return
            }
            //: if let roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if let roomGiftModel = JSONDeserializer<AppearanceModelType>.deserializeFrom(dict: extraDict![(main_trailMsg.replacingOccurrences(of: "mutual", with: "if"))] as? [String: Any], designatedPath: nil) {
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                // 帝王礼物特效
                //: if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                    // 开头动效
                    //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                    giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                    //: let tempArr = NSMutableArray()
                    let tempArr = NSMutableArray()
                    //: let tempDicArr = NSMutableArray()
                    let tempDicArr = NSMutableArray()

                    //: for giftStr in giftArr! {
                    for giftStr in giftArr! {
                        //: let dictM = NSMutableDictionary(capacity: 0)
                        let dictM = NSMutableDictionary(capacity: 0)
                        //: dictM["fromUid"] = targetId
                        dictM[(String(noti_standFormat))] = targetId
                        //: dictM["fromNickname"] = user?["name"]
                        dictM[(String(noti_takeKey.suffix(5)) + String(notiResMayStr))] = user?[(String(constEveryoneData))]
                        //: dictM["fromHeadPic"] = user?["icon"]
                        dictM[(String(userOutputId.suffix(5)) + "eadPi" + data_birdTitle.replacingOccurrences(of: "texture", with: "c"))] = user?[(const_inputMaxName.lowercased())]
                        //: dictM["pid"] = "0" // 缓存兼容
                        dictM[(user_disableKey.lowercased())] = "0" // 缓存兼容
                        //: dictM["num"] = (roomGiftModel.giftNum)
                        dictM[(constConceptFormat.replacingOccurrences(of: "giant", with: "um"))] = (roomGiftModel.giftNum)
                        //: dictM["pname"] = roomGiftModel.name
                        dictM[(noti_replacementMovieBucketName.replacingOccurrences(of: "become", with: "pn"))] = roomGiftModel.name
                        //: dictM["giftPic"] = roomGiftModel.imgPreview
                        dictM[(String(dataTriggerQuitTitle))] = roomGiftModel.imgPreview
                        //: dictM["comboNum"] = (roomGiftModel.comboNum)
                        dictM[(String(data_adviseExtendSumValue.prefix(6)) + String(main_sendOfMsg))] = (roomGiftModel.comboNum)
                        //: dictM["iosEffect"] = giftStr
                        dictM[(String(main_triggerMsg) + String(dataDecisionMsg.prefix(8)))] = giftStr
                        //: dictM["showType"] = (roomGiftModel.showType)
                        dictM[(String(constPoliceRefreshPath.suffix(8)))] = (roomGiftModel.showType)
                        //: dictM["animationTimes"] = "1"
                        dictM[(String(k_scopeUrl) + noti_advancedFormat.replacingOccurrences(of: "leading", with: "es"))] = "1"

                        //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        if let giftModel = JSONDeserializer<RecoverAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                            //: tempArr.add(giftModel)
                            tempArr.add(giftModel)
                            //: tempDicArr.add(dictM)
                            tempDicArr.add(dictM)
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
                    //: let dictM = NSMutableDictionary(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)

                    //: dictM["fromUid"] = targetId
                    dictM[(String(noti_standFormat))] = targetId
                    //: dictM["fromNickname"] = user?["name"]
                    dictM[(String(noti_takeKey.suffix(5)) + String(notiResMayStr))] = user?[(String(constEveryoneData))]
                    //: dictM["fromHeadPic"] = user?["icon"]
                    dictM[(String(userOutputId.suffix(5)) + "eadPi" + data_birdTitle.replacingOccurrences(of: "texture", with: "c"))] = user?[(const_inputMaxName.lowercased())]

                    //: dictM["pid"] = roomGiftModel.giftId
                    dictM[(user_disableKey.lowercased())] = roomGiftModel.giftId
                    //: dictM["num"] = (roomGiftModel.giftNum)
                    dictM[(constConceptFormat.replacingOccurrences(of: "giant", with: "um"))] = (roomGiftModel.giftNum)
                    //: dictM["pname"] = roomGiftModel.name
                    dictM[(noti_replacementMovieBucketName.replacingOccurrences(of: "become", with: "pn"))] = roomGiftModel.name
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(dataTriggerQuitTitle))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(String(data_adviseExtendSumValue.prefix(6)) + String(main_sendOfMsg))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = effect
                    dictM[(String(main_triggerMsg) + String(dataDecisionMsg.prefix(8)))] = effect
                    //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                    dictM[(String(userTaId) + String(userPresentationId))] = roomGiftModel.iosVapEffect

                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(constPoliceRefreshPath.suffix(8)))] = (roomGiftModel.showType)
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                        dictM[(String(k_scopeUrl) + noti_advancedFormat.replacingOccurrences(of: "leading", with: "es"))] = (roomGiftModel.animationTimes)
                        //: } else {
                    } else {
                        //: dictM["animationTimes"] = dictM["num"]
                        dictM[(String(k_scopeUrl) + noti_advancedFormat.replacingOccurrences(of: "leading", with: "es"))] = dictM[(constConceptFormat.replacingOccurrences(of: "giant", with: "um"))]
                    }

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    if let giftModel = JSONDeserializer<RecoverAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: tempGiftModel.add(giftModel)
                        tempGiftModel.add(giftModel)
                        //: tempDictM.add(dictM)
                        tempDictM.add(dictM)
                    }
                }

                //: guard let currentVC = self.currentViewController() else { return }
                guard let currentVC = self.mediumSave() else { return }

                // 直播收到礼物，积分更改
                //: if TalkingLiveManager.shared().isLive {
                if SelectedThen.panCaptureShared().isLive {
                    //: let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    let msgInfo: Dictionary? = extraDict?[(String(main_betweenKey))] as? [String: Any]
                    //: let mfBean = msgInfo?["mfBean"] as? Double
                    let mfBean = msgInfo?[String(bytes: show_armKey.map{recentSwim(medal: $0)}, encoding: .utf8)!] as? Double
                    //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                    NotificationCenter.default.post(name: mainMomentKey, object: nil, userInfo: [String(bytes: show_armKey.map{recentSwim(medal: $0)}, encoding: .utf8)!: mfBean ?? 0.0])
                }
                // 当前处于该对话页 添加到当前动画队列里
                //: if let videoVC = currentVC as? TalkingVideoChatViewController {
                if let videoVC = currentVC as? AdminObserverDelegate {
                    // 音视频通话时，只展示通话人的礼物
                    //: if CompositionReactiveCompatible.share.loginUserMode.userID != targetId,
                    if CompositionReactiveCompatible.share.loginUserMode.userID != targetId,
                       //: videoVC.chatModel?.pairUid == targetId
                       videoVC.chatModel?.pairUid == targetId
                    {
                        //: videoVC.receiveGiftPlay(giftArr: tempGiftModel as! [Any])
                        videoVC.recover(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    //: } else if let voiceVC = currentVC as? TalkingVoiceChatViewController {
                } else if let voiceVC = currentVC as? TastyPartyDelegate {
                    // 音视频通话时，只展示通话人的礼物
                    //: if CompositionReactiveCompatible.share.loginUserMode.userID != targetId,
                    if CompositionReactiveCompatible.share.loginUserMode.userID != targetId,
                       //: voiceVC.chatModel?.pairUid == targetId
                       voiceVC.chatModel?.pairUid == targetId
                    {
                        //: voiceVC.receiveGiftPlay(giftArr: tempGiftModel as! [Any])
                        voiceVC.giftAccountSuite(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    //: } else if let chatVC = currentVC as? TalkingPrivateChatController {
                } else if let chatVC = currentVC as? ParentControllerDelegate {
                    //: if chatVC.getChatVCTargetId() == targetId {
                    if chatVC.targetContact() == targetId {
                        //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                        chatVC.assemblage(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    /// 直播中 半屏私聊收到个人私聊礼物
                    //: } else if currentVC.isKind(of: TalkingLiveBeautifyViewController.self) {
                } else if currentVC.isKind(of: OptViewController.self) {
                    //: for vc in currentVC.children {
                    for vc in currentVC.children {
                        //: if vc.isKind(of: TalkingPrivateChatController.self) {
                        if vc.isKind(of: ParentControllerDelegate.self) {
                            //: let chatVC = vc as! TalkingPrivateChatController
                            let chatVC = vc as! ParentControllerDelegate
                            //: if chatVC.getChatVCTargetId() == targetId {
                            if chatVC.targetContact() == targetId {
                                //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                                chatVC.assemblage(giftArr: tempGiftModel as! [Any])
                                //: return
                                return
                            }
                        }
                    }
                }

                // 不是该会话 或者 不处于会话页  即使通话也是处于最小化, 则若是礼物动效 存到本地 供下次打开播放
                //: var giftArray: NSMutableArray? = self.cachDict[targetId] as? NSMutableArray
                var giftArray: NSMutableArray? = self.cachDict[targetId] as? NSMutableArray
                //: if giftArray == nil {
                if giftArray == nil {
                    //: giftArray = NSMutableArray(capacity: 0)
                    giftArray = NSMutableArray(capacity: 0)
                }
                //: giftArray?.addObjects(from: tempDictM as! [Any])
                giftArray?.addObjects(from: tempDictM as! [Any])
                //: self.cachDict[targetId] = giftArray
                self.cachDict[targetId] = giftArray
                //: self.saveAnimatDataToFile()
                self.remindFile()
            }
        }
    }

    /// 聊天室收到礼物消息处理
    //: func chatRoomDisposeReceiveGiftMsg(giftMessageDic: NSDictionary) {
    func chatEnable(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(data_capAppealMsg.lowercased())] as? [String: Any]
            //: let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            let user: NSDictionary? = extraDict?[(constDoingMsg.replacingOccurrences(of: "strength", with: "s"))] as? NSDictionary
            //: let touser: NSDictionary? = extraDict?["toUser"] as? NSDictionary
            let touser: NSDictionary? = extraDict?[(String(kTurnTitle.prefix(6)))] as? NSDictionary
            //: let targetId = user?["uid"] as? String
            let targetId = user?[(String(constPickId))] as? String

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((main_trailMsg.replacingOccurrences(of: "mutual", with: "if"))) == false {
                //: return
                return
            }
            //: if var roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if var roomGiftModel = JSONDeserializer<AppearanceModelType>.deserializeFrom(dict: extraDict![(main_trailMsg.replacingOccurrences(of: "mutual", with: "if"))] as? [String: Any], designatedPath: nil) {
                //: let dic = extraDict?["gift"] as? [String: Any]
                let dic = extraDict?[(main_trailMsg.replacingOccurrences(of: "mutual", with: "if"))] as? [String: Any]
                //: roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
                roomGiftModel.giftNum = dic?[(String(mainSideMsg.prefix(7)))] as? Int ?? 0
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                // 帝王礼物特效
                //: if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                    // 开头动效
                    //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                    giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                    //: let tempArr = NSMutableArray()
                    let tempArr = NSMutableArray()
                    //: let tempDicArr = NSMutableArray()
                    let tempDicArr = NSMutableArray()

                    //: for giftStr in giftArr! {
                    for giftStr in giftArr! {
                        //: let dictM = NSMutableDictionary(capacity: 0)
                        let dictM = NSMutableDictionary(capacity: 0)
                        //: dictM["fromUid"] = targetId
                        dictM[(String(noti_standFormat))] = targetId
                        //: dictM["fromNickname"] = user?["name"]
                        dictM[(String(noti_takeKey.suffix(5)) + String(notiResMayStr))] = user?[(String(constEveryoneData))]
                        //: dictM["fromHeadPic"] = user?["icon"]
                        dictM[(String(userOutputId.suffix(5)) + "eadPi" + data_birdTitle.replacingOccurrences(of: "texture", with: "c"))] = user?[(const_inputMaxName.lowercased())]
                        //: dictM["pid"] = "0" // 缓存兼容
                        dictM[(user_disableKey.lowercased())] = "0" // 缓存兼容
                        //: dictM["num"] = (roomGiftModel.giftNum)
                        dictM[(constConceptFormat.replacingOccurrences(of: "giant", with: "um"))] = (roomGiftModel.giftNum)
                        //: let str = touser?["nickname"] as? String ?? ""
                        let str = touser?[(notiCharacterMsg.replacingOccurrences(of: "shall", with: "ni"))] as? String ?? ""
                        //: dictM["pname"] = "Send to %@".localizedArguments(str)
                        dictM[(noti_replacementMovieBucketName.replacingOccurrences(of: "become", with: "pn"))] = (String(const_earlySheerMessage.suffix(5)) + String(data_sourceName.suffix(5))).temporaryWorker(str)
                        //: if touser == nil {
                        if touser == nil {
                            //: dictM["pname"] = "Send to All Numbers".localized
                            dictM[(noti_replacementMovieBucketName.replacingOccurrences(of: "become", with: "pn"))] = (String(show_permissionDownPath.prefix(6)) + "o Al" + String(k_senseStr.prefix(5)) + "bers").localized
                        }
                        //: dictM["giftPic"] = roomGiftModel.imgPreview
                        dictM[(String(dataTriggerQuitTitle))] = roomGiftModel.imgPreview
                        //: dictM["comboNum"] = (roomGiftModel.comboNum)
                        dictM[(String(data_adviseExtendSumValue.prefix(6)) + String(main_sendOfMsg))] = (roomGiftModel.comboNum)
                        //: dictM["iosEffect"] = giftStr
                        dictM[(String(main_triggerMsg) + String(dataDecisionMsg.prefix(8)))] = giftStr
                        //: dictM["showType"] = (roomGiftModel.showType)
                        dictM[(String(constPoliceRefreshPath.suffix(8)))] = (roomGiftModel.showType)
                        //: dictM["animationTimes"] = "1"
                        dictM[(String(k_scopeUrl) + noti_advancedFormat.replacingOccurrences(of: "leading", with: "es"))] = "1"

                        //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        if let giftModel = JSONDeserializer<RecoverAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                            //: tempArr.add(giftModel)
                            tempArr.add(giftModel)
                            //: tempDicArr.add(dictM)
                            tempDicArr.add(dictM)
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
                    //: let dictM = NSMutableDictionary(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)

                    //: dictM["fromUid"] = targetId
                    dictM[(String(noti_standFormat))] = targetId
                    //: dictM["fromNickname"] = user?["nickname"]
                    dictM[(String(noti_takeKey.suffix(5)) + String(notiResMayStr))] = user?[(notiCharacterMsg.replacingOccurrences(of: "shall", with: "ni"))]
                    //: dictM["fromHeadPic"] = user?["headPic"]
                    dictM[(String(userOutputId.suffix(5)) + "eadPi" + data_birdTitle.replacingOccurrences(of: "texture", with: "c"))] = user?[(String(noti_panelMessage.suffix(7)))]

                    //: dictM["pid"] = roomGiftModel.giftId
                    dictM[(user_disableKey.lowercased())] = roomGiftModel.giftId
                    //: dictM["num"] = (roomGiftModel.giftNum)
                    dictM[(constConceptFormat.replacingOccurrences(of: "giant", with: "um"))] = (roomGiftModel.giftNum)
                    // 显示送给谁
                    //: let str = touser?["nickname"] as? String ?? ""
                    let str = touser?[(notiCharacterMsg.replacingOccurrences(of: "shall", with: "ni"))] as? String ?? ""
                    //: dictM["pname"] = "Send to %@".localizedArguments(str)
                    dictM[(noti_replacementMovieBucketName.replacingOccurrences(of: "become", with: "pn"))] = (String(const_earlySheerMessage.suffix(5)) + String(data_sourceName.suffix(5))).temporaryWorker(str)
                    //: if touser == nil {
                    if touser == nil {
                        //: dictM["pname"] = "Send to All Numbers".localized
                        dictM[(noti_replacementMovieBucketName.replacingOccurrences(of: "become", with: "pn"))] = (String(show_permissionDownPath.prefix(6)) + "o Al" + String(k_senseStr.prefix(5)) + "bers").localized
                    }
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(dataTriggerQuitTitle))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(String(data_adviseExtendSumValue.prefix(6)) + String(main_sendOfMsg))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = effect
                    dictM[(String(main_triggerMsg) + String(dataDecisionMsg.prefix(8)))] = effect
                    //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                    dictM[(String(userTaId) + String(userPresentationId))] = roomGiftModel.iosVapEffect

                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(constPoliceRefreshPath.suffix(8)))] = (roomGiftModel.showType)
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                        dictM[(String(k_scopeUrl) + noti_advancedFormat.replacingOccurrences(of: "leading", with: "es"))] = (roomGiftModel.animationTimes)
                        //: } else {
                    } else {
                        //: dictM["animationTimes"] = dictM["num"]
                        dictM[(String(k_scopeUrl) + noti_advancedFormat.replacingOccurrences(of: "leading", with: "es"))] = dictM[(constConceptFormat.replacingOccurrences(of: "giant", with: "um"))]
                    }

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    if let giftModel = JSONDeserializer<RecoverAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: tempGiftModel.add(giftModel)
                        tempGiftModel.add(giftModel)
                        //: tempDictM.add(dictM)
                        tempDictM.add(dictM)
                    }
                }

                // 直播在聊天室收到礼物，积分更改
                //: let touid = touser?["uid"] as? Int
                let touid = touser?[(String(constPickId))] as? Int
                //: if TalkingLiveManager.shared().isLive, CompositionReactiveCompatible.share.loginUserMode.userID == "\(touid ?? 0)" || touser == nil {
                if SelectedThen.panCaptureShared().isLive, CompositionReactiveCompatible.share.loginUserMode.userID == "\(touid ?? 0)" || touser == nil {
                    //: let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    let msgInfo: Dictionary? = extraDict?[(String(main_betweenKey))] as? [String: Any]
                    //: let mfBean = msgInfo?["mfBean"] as? Double
                    let mfBean = msgInfo?[String(bytes: show_armKey.map{recentSwim(medal: $0)}, encoding: .utf8)!] as? Double
                    //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                    NotificationCenter.default.post(name: mainMomentKey, object: nil, userInfo: [String(bytes: show_armKey.map{recentSwim(medal: $0)}, encoding: .utf8)!: mfBean ?? 0.0])
                }

                // 当前处于该对话页 添加到当前动画队列里
                //: if SightReactiveCompatible.share.func__getCurrentActivityVC()!.isKind(of: TalkingGroupChatController.self) {
                if SightReactiveCompatible.share.reserveUp()!.isKind(of: MeetControllerDelegate.self) {
                    //: let chatVC = SightReactiveCompatible.share.func__getCurrentActivityVC() as! TalkingGroupChatController
                    let chatVC = SightReactiveCompatible.share.reserveUp() as! MeetControllerDelegate
                    //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                    chatVC.suiteByCurrency(giftArr: tempGiftModel as! [Any])
                }
            }
        }
    }

    /// 收到 直播/语音房 礼物消息处理
    //: func disposeReceiveLiveRoomGiftMsg(giftMessageDic: NSDictionary) {
    func cipher(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(data_capAppealMsg.lowercased())] as? [String: Any]
            //: let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            let user: NSDictionary? = extraDict?[(constDoingMsg.replacingOccurrences(of: "strength", with: "s"))] as? NSDictionary
            //: let targetId = String(format: "%@", user?["uid"] as! CVarArg)
            let targetId = String(format: "%@", user?[(String(constPickId))] as! CVarArg)
            //: var toUid = ""
            var toUid = ""
            //: if TalkingLiveManager.shared().isLive {
            if SelectedThen.panCaptureShared().isLive {
                //: toUid = String(format: "LiveGift_%@", extraDict?["toUid"] as? CVarArg ?? "")
                toUid = String(format: (String(mainDeliverId) + String(show_stepPath.suffix(5))), extraDict?[(String(appFollowFormat.suffix(5)))] as? CVarArg ?? "")
            }
            //: let gift = extraDict?["gift"] as? NSDictionary
            let gift = extraDict?[(main_trailMsg.replacingOccurrences(of: "mutual", with: "if"))] as? NSDictionary

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((main_trailMsg.replacingOccurrences(of: "mutual", with: "if"))) == false {
                //: return
                return
            }
            //: if let roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if let roomGiftModel = JSONDeserializer<AppearanceModelType>.deserializeFrom(dict: extraDict![(main_trailMsg.replacingOccurrences(of: "mutual", with: "if"))] as? [String: Any], designatedPath: nil) {
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                //: let dictM = NSMutableDictionary(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)

                //: dictM["fromUid"] = targetId
                dictM[(String(noti_standFormat))] = targetId
                //: dictM["fromNickname"] = user?["nickname"]
                dictM[(String(noti_takeKey.suffix(5)) + String(notiResMayStr))] = user?[(notiCharacterMsg.replacingOccurrences(of: "shall", with: "ni"))]
                //: dictM["fromHeadPic"] = user?["headPic"]
                dictM[(String(userOutputId.suffix(5)) + "eadPi" + data_birdTitle.replacingOccurrences(of: "texture", with: "c"))] = user?[(String(noti_panelMessage.suffix(7)))]

                //: dictM["pid"] = gift?["id"] as? String
                dictM[(user_disableKey.lowercased())] = gift?["id"] as? String
                //: dictM["num"] = gift?["num"] as? String
                dictM[(constConceptFormat.replacingOccurrences(of: "giant", with: "um"))] = gift?[(constConceptFormat.replacingOccurrences(of: "giant", with: "um"))] as? String
                //: dictM["pname"] = roomGiftModel.name
                dictM[(noti_replacementMovieBucketName.replacingOccurrences(of: "become", with: "pn"))] = roomGiftModel.name
                //: dictM["giftPic"] = roomGiftModel.imgPreview
                dictM[(String(dataTriggerQuitTitle))] = roomGiftModel.imgPreview
                //: dictM["comboNum"] = (roomGiftModel.comboNum)
                dictM[(String(data_adviseExtendSumValue.prefix(6)) + String(main_sendOfMsg))] = (roomGiftModel.comboNum)
                //: dictM["iosEffect"] = effect
                dictM[(String(main_triggerMsg) + String(dataDecisionMsg.prefix(8)))] = effect
                //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                dictM[(String(userTaId) + String(userPresentationId))] = roomGiftModel.iosVapEffect

                //: dictM["showType"] = (roomGiftModel.showType)
                dictM[(String(constPoliceRefreshPath.suffix(8)))] = (roomGiftModel.showType)
                //: if roomGiftModel.animationTimes > 0 {
                if roomGiftModel.animationTimes > 0 {
                    //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                    dictM[(String(k_scopeUrl) + noti_advancedFormat.replacingOccurrences(of: "leading", with: "es"))] = (roomGiftModel.animationTimes)
                    //: } else {
                } else {
                    //: dictM["animationTimes"] = dictM["num"]
                    dictM[(String(k_scopeUrl) + noti_advancedFormat.replacingOccurrences(of: "leading", with: "es"))] = dictM[(constConceptFormat.replacingOccurrences(of: "giant", with: "um"))]
                }

                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                if let giftModel = JSONDeserializer<RecoverAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: tempGiftModel.add(giftModel)
                    tempGiftModel.add(giftModel)
                    //: tempDictM.add(dictM)
                    tempDictM.add(dictM)
                }

                // 礼物动效 存到本地 供下次打开播放
                //: var giftArray: NSMutableArray? = self.cachDict[toUid] as? NSMutableArray
                var giftArray: NSMutableArray? = self.cachDict[toUid] as? NSMutableArray
                //: if giftArray == nil {
                if giftArray == nil {
                    //: giftArray = NSMutableArray(capacity: 0)
                    giftArray = NSMutableArray(capacity: 0)
                }
                //: if giftArray?.count ?? 0 >= 10 {
                if giftArray?.count ?? 0 >= 10 {
                    //: giftArray?.removeFirstObject()
                    giftArray?.removeFirstObject()
                }
                //: giftArray?.addObjects(from: tempDictM as! [Any])
                giftArray?.addObjects(from: tempDictM as! [Any])
                //: self.cachDict[toUid] = giftArray
                self.cachDict[toUid] = giftArray
                //: self.saveAnimatDataToFile()
                self.remindFile()
            }
        }
    }
}

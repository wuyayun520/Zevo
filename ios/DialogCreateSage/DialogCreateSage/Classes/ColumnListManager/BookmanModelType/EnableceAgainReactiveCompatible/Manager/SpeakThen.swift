
//: Declare String Begin

/*: "call/sendMsg" :*/
fileprivate let app_manualName:[Character] = ["c","a","l"]
fileprivate let constSuspendId:String = "l/senfloor immediate resume again"

/*: "logId" :*/
fileprivate let app_welcomeTitle:[Character] = ["l","o","g","I","d"]

/*: "content" :*/
fileprivate let data_hostTitle:[Character] = ["c","o"]
fileprivate let show_closedFormat:String = "NTENT"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SpeakThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingVideoDanmuManagerDelegate: NSObject {
protocol ElephantineManagerDelegate: NSObject {
    /// 弹幕消息
    //: func func__DanmuRecvNewModel(Msg: TalkingVideoCallDanmuModel)
    func enableCity(Msg: DanmuHandyJSON)
}

//: class TalkingVideoDanmuManager: NSObject {
class SpeakThen: NSObject {
    //: private var maxJoinRoom = 1
    private var maxJoinRoom = 1 // 重试加入弹幕房间次数

    //: private static var _instance: TalkingVideoDanmuManager?
    private static var _instance: SpeakThen? // singleton

    //: open weak var delegate: TalkingVideoDanmuManagerDelegate?
    open weak var delegate: ElephantineManagerDelegate?

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
    //: private override init() {}
    override private init() {}
    //: class func shared() -> TalkingVideoDanmuManager {
    class func quickSuiteStill() -> SpeakThen {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingVideoDanmuManager()
            _instance = SpeakThen()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }
}

// MARK: - 展示消息通知

//: extension TalkingVideoDanmuManager {
extension SpeakThen {
    /// 处理接收到的弹幕消息，展示
    /// - Parameters:
    ///   - msg:
    //: func onRecvDanmuNewMsg(msg: [String: Any]) {
    func subscribeThat(msg: [String: Any]) {
        //: if var model = TalkingVideoCallDanmuModel.deserialize(from: msg) {
        if var model = DanmuHandyJSON.deserialize(from: msg) {
            //: let celldata = TalkingVideoCallDammuCellData.init()
            let celldata = DataThen()
            //: model = celldata.caculateMsgHeight(model: model)
            model = celldata.simulationUser(model: model)
            //: self.delegate?.func__DanmuRecvNewModel(Msg: model)
            self.delegate?.enableCity(Msg: model)
        }
    }

    /// 发送文本弹幕消息
    /// - Parameters:
    ///   - logId: 当前通话id
    ///   - content: 消息内容
    ///   - completion: 回调

    //: class func uploadToTextMsg(logId: String, content: String, completion: FinishBlock? = nil) {
    class func exhibitBack(logId: String, content: String, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = RoundReactiveCompatible()
        //: reqModel.requestPath = "call/sendMsg"
        reqModel.requestPath = (String(app_manualName) + String(constSuspendId.prefix(5)) + "dMsg")
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["logId"] = logId
        dict[(String(app_welcomeTitle))] = logId
        //: dict["content"] = content
        dict[(String(data_hostTitle) + show_closedFormat.lowercased())] = content
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        constNextKey.swaddlingClothes(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }
}

//: extension TalkingVideoDanmuManager {
extension SpeakThen {
    /// 释放单利
    //: class func danmu_releaseAllResource() {
    class func allFire() {
        //: if TalkingVideoDanmuManager._instance != nil {
        if SpeakThen._instance != nil {
            //: TalkingVideoDanmuManager._instance = nil
            SpeakThen._instance = nil
        }
    }
}

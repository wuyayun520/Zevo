
//: Declare String Begin

/*: "uid" :*/
fileprivate let dataLabelName:[Character] = ["u","i","d"]

/*: "logId" :*/
fileprivate let show_builderShapeOtherTitle:String = "called back productionlogId"

/*: "fee" :*/
fileprivate let userWrapRegainKey:String = "calendaree"

/*: "prompt" :*/
fileprivate let kLoadBalancePath:[Character] = ["p","r","o","m","p","t"]

/*: "points" :*/
fileprivate let mainRecommendationTitle:[Character] = ["p","o","i","n","t","s"]

/*: "recievedDate" :*/
fileprivate let showClipData:String = "sampleciev"
fileprivate let app_disagreeTitle:String = "stroke"

/*: "duration" :*/
fileprivate let show_consumerKey:String = "durayou"
fileprivate let notiExistNoticeContent:String = "lat"

/*: "toUid" :*/
fileprivate let app_formalFormat:[Character] = ["t","o","U","i","d"]

/*: "fromUid" :*/
fileprivate let const_fatalText:String = "stock schedule required goldfromUi"
fileprivate let data_menuTitle:String = "glory"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CompositionRoundChatModel.swift
//  AbroadTalking
//
//  Created by young on 2022/11/8.
//

//: import UIKit
import UIKit

//: let VIDEO_1v1_CALL_TIMEOUT = 60.0
let show_lastValue = 60.0 // 拨打方超时时间
//: let VIDEO_1v1_RECIEVED_CALL_TIMEOUT = 60.0
let app_enterFormat = 60.0 // 接听方超时时间

// MARK: - 自定义model，处理音视频通话

//: class TalkingVideoChatModel {
class CompositionRoundChatModel {
    //: var isCaller = false
    var isCaller = false // 是不是通话的发起方
    //: var iUid = ""                // 发起方userId
    var iUid = "" // 发起方userId
    //: var iNickName: String?
    var iNickName: String? // 发起方昵称
    //: var iHeadPic: String?
    var iHeadPic: String? // 发起方头像

    //: var pairUid = ""             // 接收方userId
    var pairUid = "" // 接收方userId
    //: var pairNickName = ""        // 接收方昵称
    var pairNickName = "" // 接收方昵称
    //: var pairHeadPic = ""         // 接收方头像
    var pairHeadPic = "" // 接收方头像
    //: var pairSex = ""             // 接收方性别
    var pairSex = "" // 接收方性别
    //: var pairAge = 0
    var pairAge = 0 // 接收方年龄
    //: var pairBirthday = ""        // 接收方生日
    var pairBirthday = "" // 接收方生日
    //: var videoUrl = ""            // 对方视频地址
    var videoUrl = "" // 对方视频地址
    //: var cover = ""               // 视频封面
    var cover = "" // 视频封面
    //: var location = ""            // 用户活跃国家
    var location = "" // 用户活跃国家
    //: var fee = 0
    var fee = 0 // 女性价格
    //: var feeTips = ""             // 弹窗费用备注内容
    var feeTips = "" // 弹窗费用备注内容
    //: var logId = 0
    var logId = 0 // 聊天房间Id
    //: var points = ""             // 女性积分收益
    var points = "" // 女性积分收益
    //: var videoStage = VideoChatStage.Waiting
    var videoStage = ArrowMpChatStage.Waiting // 视频通话状态
    //: var renderPostion = VideoChatRenderPosition.selfOnBg
    var renderPostion = DecorativenessRenderPosition.selfOnBg // 视频渲染画面位置
    //: var resumeTalk = false
    var resumeTalk = false // 是否是重连通话
    //: var recievedReqeustTime: TimeInterval?
    var recievedReqeustTime: TimeInterval? // 接收方时间
    //: var startTime: TimeInterval?
    var startTime: TimeInterval? // 开始时间
    //: var isStrategyNow = false
    var isStrategyNow = false
    //: var prompt = ""                 // VIP折扣提醒（限女性）
    var prompt = "" // VIP折扣提醒（限女性）

    //: required init() {}
    required init() {}
}

//: extension TalkingVideoChatModel {
extension CompositionRoundChatModel {
    /// 根据数据，生成音视频通话模型
    /// - Parameters:
    ///   - info: 数据
    ///   - situation: 通话方式
    /// - Returns: 回调
    //: class func getVideoModel(info: [String: Any], situation: VideoChatSituation) -> TalkingVideoChatModel {
    class func noAdd(info: [String: Any], situation: AppearanceChatSituation) -> CompositionRoundChatModel {
        //: let model = TalkingVideoChatModel()
        let model = CompositionRoundChatModel()
        //: model.iUid = CompositionReactiveCompatible.share.loginUserMode.userID
        model.iUid = CompositionReactiveCompatible.share.loginUserMode.userID
        //: model.iHeadPic = CompositionReactiveCompatible.share.loginUserMode.headPic
        model.iHeadPic = CompositionReactiveCompatible.share.loginUserMode.headPic
        //: model.iNickName = CompositionReactiveCompatible.share.loginUserMode.nickname
        model.iNickName = CompositionReactiveCompatible.share.loginUserMode.nickname
        //: let json = JSON(info)
        let json = JSON(info)
        //: model.pairUid = json["uid"].stringValue
        model.pairUid = json[(String(dataLabelName))].stringValue
        //: model.logId = json["logId"].intValue
        model.logId = json[(String(show_builderShapeOtherTitle.suffix(5)))].intValue
        //: model.fee = json["fee"].intValue
        model.fee = json[(userWrapRegainKey.replacingOccurrences(of: "calendar", with: "f"))].intValue
        //: model.prompt = json["prompt"].stringValue
        model.prompt = json[(String(kLoadBalancePath))].stringValue
        //: model.points = json["points"].stringValue
        model.points = json[(String(mainRecommendationTitle))].stringValue

        //: switch(situation) {
        switch situation {
        //: case .Start:
        case .Start:
            //: model.isCaller = true
            model.isCaller = true
            //: model.videoStage = .Waiting
            model.videoStage = .Waiting

        //: case .Recieved:
        case .Recieved:
            //: model.isCaller = false
            model.isCaller = false
            //: model.videoStage = .Recieved
            model.videoStage = .Recieved
            //: let recievedDate = json["recievedDate"].rawValue as? Date
            let recievedDate = json[(showClipData.replacingOccurrences(of: "sample", with: "re") + "edDat" + app_disagreeTitle.replacingOccurrences(of: "stroke", with: "e"))].rawValue as? Date
            //: if recievedDate != nil {
            if recievedDate != nil {
                //: model.recievedReqeustTime = recievedDate?.timeIntervalSince1970
                model.recievedReqeustTime = recievedDate?.timeIntervalSince1970
            }

        //: case .Resume:
        case .Resume:
            //: let duration = json["duration"].intValue
            let duration = json[(show_consumerKey.replacingOccurrences(of: "you", with: "ti") + notiExistNoticeContent.replacingOccurrences(of: "lat", with: "on"))].intValue
            //: let interval = Date().timeIntervalSince1970
            let interval = Date().timeIntervalSince1970
            //: let startTalkTime = floor(interval) - Double(duration)
            let startTalkTime = floor(interval) - Double(duration)
            //: let uid = json["toUid"].stringValue
            let uid = json[(String(app_formalFormat))].stringValue
            //: let from = json["fromUid"].stringValue
            let from = json[(String(const_fatalText.suffix(6)) + data_menuTitle.replacingOccurrences(of: "glory", with: "d"))].stringValue
            //: model.isStrategyNow = true
            model.isStrategyNow = true
            //: model.resumeTalk = true
            model.resumeTalk = true
            //: model.startTime = startTalkTime
            model.startTime = startTalkTime
            //: model.isCaller = (model.iUid == from) ? true:false
            model.isCaller = (model.iUid == from) ? true : false
            //: model.pairUid = model.isCaller == true ? uid : from
            model.pairUid = model.isCaller == true ? uid : from
            //: model.videoStage = .Calling
            model.videoStage = .Calling

        //: case .Accept:
        case .Accept:
            //: model.isCaller = false
            model.isCaller = false
            //: model.videoStage = .Calling
            model.videoStage = .Calling

        //: case .Calling:
        case .Calling:
            //: model.isCaller = true
            model.isCaller = true
            //: model.videoStage = .Calling
            model.videoStage = .Calling
        }

        //: return model
        return model
    }

    /// 获取剩余应答时间
    /// - Returns: 时间（秒）
    //: func remainAnswerCallTime() -> TimeInterval {
    func drumstickUnitedlyNorSnip() -> TimeInterval {
        //: if self.isCaller {
        if self.isCaller {
            //: return 0
            return 0
        }

        //: if self.recievedReqeustTime == nil {
        if self.recievedReqeustTime == nil {
            //: return VIDEO_1v1_RECIEVED_CALL_TIMEOUT
            return app_enterFormat
        }

        //: let date = Date()
        let date = Date()
        //: let currentInterval = date.timeIntervalSince1970
        let currentInterval = date.timeIntervalSince1970
        //: let remainTime = self.recievedReqeustTime! + VIDEO_1v1_RECIEVED_CALL_TIMEOUT - currentInterval
        let remainTime = self.recievedReqeustTime! + app_enterFormat - currentInterval
        //: return remainTime
        return remainTime
    }
}

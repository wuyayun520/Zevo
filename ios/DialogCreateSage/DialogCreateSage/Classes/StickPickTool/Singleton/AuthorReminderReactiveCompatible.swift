
//: Declare String Begin

/*: "In app purchase" :*/
fileprivate let k_wayStr:[Character] = ["I","n"," ","a","p","p"," "]
fileprivate let userErrExtendTitle:String = "purcpilease"

/*: "cnw8jg" :*/
fileprivate let mainCompeteSecureTitle:[Character] = ["c","n","w","8","j","g"]

/*: "Install" :*/
fileprivate let show_himName:[UInt8] = [0x2e,0x9,0x14,0x13,0x6,0xb,0xb]

private func wayGuidance(dimension num: UInt8) -> UInt8 {
    return num ^ 103
}

/*: "j9cfr3" :*/
fileprivate let main_whichText:String = "eastern9cfr"
fileprivate let showLoseContent:String = "3"

/*: "RegisterSuccess" :*/
fileprivate let noti_adjustmentData:[UInt8] = [0xe0,0xf3,0xf5,0xf7,0x1,0x2,0xf3,0x0,0xe1,0x3,0xf1,0xf1,0xf3,0x1,0x1]

fileprivate func unitPossibility(res num: UInt8) -> UInt8 {
    let value = Int(num) - 142
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "ahl46w" :*/
fileprivate let showBlankIssueText:String = "ahlcombined6w"

/*: "clickStarProjectpop-upsFindoutmore" :*/
fileprivate let main_assetMsg:[UInt8] = [0x10,0x1f,0x1a,0x10,0x18,0x20,0x7,0x12,0x1,0x23,0x1,0x1c,0x19,0x16,0x10,0x7,0x3,0x1c,0x3,0x5e,0x6,0x3,0x0,0x35,0x1a,0x1d,0x17,0x1c,0x6,0x7,0x1e,0x1c,0x1,0x16]

/*: "a0q0ki" :*/
fileprivate let noti_againText:String = "a0q0kimagination"

/*: "clickStarProjectpop-upsCancel" :*/
fileprivate let dataExceptionValue:[UInt8] = [0x8,0x7,0x2,0x8,0x0,0x38,0x1f,0xa,0x19,0x3b,0x19,0x4,0x1,0xe,0x8,0x1f,0x1b,0x4,0x1b,0x46,0x1e,0x1b,0x18,0x28,0xa,0x5,0x8,0xe,0x7]

/*: "nzc0uz" :*/
fileprivate let constJoinRetTitle:[Character] = ["n","z","c","0","u","z"]

/*: "subscribe_sus" :*/
fileprivate let appCoverBearValue:[Character] = ["s","u","b","s","c","r","i","b","e","_","s"]
fileprivate let show_mergeCommentStepStr:String = "uoffer"

/*: "b5kpb0" :*/
fileprivate let const_openingName:[Character] = ["b"]
fileprivate let app_phaseText:String = "5kpb0plus stretch"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AuthorReminderReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/10/17.
//

//: import Adjust
import Adjust
//: import UIKit
import UIKit

//: class TalkingAdjustManager: NSObject {
class AuthorReminderReactiveCompatible: NSObject {
    //: static let share = TalkingAdjustManager()
    static let share = AuthorReminderReactiveCompatible()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    // MARK: - Lazy load

    //: private lazy var adjustDict: [String: String] = {
    private lazy var adjustDict: [String: String] = //: return ["In app purchase": "cnw8jg",
        [(String(k_wayStr) + userErrExtendTitle.replacingOccurrences(of: "pile", with: "h")): "dw8sva",
         //: "Install": "j9cfr3",
         String(bytes: show_himName.map{wayGuidance(dimension: $0)}, encoding: .utf8)!: "izlpvd",
         //: "RegisterSuccess": "ahl46w",
         String(bytes: noti_adjustmentData.map{unitPossibility(res: $0)}, encoding: .utf8)!: "wt11js",
         //: "clickStarProjectpop-upsFindoutmore":"a0q0ki",
         String(bytes: main_assetMsg.map{$0^115}, encoding: .utf8)!: "uw8y9c",
         //: "clickStarProjectpop-upsCancel":"nzc0uz",
         String(bytes: dataExceptionValue.map{$0^107}, encoding: .utf8)!: "ma87pz",
         //: "subscribe_sus": "b5kpb0"]
         (String(appCoverBearValue) + show_mergeCommentStepStr.replacingOccurrences(of: "offer", with: "s")): "iaa2ww"]
    //: }()
}

//: extension TalkingAdjustManager {
extension AuthorReminderReactiveCompatible {
    /// 添加内购埋点事件
    /// - Parameters:
    ///   - price: 价格
    ///   - currency: 货币单位
    //: func addPurchasedEvent(price: Double, currency: String) {
    func nearVideo(price: Double, currency: String) {
        //: guard let token = adjustDict["In app purchase"] else {
        guard let token = adjustDict[(String(k_wayStr) + userErrExtendTitle.replacingOccurrences(of: "pile", with: "h"))] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: event?.setRevenue(price, currency: currency)
        event?.setRevenue(price, currency: currency)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }

    /// 添加订阅埋点事件
    /// - Parameters:
    ///   - price: 价格
    ///   - currency: 货币单位
    //: func addSubscribeEvent(price: Double, currency: String) {
    func perusing(price: Double, currency: String) {
        //: guard let token = adjustDict["subscribe_sus"] else {
        guard let token = adjustDict[(String(appCoverBearValue) + show_mergeCommentStepStr.replacingOccurrences(of: "offer", with: "s"))] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: event?.setRevenue(price, currency: currency)
        event?.setRevenue(price, currency: currency)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }

    /// 添加埋点事件
    /// - Parameter key: 事件名
    //: func addEvent(key: String) {
    func mutualFollowingKey(key: String) {
        //: guard let token = adjustDict[key] else {
        guard let token = adjustDict[key] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }

    /// 添加去重事件【只记录一次】
    /// - Parameter key: 事件名
    //: func addOnceEvent(key: String) {
    func beanMove(key: String) {
        //: guard let token = adjustDict[key] else {
        guard let token = adjustDict[key] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: event?.setTransactionId(token)
        event?.setTransactionId(token)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }
}

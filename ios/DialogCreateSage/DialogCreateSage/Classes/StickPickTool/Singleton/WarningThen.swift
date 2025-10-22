
//: Declare String Begin

/*: "action" :*/
fileprivate let showFeedHandleGreatestMsg:[UInt8] = [0xd0,0xd2,0xe3,0xd8,0xde,0xdd]

fileprivate func sayOverlookPic(pass num: UInt8) -> UInt8 {
    let value = Int(num) - 111
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "category" :*/
fileprivate let showThinPath:[UInt8] = [0x3d,0x3f,0x2a,0x3b,0x39,0x31,0x2c,0x27]

/*: "label" :*/
fileprivate let k_commercialFormat:String = "ladocumentel"

/*: "user_action" :*/
fileprivate let userLaunchValue:String = "U"
fileprivate let const_bitValue:[Character] = ["s","e","r","_","a","c","t","i","o","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WarningThen.swift
//  DialogCreateSage
//
//  Created by DouXiu on 2025/4/1.
//

//: import FirebaseAnalytics
import FirebaseAnalytics
//: import UIKit
import UIKit

//: class FirebaseAnalyticsManager: NSObject {
class WarningThen: NSObject {
    //: static let share = FirebaseAnalyticsManager()
    static let share = WarningThen()
    //: private override init() {}
    override private init() {}

    // MARK: - 用户属性

    //: func setUserProperty(name: String, value: String) {
    func cancelOwn(name: String, value: String) {
        //: Analytics.setUserProperty(value, forName: name)
        Analytics.setUserProperty(value, forName: name)
    }

    // MARK: - 用户行为追踪

    //: func trackUserAction(action: String, category: String, label: String? = nil) {
    func actionTransgressionCategoryLabelTrackSomebodyZone(action: String, category: String, label: String? = nil) {
        //: var parameters: [String: Any] = [
        var parameters: [String: Any] = [
            //: "action": action,
            String(bytes: showFeedHandleGreatestMsg.map{sayOverlookPic(pass: $0)}, encoding: .utf8)!: action,
            //: "category": category,
            String(bytes: showThinPath.map{$0^94}, encoding: .utf8)!: category,
        ]

        //: if let label = label {
        if let label = label {
            //: parameters["label"] = label
            parameters[(k_commercialFormat.replacingOccurrences(of: "document", with: "b"))] = label
        }

        //: logEvent(name: "user_action", parameters: parameters)
        builder(name: (userLaunchValue.lowercased() + String(const_bitValue)), parameters: parameters)
    }

    // MARK: - 页面访问追踪

    //: func trackScreenView(screenName: String, screenClass: String) {
    func liveClass(screenName: String, screenClass: String) {
        //: Analytics.logEvent(
        Analytics.logEvent(
            //: AnalyticsEventScreenView,
            AnalyticsEventScreenView,
            //: parameters: [
            parameters: [
                //: AnalyticsParameterScreenName: screenName,
                AnalyticsParameterScreenName: screenName,
                //: AnalyticsParameterScreenClass: screenClass,
                AnalyticsParameterScreenClass: screenClass,
                //: ])
            ]
        )
    }

    // MARK: - 事件追踪

    //: func logEvent(name: String, parameters: [String: Any]? = nil) {
    func builder(name: String, parameters: [String: Any]? = nil) {
        //: Analytics.logEvent(name, parameters: parameters)
        Analytics.logEvent(name, parameters: parameters)
    }

    // MARK: - 内购事件追踪

    //: func trackPurchase(payType: String, price: Double, currency: String) {
    func trackGame(payType: String, price: Double, currency: String) {
        //: Analytics.logEvent(
        Analytics.logEvent(
            //: AnalyticsEventPurchase,
            AnalyticsEventPurchase,
            //: parameters: [
            parameters: [
                //: AnalyticsParameterPaymentType: payType,
                AnalyticsParameterPaymentType: payType,
                //: AnalyticsParameterPrice: price,
                AnalyticsParameterPrice: price,
                //: AnalyticsParameterCurrency: currency,
                AnalyticsParameterCurrency: currency,
                //: ])
            ]
        )
    }
}

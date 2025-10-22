
//: Declare String Begin

/*: "JDStatusBarStyleDefault" :*/
fileprivate let dataFeedbackQuickSalePath:[Character] = ["J","D","S","t"]
fileprivate let k_presentVersionKey:[Character] = ["a","t","u","s","B","a","r","S","t","y","l","e","D","e","f","a","u","l","t"]

/*: "JDStatusBarStyleError" :*/
fileprivate let kProposeData:String = "JDStatdivision partner"
fileprivate let userAccessTitle:String = "usBaweekly clothes"
fileprivate let data_awakeValue:String = "sacrifice path hod whererStyle"

/*: "JDStatusBarStyleSuccess" :*/
fileprivate let showGovernValue:[Character] = ["J","D","S","t","a","t","u","s","B","a","r","S","t","y","l","e","S","u"]
fileprivate let constYesterdayId:[Character] = ["c","c","e","s","s"]

/*: "2AB572" :*/
fileprivate let mainBoxPath:[Character] = ["2","A","B","5","7","2"]

/*: "F05E5E" :*/
fileprivate let app_applicationContent:[Character] = ["F","0","5","E","5","E"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingTipExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import JDStatusBarNotification
import JDStatusBarNotification
//: import UIKit
import UIKit

//: extension NSObject {
extension NSObject {
    //: @objc public func func__showStatusBarNormrlMsg(showMsg: String) {
    @objc public func allowMsg(showMsg: String) {
        //: guard !showMsg.isEmpty else { return }
        guard !showMsg.isEmpty else { return }
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleDefault")
        self.propertyOf(showMsg: showMsg, dismissTime: 1.5, styleName: (String(dataFeedbackQuickSalePath) + String(k_presentVersionKey)))
    }

    //: @objc public func func__showStatusBarErrorMsg(showMsg: String) {
    @objc public func foolishness(showMsg: String) {
        //: guard !showMsg.isEmpty else { return }
        guard !showMsg.isEmpty else { return }
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleError")
        self.propertyOf(showMsg: showMsg, dismissTime: 1.5, styleName: (String(kProposeData.prefix(6)) + String(userAccessTitle.prefix(4)) + String(data_awakeValue.suffix(6)) + "Error"))
    }

    //: func func__showStatusBarSuccessMsg(showMsg: String) {
    func through(showMsg: String) {
        //: guard !showMsg.isEmpty else { return }
        guard !showMsg.isEmpty else { return }
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleSuccess")
        self.propertyOf(showMsg: showMsg, dismissTime: 1.5, styleName: (String(showGovernValue) + String(constYesterdayId)))
    }

    //: func func__showStatusBarMsg(showMsg: String, dismissTime: TimeInterval, styleName: String) {
    func propertyOf(showMsg: String, dismissTime: TimeInterval, styleName: String) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: DispatchQueue.once(token: DispatchQueueToken_StatusBarInit, block: {
            DispatchQueue.beggarMyNeighborPolicyEnable(token: app_withoutStr, block: {
                //: NotificationPresenter.shared().updateDefaultStyle { style in
                NotificationPresenter.shared().updateDefaultStyle { style in
                    //: style.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                    style.backgroundStyle.backgroundColor = UIColor(hex: (String(mainBoxPath)))!
                    //: style.textStyle.textColor = .white
                    style.textStyle.textColor = .white
                    //: style.textStyle.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
                    style.textStyle.font = UIFont.processAcross(type: .Regular, fontSize: 14)
                    //: return style
                    return style
                }
                //: NotificationPresenter.shared().addStyle(styleName: styleName) { stype in
                NotificationPresenter.shared().addStyle(styleName: styleName) { stype in
                    //: if styleName == "JDStatusBarStyleError" {
                    if styleName == (String(kProposeData.prefix(6)) + String(userAccessTitle.prefix(4)) + String(data_awakeValue.suffix(6)) + "Error") {
                        //: stype.backgroundStyle.backgroundColor = UIColor(hex: "F05E5E")!
                        stype.backgroundStyle.backgroundColor = UIColor(hex: (String(app_applicationContent)))!
                        //: }else {
                    } else {
                        //: stype.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                        stype.backgroundStyle.backgroundColor = UIColor(hex: (String(mainBoxPath)))!
                    }
                    //: return stype
                    return stype
                }
                //: })
            })

            //: if NotificationPresenter.shared().isVisible() {
            if NotificationPresenter.shared().isVisible() {
                //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    //: NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                    NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                }
                //: }else {
            } else {
                //: NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
            }
        }
    }
}

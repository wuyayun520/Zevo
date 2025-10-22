
//: Declare String Begin

/*: "APNS Token =  :*/
fileprivate let user_wholeMsg:String = "APcontactS"

/*: "APNS Token Error:  :*/
fileprivate let data_entityFormat:String = "APNS injury save agree house"
fileprivate let notiCryTitle:String = "depth hand deadline maxn Err"

/*: "token =  :*/
fileprivate let k_schemeUrl:[Character] = ["t"]
fileprivate let k_closeMessage:String = "leave recent instanceoken = "

/*: "extra" :*/
fileprivate let app_agentValue:String = "exttonea"

/*: "Unable to register for remote notifications: :*/
fileprivate let userFingerName:[UInt8] = [0x3a,0x73,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x66,0x69,0x74,0x6f,0x6e,0x20,0x65,0x74,0x6f,0x6d,0x65,0x72,0x20,0x72,0x6f,0x66,0x20,0x72,0x65,0x74,0x73,0x69,0x67,0x65,0x72,0x20,0x6f,0x74,0x20,0x65,0x6c,0x62,0x61,0x6e,0x55]

/*: "token" :*/
fileprivate let notiPreviousName:[UInt8] = [0x6e,0x69,0x65,0x5f,0x68]

fileprivate func lifeWhen(middle num: UInt8) -> UInt8 {
    let value = Int(num) + 6
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "FCMToken" :*/
fileprivate let k_collectSwimScreenId:String = "help visibleFCMToken"

/*: _LocalPush" :*/
fileprivate let dataGraduateValue:String = "file equity little container raw_Local"
fileprivate let dataInstructionStr:String = "Pushlabel doc"

/*: "identifier" :*/
fileprivate let notiClothesFormat:String = "amentifi"
fileprivate let showOutsideData:String = "retainr"

/*: "fcm_options" :*/
fileprivate let appWriteTitle:[Character] = ["f","c","m"]
fileprivate let main_commercialId:[Character] = ["_","o","p","t","i","o","n","s"]

/*: "image" :*/
fileprivate let dataWantName:[UInt8] = [0xfd,0xf9,0xf5,0xf3,0xf1]

private func pendingProfit(agency num: UInt8) -> UInt8 {
    return num ^ 148
}

/*: "本地推送通知 -- 用户未授权(.notDetermined)" :*/
fileprivate let mainGoUrl:[UInt8] = [0xeb,0xa1,0xb1,0xea,0xa1,0xb5,0xeb,0x93,0xad,0xee,0x85,0x86,0xee,0x85,0x9f,0xec,0xa4,0xaa,0x25,0x32,0x32,0x25,0xec,0x99,0xad,0xeb,0x8d,0xbc,0xeb,0xa1,0xaf,0xeb,0x93,0x8d,0xeb,0xa2,0x88,0x2d,0x33,0x73,0x74,0x79,0x49,0x6a,0x79,0x6a,0x77,0x72,0x6e,0x73,0x6a,0x69,0x2e]

fileprivate func innerLoad(outer num: UInt8) -> UInt8 {
    let value = Int(num) - 5
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "本地推送通知 -- 用户未授权(.denied)" :*/
fileprivate let dataBroadcastPath:String = "本地\u{63a8}送"
fileprivate let userStartUrl:String = " 用户未授权(.dcontext hi succeed"
fileprivate let dataDownFiniteFormat:String = "enied)builder temporary"

/*: "本地推送通知 -- 用户未授权(.ephemeral)" :*/
fileprivate let constMemoryMemberData:[Character] = ["本","地","\u{63a8}","送","通","知"," ","-","-"," ","用","户"]
fileprivate let kSpringIllegalText:String = "未授权(."
fileprivate let show_miniUrl:String = "allow stroke deadline gainral)"

/*: "本地推送通知 -- 用户未授权" :*/
fileprivate let dataWorldwideName:String = "\u{672c}地推送"
fileprivate let show_secondTitle:String = " 用户未授权"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AppBaseDelegate+APNS.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/23.
//

//: import FirebaseCore
import FirebaseCore
//: import FirebaseMessaging
import FirebaseMessaging
//: import Foundation
import Foundation
//: import UserNotifications
import UserNotifications

//: public extension AppDelegateHelper {
public extension AppBaseDelegate {
    /// 成功的回调
    //: class func application(didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
    class func choose(didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        //: let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        //: Messaging.messaging().apnsToken = deviceToken
        Messaging.messaging().apnsToken = deviceToken
        //: printLog(message: "APNS Token = \(deviceStr)")
        printLog(message: (user_wholeMsg.replacingOccurrences(of: "contact", with: "N") + " Token = ") + "\(deviceStr)")
        //: Messaging.messaging().token { token, error in
        Messaging.messaging().token { token, error in
            //: if let error = error {
            if let error = error {
                //: UploadLogTool.writeLog(msg: "APNS Token Error: \(error).")
                FinishThen.onicial(msg: (String(data_entityFormat.prefix(5)) + "Toke" + String(notiCryTitle.suffix(5)) + "or: ") + "\(error).")
                //: } else if let token = token {
            } else if let token = token {
                //: printLog(message: "token = \(token)")
                printLog(message: (String(k_schemeUrl) + String(k_closeMessage.suffix(7))) + "\(token)")
            }
        }
    }

    /// 收到远程推送（kill app）
    //: class func application(didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
    class func only(didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
        //: Messaging.messaging().appDidReceiveMessage(userInfo)
        Messaging.messaging().appDidReceiveMessage(userInfo)
        //: if UIApplication.shared.applicationState != .active {
        if UIApplication.shared.applicationState != .active {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: if userInfo.keys.contains("extra") {
                if userInfo.keys.contains((app_agentValue.replacingOccurrences(of: "tone", with: "r"))) {
                    //: let extraStr = userInfo["extra"] as? String ?? ""
                    let extraStr = userInfo[(app_agentValue.replacingOccurrences(of: "tone", with: "r"))] as? String ?? ""
                    //: TalkingAPNSManager.share.APNSUserInfoStr = extraStr
                    CourseReactiveCompatible.share.APNSUserInfoStr = extraStr
                    //: TalkingAPNSManager.share.launchFromApns = true
                    CourseReactiveCompatible.share.launchFromApns = true
                }
            }
        }
    }

    /// 失败的回调
    //: class func application(didFailToRegisterForRemoteNotificationsWithError error: Error) {
    class func fragment(didFailToRegisterForRemoteNotificationsWithError error: Error) {
        //: printLog(message: "Unable to register for remote notifications:\(error.localizedDescription)")
        printLog(message: String(bytes: userFingerName.reversed(), encoding: .utf8)! + "\(error.localizedDescription)")
    }

    /// 点击消息（app运行中）
    //: class func userNotificationCenter(didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
    class func sumThin(didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        //: if UIApplication.shared.applicationState == .active {
        if UIApplication.shared.applicationState == .active {
            //: TalkingAPNSManager.share.APNSUserInfoStr = ""
            CourseReactiveCompatible.share.APNSUserInfoStr = ""
            //: TalkingAPNSManager.share.launchFromApns = false
            CourseReactiveCompatible.share.launchFromApns = false

            //: } else {
        } else {
            //: let userInfo = response.notification.request.content.userInfo
            let userInfo = response.notification.request.content.userInfo
            //: if userInfo.keys.contains("extra") {
            if userInfo.keys.contains((app_agentValue.replacingOccurrences(of: "tone", with: "r"))) {
                //: let extraStr = userInfo["extra"] as? String ?? ""
                let extraStr = userInfo[(app_agentValue.replacingOccurrences(of: "tone", with: "r"))] as? String ?? ""
                //: TalkingAPNSManager.share.APNSUserInfoStr = extraStr
                CourseReactiveCompatible.share.APNSUserInfoStr = extraStr
                //: TalkingAPNSManager.share.launchFromApns = true
                CourseReactiveCompatible.share.launchFromApns = true
            }
        }

        //: completionHandler()
        completionHandler()
    }

    /// MessagingDelegate
    //: class func messaging(didReceiveRegistrationToken fcmToken: String?) {
    class func evaluate(didReceiveRegistrationToken fcmToken: String?) {
        //: let dataDict: [String: String] = ["token": fcmToken ?? ""]
        let dataDict: [String: String] = [String(bytes: notiPreviousName.map{lifeWhen(middle: $0)}, encoding: .utf8)!: fcmToken ?? ""]
        //: NotificationCenter.default.post(
        NotificationCenter.default.post(
            //: name: Notification.Name("FCMToken"),
            name: Notification.Name((String(k_collectSwimScreenId.suffix(8)))),
            //: object: nil,
            object: nil,
            //: userInfo: dataDict
            userInfo: dataDict
        )
    }
}

// MARK: - 本地推送

//: extension AppDelegateHelper {
extension AppBaseDelegate {
    /// 构建通知内容，发送本地通知
    /// - Parameters:
    ///   - uid: 用户Id（用于identifier）
    ///   - title: 标题
    ///   - body: 内容
    ///   - imageUrl: 图片地址
    //: class func pushLocalNotification(uid: String? = nil,
    class func smallFeature(uid: String? = nil,
                            //: title: String? = nil,
                            title: String? = nil,
                            //: body: String,
                            body: String,
                            //: imageUrl: String? = nil) {
                            imageUrl: String? = nil)
    {
        //: UNUserNotificationCenter.current().getNotificationSettings { settings in
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            //: switch settings.authorizationStatus {
            switch settings.authorizationStatus {
            //: case .provisional, .authorized:
            case .provisional, .authorized: // 已授权，发送本地推送通知
                //: let content = UNMutableNotificationContent()
                let content = UNMutableNotificationContent()
                //: content.title = title ?? ""
                content.title = title ?? ""
                //: content.body = body
                content.body = body
                //: content.sound = UNNotificationSound.default
                content.sound = UNNotificationSound.default
                //: let identifier = (uid != nil) ? uid:"\(AppName)_LocalPush"
                let identifier = (uid != nil) ? uid : "\(k_warnUrl)" + (String(dataGraduateValue.suffix(6)) + String(dataInstructionStr.prefix(4)))
                //: let userInfo = ["identifier": identifier!] as [String: Any]
                let userInfo = [(notiClothesFormat.replacingOccurrences(of: "am", with: "id") + showOutsideData.replacingOccurrences(of: "retain", with: "e")): identifier!] as [String: Any]
                //: content.userInfo = userInfo
                content.userInfo = userInfo
                //: guard let imgStr = imageUrl else {
                guard let imgStr = imageUrl else {
                    //: local_notificationPush(content)
                    destinationAccess(content)
                    //: return
                    return
                }
                /// 带图片的本地通知
                //: let newStr = imgStr.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain)
                let newStr = imgStr.replacingOccurrences(of: userDismissUrl.allTitle(), with: userDeviceIndexStr)
                //: content.userInfo["fcm_options"] = ["image": newStr]
                content.userInfo[(String(appWriteTitle) + String(main_commercialId))] = [String(bytes: dataWantName.map{pendingProfit(agency: $0)}, encoding: .utf8)!: newStr]
                //: FIRMessagingExtensionHelper().populateNotificationContent(content) { content in
                FIRMessagingExtensionHelper().populateNotificationContent(content) { content in
                    //: local_notificationPush(content)
                    destinationAccess(content)
                }

            //: case .notDetermined:
            case .notDetermined:
                //: printLog(message: "本地推送通知 -- 用户未授权(.notDetermined)")
                printLog(message: String(bytes: mainGoUrl.map{innerLoad(outer: $0)}, encoding: .utf8)!)
            //: case .denied:
            case .denied:
                //: printLog(message: "本地推送通知 -- 用户未授权(.denied)")
                printLog(message: (dataBroadcastPath + "通知 --" + String(userStartUrl.prefix(9)) + String(dataDownFiniteFormat.prefix(6))))
            //: case .ephemeral:
            case .ephemeral:
                //: printLog(message: "本地推送通知 -- 用户未授权(.ephemeral)")
                printLog(message: (String(constMemoryMemberData) + kSpringIllegalText.capitalized + "epheme" + String(show_miniUrl.suffix(4))))
            //: @unknown default:
            @unknown default:
                //: printLog(message: "本地推送通知 -- 用户未授权")
                printLog(message: (dataWorldwideName + "通知 --" + show_secondTitle.capitalized))
            }
        }
    }

    /// 根据content发送本地通知
    /// - Parameter content: 通知内容
    //: private class func local_notificationPush(_ content: UNNotificationContent) {
    private class func destinationAccess(_ content: UNNotificationContent) {
        //: let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
        let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
        //: let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        //: if let identifier = content.userInfo["identifier"] as? String {
        if let identifier = content.userInfo[(notiClothesFormat.replacingOccurrences(of: "am", with: "id") + showOutsideData.replacingOccurrences(of: "retain", with: "e"))] as? String {
            //: let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
            let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
            //: UNUserNotificationCenter.current().add(request) { _ in
            UNUserNotificationCenter.current().add(request) { _ in
            }
        }
    }

    /// 移除已经展示的推送
    /// - Parameter identifier: 通知标识符（nil：移除所有）
    //: class func local_removeDeliveredNotification(identifier: String?) {
    class func sustenance(identifier: String?) {
        //: guard let idf = identifier else {
        guard let idf = identifier else {
            //: UNUserNotificationCenter.current().removeAllDeliveredNotifications()
            UNUserNotificationCenter.current().removeAllDeliveredNotifications()
            //: return
            return
        }
        //: UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [idf])
        UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [idf])
    }
}

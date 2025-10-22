
//: Declare String Begin

/*: "identifier" :*/
fileprivate let userLatMessage:[UInt8] = [0x7d,0x70,0x71,0x7a,0x60,0x7d,0x72,0x7d,0x71,0x66]

private func needFast(alive num: UInt8) -> UInt8 {
    return num ^ 20
}

/*: "token" :*/
fileprivate let kExitStr:[UInt8] = [0x9c,0x87,0x83,0x8d,0x86]

private func manualVantage(reflection num: UInt8) -> UInt8 {
    return num ^ 232
}

/*: "authCode" :*/
fileprivate let app_agreeStr:[UInt8] = [0x9c,0x88,0x89,0x95,0xbe,0x92,0x99,0x98]

private func rewardConstraint(age num: UInt8) -> UInt8 {
    return num ^ 253
}

/*: "nickname" :*/
fileprivate let user_accessText:[Character] = ["n","i","c","k","n","a","m"]
fileprivate let const_cityPickStr:[Character] = ["e"]

/*: "授权请求失败未知原因" :*/
fileprivate let showFoundationMidData:[Character] = ["授","权","请"]
fileprivate let noti_sphereName:String = "求\u{5931}败\u{672a}知原因"

/*: "用户取消了授权请求" :*/
fileprivate let kDisagreeText:String = "\u{7528}户\u{53d6}消了\u{6388}权\u{8bf7}"
fileprivate let appZzMessage:String = "求"

/*: "授权请求失败" :*/
fileprivate let userSoonEarlyStr:String = "\u{6388}"
fileprivate let main_ageStr:[Character] = ["权","请","求","\u{5931}","败"]

/*: "授权请求响应无效" :*/
fileprivate let appAnswerId:[Character] = ["授","\u{6743}","请","求","响"]
fileprivate let app_insertUrl:[Character] = ["应","无","效"]

/*: "未能处理授权请求" :*/
fileprivate let showMultiMsg:String = "未能处理授negative"
fileprivate let mainBarName:[Character] = ["\u{8bf7}","求"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TextControllerDelegate.swift
//  AbroadTalking
//
//  Created by young on 2022/8/30.
//

//: import AuthenticationServices
import AuthenticationServices
//: import UIKit
import UIKit

//: enum AppLeLoginError: Error {
enum TriumphError: Error {
    //: case unknow
    case unknow
    //: case canceled
    case canceled
    //: case failed
    case failed
    //: case invalidResponse
    case invalidResponse
    //: case notHandled
    case notHandled
}

//: typealias LoginCompletionBlock = ([String: String]?) -> Void
typealias LoginCompletionBlock = ([String: String]?) -> Void

//: class AppleLoginManager: NSObject, ASAuthorizationControllerDelegate {
class TextControllerDelegate: NSObject, ASAuthorizationControllerDelegate {
    //: private var block: LoginCompletionBlock?
    private var block: LoginCompletionBlock?
    //: static let shared = AppleLoginManager()
    static let shared = TextControllerDelegate()
    //: private override init() { super.init() }
    override private init() { super.init() }
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    /// 登录按钮
    /// - Parameter closure: 回调
    //: func login(closure: @escaping LoginCompletionBlock) {
    func cancel(closure: @escaping LoginCompletionBlock) {
        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: self.block = closure
            self.block = closure
            //: let appleIDProvider = ASAuthorizationAppleIDProvider()
            let appleIDProvider = ASAuthorizationAppleIDProvider()
            //: let appleIDRequest = appleIDProvider.createRequest()
            let appleIDRequest = appleIDProvider.createRequest()
            // 用户授权请求的联系信息
            //: appleIDRequest.requestedScopes = [.fullName, .email]
            appleIDRequest.requestedScopes = [.fullName, .email]
            //: let authorizationController = ASAuthorizationController(authorizationRequests: [appleIDRequest])
            let authorizationController = ASAuthorizationController(authorizationRequests: [appleIDRequest])
            //: authorizationController.delegate = self
            authorizationController.delegate = self
            //: authorizationController.presentationContextProvider = self
            authorizationController.presentationContextProvider = self
            //: authorizationController.performRequests()
            authorizationController.performRequests()
        }
    }

    // MARK: - ASAuthorizationControllerDelegate

    //: @available(iOS 13.0, *)
    @available(iOS 13.0, *)
    //: func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
    func authorizationController(controller _: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        //: switch authorization.credential {
        switch authorization.credential {
        //: case let appleIDCredential as ASAuthorizationAppleIDCredential:
        case let appleIDCredential as ASAuthorizationAppleIDCredential:
            //: let user = appleIDCredential.user
            let user = appleIDCredential.user
            //: let identityTokenStr = String(data: appleIDCredential.identityToken!, encoding: .utf8)
            let identityTokenStr = String(data: appleIDCredential.identityToken!, encoding: .utf8)
            //: let authorizationCodeStr = String(data: appleIDCredential.authorizationCode!, encoding: .utf8)
            let authorizationCodeStr = String(data: appleIDCredential.authorizationCode!, encoding: .utf8)
            //: var params: [String: String]?
            var params: [String: String]?
            //: if (identityTokenStr != nil) && (authorizationCodeStr != nil) {
            if (identityTokenStr != nil) && (authorizationCodeStr != nil) {
                //: params = ["identifier": user,
                params = [String(bytes: userLatMessage.map{needFast(alive: $0)}, encoding: .utf8)!: user,
                          //: "token": identityTokenStr!,
                          String(bytes: kExitStr.map{manualVantage(reflection: $0)}, encoding: .utf8)!: identityTokenStr!,
                          //: "authCode": authorizationCodeStr!]
                          String(bytes: app_agreeStr.map{rewardConstraint(age: $0)}, encoding: .utf8)!: authorizationCodeStr!]

                //: if let familyName = appleIDCredential.fullName?.familyName, let givenName = appleIDCredential.fullName?.givenName {
                if let familyName = appleIDCredential.fullName?.familyName, let givenName = appleIDCredential.fullName?.givenName {
                    //: let nickname = "\(givenName) \(familyName)"
                    let nickname = "\(givenName) \(familyName)"
                    //: params!["nickname"] = nickname
                    params![(String(user_accessText) + String(const_cityPickStr))] = nickname
                    //: Defaults.set(nickname, forKey: TalkingAppleLoginNickNameKey)
                    user_liveMsg.set(nickname, forKey: noti_descriptionMessage)
                    //: } else {
                } else {
                    //: let nickname = Defaults.string(forKey: TalkingAppleLoginNickNameKey)
                    let nickname = user_liveMsg.string(forKey: noti_descriptionMessage)
                    //: if nickname != nil {
                    if nickname != nil {
                        //: params!["nickname"] = nickname
                        params![(String(user_accessText) + String(const_cityPickStr))] = nickname
                    }
                }
            }

            //: guard let block = block else { return }
            guard let block = block else { return }
            //: block(params)
            block(params)
        //: case is ASPasswordCredential:
        case is ASPasswordCredential:
//            let username = passwordCredential.user
//            let password = passwordCredential.password
            //: break
            break
        //: default:
        default:
            //: guard let block = block else { return }
            guard let block = block else { return }
            //: block(nil)
            block(nil)
            //: break
        }
    }

    //: @available(iOS 13.0, *)
    @available(iOS 13.0, *)
    //: private func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: AppLeLoginError) {
    private func authorizationController(controller _: ASAuthorizationController, didCompleteWithError error: TriumphError) {
        //: switch error {
        switch error {
        //: case .unknow:
        case .unknow:
            //: printLog(message: "授权请求失败未知原因")
            printLog(message: (String(showFoundationMidData) + noti_sphereName))
        //: case .canceled:
        case .canceled:
            //: printLog(message: "用户取消了授权请求")
            printLog(message: (kDisagreeText + appZzMessage.capitalized))
        //: case .failed:
        case .failed:
            //: printLog(message: "授权请求失败")
            printLog(message: (userSoonEarlyStr + String(main_ageStr)))
        //: case .invalidResponse:
        case .invalidResponse:
            //: printLog(message: "授权请求响应无效")
            printLog(message: (String(appAnswerId) + String(app_insertUrl)))
        //: case .notHandled:
        case .notHandled:
            //: printLog(message: "未能处理授权请求")
            printLog(message: (showMultiMsg.replacingOccurrences(of: "negative", with: "权") + String(mainBarName)))
        }

        //: guard let block = block else { return }
        guard let block = block else { return }
        //: block(nil)
        block(nil)
    }
}

//: extension AppleLoginManager: ASAuthorizationControllerPresentationContextProviding {
extension TextControllerDelegate: ASAuthorizationControllerPresentationContextProviding {
    //: @available(iOS 13.0, *)
    @available(iOS 13.0, *)

    // MARK: - ASAuthorizationControllerPresentationContextProviding

    //: func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
    func presentationAnchor(for _: ASAuthorizationController) -> ASPresentationAnchor {
        //: return DirtyMacroDefine.getWindow()
        return DirtyMacroDefine.effectRequire()
    }
}

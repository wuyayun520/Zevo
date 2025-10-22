
//: Declare String Begin

/*: "/dist/loungePlus/index.html" :*/
fileprivate let main_screenStr:String = "/disround beauty discover"
fileprivate let noti_writingPath:String = "gePlcarrier every welcome explore thread"
fileprivate let data_gestureName:String = "ex.htmlflag smart"

/*: "PremiumStarPlanBanner" :*/
fileprivate let appMinuteAdviseStr:[Character] = ["P","r","e","m","i","u"]
fileprivate let notiBurnPath:String = "resign hostmSta"
fileprivate let const_howeverName:String = "simultaneously tender suit shallnBanner"

/*: "uid" :*/
fileprivate let dataPlayPath:String = "uadministrative"

/*: "mfChatGift" :*/
fileprivate let noti_remarkMessage:String = "mfChaengage sneak slim inside"
fileprivate let appNorData:[Character] = ["t"]

/*: "mfChat" :*/
fileprivate let kBounceClearlyText:[Character] = ["m","f","C","h","a","t"]

/*: "user" :*/
fileprivate let user_voiceValue:String = "ulovelyer"

/*: "Please verification first" :*/
fileprivate let showNumbereractionValue:String = "Pleasebank south speak yesterday"
fileprivate let mainPolicyValue:String = "ficacompeteo"
fileprivate let userConcentrationMsg:[Character] = ["n"," ","f","i","r","s","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HostBannerModel.swift
//  AbroadTalking
//
//  Created by young on 2022/9/9.
//

//: import UIKit
import UIKit

//: struct SocialAdBannerModel: HandyJSON {
struct HostBannerModel: HandyJSON {
    // 广告图
    //: var pic: String = ""
    var pic: String = ""
    // 跳转链接
    //: var url: String = ""
    var url: String = ""
    // 跳转类型 0=无，1=跳转网页，2=跳转原生页面，3=游戏跳转，4=外部网页
    //: var type = 0
    var type = 0
    // 游戏宽高
    //: var widthHeight: Double?
    var widthHeight: Double?
    // 广告小图
    //: var thumbnail: String = ""
    var thumbnail: String = ""
}

// MARK: - Event

//: extension SocialAdBannerModel {
extension HostBannerModel {
    /// 跳转事件
    //: static func jumpEvent(model: SocialAdBannerModel) {
    static func bubble(model: HostBannerModel) {
        //: if model.type == 1 {
        if model.type == 1 { // 网页跳转
            //: let newUrl: String = model.url
            let newUrl: String = model.url
            //: if newUrl.contains("/dist/loungePlus/index.html") {
            if newUrl.contains((String(main_screenStr.prefix(4)) + "t/loun" + String(noti_writingPath.prefix(4)) + "us/ind" + String(data_gestureName.prefix(7)))) {
                //: SightReactiveCompatible.share.func__pushToSubscribePageWebVC()
                SightReactiveCompatible.share.stripe()
                //: return
                return
            }
            //: SightReactiveCompatible.share.func__pushToWebVC(urlStr: model.url)
            SightReactiveCompatible.share.getConfig(urlStr: model.url)

            //: } else if model.type == 2 {
        } else if model.type == 2 { // 原生跳转
            //: guard let url = URL(string: model.url),
            guard let url = URL(string: model.url),
                  //: let components = URLComponents(url: url, resolvingAgainstBaseURL: false) else {
                  let components = URLComponents(url: url, resolvingAgainstBaseURL: false)
            else {
                //: return
                return
            }
            //: if model.url.contains("PremiumStarPlanBanner") { // 巨星计划
            if model.url.contains((String(appMinuteAdviseStr) + String(notiBurnPath.suffix(4)) + "rPla" + String(const_howeverName.suffix(7)))) { // 巨星计划
                //: SocialAdBannerModel.premiumStarPlanBanner()
                HostBannerModel.toppingOrMyNor()
                //: return
                return
            }

            //: if let uidItem = components.queryItems?.first(where: { $0.name == "uid" }) {
            if let uidItem = components.queryItems?.first(where: { $0.name == (dataPlayPath.replacingOccurrences(of: "administrative", with: "id")) }) {
                //: let uid = uidItem.value ?? ""
                let uid = uidItem.value ?? ""
                //: if model.url.contains("mfChatGift") { // 私聊打开礼物面板
                if model.url.contains((String(noti_remarkMessage.prefix(5)) + "tGif" + String(appNorData))) { // 私聊打开礼物面板
                    //: SightReactiveCompatible.share.func__pushToPriveteChatVC(chatID: uid) { vc in
                    SightReactiveCompatible.share.doingTransform(chatID: uid) { vc in
                        //: vc.msgInputView.clickgiftBtn()
                        vc.msgInputView.bindMessage()
                    }
                    //: } else if model.url.contains("mfChat") { // 私聊
                } else if model.url.contains((String(kBounceClearlyText))) { // 私聊
                    //: SightReactiveCompatible.share.func__pushToPriveteChatVC(chatID: uid)
                    SightReactiveCompatible.share.doingTransform(chatID: uid)
                    //: } else if model.url.contains("user") { // 用户详情
                } else if model.url.contains((user_voiceValue.replacingOccurrences(of: "lovely", with: "s"))) { // 用户详情
                    //: SightReactiveCompatible.share.func__pushToUserDetailVC(uid: uid)
                    SightReactiveCompatible.share.temporaryUid(uid: uid)
                }
            }

            //: } else if model.type == 3 {
        } else if model.type == 3 { // 游戏跳转
            //: var config = TalkingWebConfig()
            var config = RoundConfig()
            //: config.widthHeight = model.widthHeight
            config.widthHeight = model.widthHeight
            //: config.clearBgColor = true
            config.clearBgColor = true
            //: SightReactiveCompatible.share.func__pushToWebVC(urlStr: model.url, webConfig: config)
            SightReactiveCompatible.share.getConfig(urlStr: model.url, webConfig: config)

            //: } else if model.type == 4 {
        } else if model.type == 4 { // 外部网页
            //: if let url = URL(string: model.url) {
            if let url = URL(string: model.url) {
                //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }

    /// 加入巨星计划
    //: static func premiumStarPlanBanner() {
    static func toppingOrMyNor() {
        //: if CompositionReactiveCompatible.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue ||
        if CompositionReactiveCompatible.share.loginUserMode.isTPAuth == GiftMeasurable.isSuccessed.rawValue ||
            //: CompositionReactiveCompatible.share.loginUserMode.isRealPersonAuth == false {
            CompositionReactiveCompatible.share.loginUserMode.isRealPersonAuth == false
        { // 真人认证成功 || 不需要真人认证
            //: if CompositionReactiveCompatible.share.loginUserMode.premiumStarApplyStatus != PStarStatus.isOnGoing.rawValue {
            if CompositionReactiveCompatible.share.loginUserMode.premiumStarApplyStatus != RedDwarfFindComparable.isOnGoing.rawValue {
                //: SightReactiveCompatible.share.func__pushToWebVC(webViewType: .StarPlanIndex)
                SightReactiveCompatible.share.elementOfResume(webViewType: .StarPlanIndex)
                //: } else {
            } else {
                //: SightReactiveCompatible.share.func__pushToWebVC(webViewType: .StarPlanAudit)
                SightReactiveCompatible.share.elementOfResume(webViewType: .StarPlanAudit)
            }
            //: } else if CompositionReactiveCompatible.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if CompositionReactiveCompatible.share.loginUserMode.isTPAuth == GiftMeasurable.isOnGoing.rawValue { // 真人认证审核中
            //: NSObject().func__showStatusBarSuccessMsg(showMsg: "Please verification first".localized)
            NSObject().through(showMsg: (String(showNumbereractionValue.prefix(6)) + " veri" + mainPolicyValue.replacingOccurrences(of: "compete", with: "ti") + String(userConcentrationMsg)).localized)
            //: let vc = TalkingFinalVerificationVC()
            let vc = RelevantToolVerificationVc()
            //: SightReactiveCompatible.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            SightReactiveCompatible.share.reserveUp()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: NSObject().func__showStatusBarSuccessMsg(showMsg: "Please verification first".localized)
            NSObject().through(showMsg: (String(showNumbereractionValue.prefix(6)) + " veri" + mainPolicyValue.replacingOccurrences(of: "compete", with: "ti") + String(userConcentrationMsg)).localized)
            //: SightReactiveCompatible.share.func__pushUserVerifyController(toast: nil)
            SightReactiveCompatible.share.bringExposure(toast: nil)
        }
    }
}

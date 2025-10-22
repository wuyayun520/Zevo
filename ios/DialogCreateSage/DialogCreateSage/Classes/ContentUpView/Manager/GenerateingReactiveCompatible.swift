
//: Declare String Begin

/*: "content" :*/
fileprivate let data_laughNegativeMessage:String = "agencyo"
fileprivate let kReadyBackMessage:String = "tagetag"

/*: "jumpKey" :*/
fileprivate let notiFlowResentText:String = "action workerjumpKe"
fileprivate let notiBottomValue:String = "paper"

/*: "uploadUserHeaderPic" :*/
fileprivate let app_sparkText:[Character] = ["u","p","l","o","a"]
fileprivate let data_attributeStr:[Character] = ["d"]
fileprivate let mainPotValue:[Character] = ["U","s","e","r","H","e","a","d","e","r","P","i","c"]

/*: "truePersonAuth" :*/
fileprivate let constQuantityeractionUrl:[Character] = ["t","r","u","e","P","e","r","s","o","n","A"]
fileprivate let show_findCareTitle:String = "UTH"

/*: "yyyy-MM-dd" :*/
fileprivate let noti_lifeStr:String = "yyyy-male expected"
fileprivate let user_visitorFormat:[Character] = ["d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GenerateingReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/17.
//

//: import UIKit
import UIKit

//: enum PopupWindowType: CaseIterable {
enum FinishWindowType: CaseIterable {
    //: case sign_in
    case sign_in // 签到
    //: case video_Cover
    case video_Cover // 上传视频封面提醒弹窗
    //: case startLive_Tips
    case startLive_Tips // 开播提醒弹窗
    //: case video_Call
    case video_Call // 主动拨打弹窗
    //: case face_Verification
    case face_Verification // 需要真人认证弹窗
    //: case Web_Subscribe
    case Web_Subscribe // 会员订阅弹窗
    //: case Attestation_Refuse
    case Attestation_Refuse // 真人认证，头像上传，被拒绝时提示弹窗
    //: case New_Guidance
    case New_Guidance // 主播引导弹窗（女性首次注册，未完成全部新人任务）
    //: case Discount_Recharge
    case Discount_Recharge // 充值优惠弹窗
}

//: class TalkingPopupWindowManager: NSObject {
class GenerateingReactiveCompatible: NSObject {
    //: var dataSource = Array<PopupWindowType>()
    var dataSource = [FinishWindowType]()
    //: var alertQueue: PublishSubject<PopupWindowType> = PublishSubject<PopupWindowType>()
    var alertQueue: PublishSubject<FinishWindowType> = .init()
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: private var isShowLiveTipsView = false
    private var isShowLiveTipsView = false
    /// 通话中，结束后再显示审核拒绝提示弹窗
    //: private var isLateronRefuseView = false
    private var isLateronRefuseView = false

    //: var refuseViewData = [String: String]()
    var refuseViewData = [String: String]()

    //: static let shared = TalkingPopupWindowManager()
    static let shared = GenerateingReactiveCompatible()
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: setObserver()
        sumTable()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: extension TalkingPopupWindowManager {
extension GenerateingReactiveCompatible {
    //: func setObserver() {
    func sumTable() {
        //: alertQueue.asObservable().subscribe(onNext: { [weak self]  type in
        alertQueue.asObservable().subscribe(onNext: { [weak self] type in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.dataSource.append(type)
            self.dataSource.append(type)
            //: self.showAlert()
            self.language()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: NotificationCenter.default.addObserver(self, selector: #selector(showRefuseView), name: VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(zonePlace), name: kReasonDataName, object: nil)
    }

    //: func setHomePopUpWindow() {
    func upward() {
        // 默认模式, 男性, 未订阅
        //: if CompositionReactiveCompatible.share.loginUserMode.jumpType == 0,
        if CompositionReactiveCompatible.share.loginUserMode.jumpType == 0,
           //: CompositionReactiveCompatible.share.appUserConfigMode.payWinType == 2,
           CompositionReactiveCompatible.share.appUserConfigMode.payWinType == 2,
           //: CompositionReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue,
           CompositionReactiveCompatible.share.appStatus == ColumnExInsetTarget.normal.rawValue,
           //: CompositionReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue,
           CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.male.rawValue,
           //: CompositionReactiveCompatible.share.loginUserMode.loungePlus == false {
           CompositionReactiveCompatible.share.loginUserMode.loungePlus == false
        {
            //: self.alertQueue.onNext(PopupWindowType.Web_Subscribe)
            self.alertQueue.onNext(FinishWindowType.Web_Subscribe)
        }

        //: if  CompositionReactiveCompatible.share.loginUserMode.showSignInPage && CompositionReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue && CompositionReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
        if CompositionReactiveCompatible.share.loginUserMode.showSignInPage, CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.male.rawValue, CompositionReactiveCompatible.share.appStatus != ColumnExInsetTarget.special.rawValue {
            //: self.alertQueue.onNext(PopupWindowType.sign_in)
            self.alertQueue.onNext(FinishWindowType.sign_in)
        }

        //: if CompositionReactiveCompatible.share.loginUserMode.isNaUser == false,
        if CompositionReactiveCompatible.share.loginUserMode.isNaUser == false,
           //: CompositionReactiveCompatible.share.appUserConfigMode.videoCover.count > 0,
           CompositionReactiveCompatible.share.appUserConfigMode.videoCover.count > 0,
           //: CompositionReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue,
           CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.female.rawValue,
           //: CompositionReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
           CompositionReactiveCompatible.share.appStatus != ColumnExInsetTarget.special.rawValue
        {
            //: self.alertQueue.onNext(PopupWindowType.video_Cover)
            self.alertQueue.onNext(FinishWindowType.video_Cover)
        }

        //: if CompositionReactiveCompatible.share.appUserConfigMode.showNewGuidance, CompositionReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue && CompositionReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
        if CompositionReactiveCompatible.share.appUserConfigMode.showNewGuidance, CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.female.rawValue, CompositionReactiveCompatible.share.appStatus != ColumnExInsetTarget.special.rawValue {
            //: self.alertQueue.onNext(PopupWindowType.New_Guidance)
            self.alertQueue.onNext(FinishWindowType.New_Guidance)
        }

        //: if CompositionReactiveCompatible.share.appUserConfigMode.headPicRejectNotice.count > 0 && CompositionReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue && CompositionReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
        if CompositionReactiveCompatible.share.appUserConfigMode.headPicRejectNotice.count > 0, CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.female.rawValue, CompositionReactiveCompatible.share.appStatus != ColumnExInsetTarget.special.rawValue {
            //: refuseViewData["content"] = CompositionReactiveCompatible.share.appUserConfigMode.headPicRejectNotice
            refuseViewData[(data_laughNegativeMessage.replacingOccurrences(of: "agency", with: "c") + kReadyBackMessage.replacingOccurrences(of: "tag", with: "nt"))] = CompositionReactiveCompatible.share.appUserConfigMode.headPicRejectNotice
            //: refuseViewData["jumpKey"] = "uploadUserHeaderPic"
            refuseViewData[(String(notiFlowResentText.suffix(6)) + notiBottomValue.replacingOccurrences(of: "paper", with: "y"))] = (String(app_sparkText) + String(data_attributeStr) + String(mainPotValue))
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(FinishWindowType.Attestation_Refuse)
        }

        //: if CompositionReactiveCompatible.share.appUserConfigMode.realPicRejectNotice.count > 0 && CompositionReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue && CompositionReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
        if CompositionReactiveCompatible.share.appUserConfigMode.realPicRejectNotice.count > 0, CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.female.rawValue, CompositionReactiveCompatible.share.appStatus != ColumnExInsetTarget.special.rawValue {
            //: refuseViewData["content"] = CompositionReactiveCompatible.share.appUserConfigMode.realPicRejectNotice
            refuseViewData[(data_laughNegativeMessage.replacingOccurrences(of: "agency", with: "c") + kReadyBackMessage.replacingOccurrences(of: "tag", with: "nt"))] = CompositionReactiveCompatible.share.appUserConfigMode.realPicRejectNotice
            //: refuseViewData["jumpKey"] = "truePersonAuth"
            refuseViewData[(String(notiFlowResentText.suffix(6)) + notiBottomValue.replacingOccurrences(of: "paper", with: "y"))] = (String(constQuantityeractionUrl) + show_findCareTitle.lowercased())
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(FinishWindowType.Attestation_Refuse)
        }

        //: if CompositionReactiveCompatible.share.appUserConfigMode.showMainPageDiscount == 1 {
        if CompositionReactiveCompatible.share.appUserConfigMode.showMainPageDiscount == 1 {
            //: self.alertQueue.onNext(PopupWindowType.Discount_Recharge)
            self.alertQueue.onNext(FinishWindowType.Discount_Recharge)
        }
    }

    //: func startLivePopUpWindow() {
    func decideWindow() {
        //: self.alertQueue.onNext(PopupWindowType.startLive_Tips)
        self.alertQueue.onNext(FinishWindowType.startLive_Tips)
    }

    /// 主动拨打弹窗
    //: func videoCallPopUpWindow() {
    func minimumImage() {
        //: self.alertQueue.onNext(PopupWindowType.video_Call)
        self.alertQueue.onNext(FinishWindowType.video_Call)
    }

    /// 需要真人认证弹窗
    //: func faceVerificationPopUpWindow() {
    func nuclearFamilyConversion() {
        //: self.alertQueue.onNext(PopupWindowType.face_Verification)
        self.alertQueue.onNext(FinishWindowType.face_Verification)
    }

    /// 真人认证，头像上传，被拒绝时提示弹窗
    //: func attestationRefusePopUpWindow(dic: [String: Any]) {
    func anPageDic(dic: [String: Any]) {
        //: refuseViewData["content"] = dic["content"] as? String
        refuseViewData[(data_laughNegativeMessage.replacingOccurrences(of: "agency", with: "c") + kReadyBackMessage.replacingOccurrences(of: "tag", with: "nt"))] = dic[(data_laughNegativeMessage.replacingOccurrences(of: "agency", with: "c") + kReadyBackMessage.replacingOccurrences(of: "tag", with: "nt"))] as? String
        //: refuseViewData["jumpKey"] = dic["jumpKey"] as? String
        refuseViewData[(String(notiFlowResentText.suffix(6)) + notiBottomValue.replacingOccurrences(of: "paper", with: "y"))] = dic[(String(notiFlowResentText.suffix(6)) + notiBottomValue.replacingOccurrences(of: "paper", with: "y"))] as? String
        //: guard TalkingSocketManager.shared.isStrategy == false else {
        guard FileSocketManager.shared.isStrategy == false else {
            //: isLateronRefuseView = true
            isLateronRefuseView = true
            //: return
            return
        }
        //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
        self.alertQueue.onNext(FinishWindowType.Attestation_Refuse)
    }

    /// 通话结束后
    //: @objc private func showRefuseView() {
    @objc private func zonePlace() {
        //: if isLateronRefuseView {
        if isLateronRefuseView {
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(FinishWindowType.Attestation_Refuse)
        }
    }

    //: func showAlert() {
    func language() {
        //: guard self.dataSource.count > 0 else { return }
        guard self.dataSource.count > 0 else { return }
        //: self.actionForTask(type: self.dataSource.first!)
        self.unwelcome(type: self.dataSource.first!)
    }

    //: func actionForTask(type: PopupWindowType) {
    func unwelcome(type: FinishWindowType) {
        //: switch type {
        switch type {
        //: case .sign_in:
        case .sign_in:
            //: if let index = self.dataSource.firstIndex(of: .sign_in) {
            if let index = self.dataSource.firstIndex(of: .sign_in) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: SightReactiveCompatible.share.func__pushToWebVC(webViewType: .SiginPopup)
            SightReactiveCompatible.share.elementOfResume(webViewType: .SiginPopup)

        //: case .video_Cover:
        case .video_Cover:
            //: if let index = self.dataSource.firstIndex(of: .video_Cover) {
            if let index = self.dataSource.firstIndex(of: .video_Cover) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingVideoCoverPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = ExContactReactiveCompatible(frame: CGRect(x: 0, y: 0, width: user_needValue, height: kStreamTitle))
            //: view.show()
            view.doFlag()

        //: case .startLive_Tips:
        case .startLive_Tips:
            //: if let index = self.dataSource.firstIndex(of: .startLive_Tips) {
            if let index = self.dataSource.firstIndex(of: .startLive_Tips) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: if isShowLiveTipsView {
            if isShowLiveTipsView {
                //: return
                return
            }
            //: let view = TalkingLiveTipsPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = AddressView(frame: CGRect(x: 0, y: 0, width: user_needValue, height: kStreamTitle))
            //: view.show()
            view.represser()
            //: isShowLiveTipsView = true
            isShowLiveTipsView = true
            //: view.endBlock = { [weak self] in
            view.endBlock = { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.isShowLiveTipsView = false
                self.isShowLiveTipsView = false
            }

        //: case.video_Call:
        case .video_Call:
            //: if let index = self.dataSource.firstIndex(of: .video_Call) {
            if let index = self.dataSource.firstIndex(of: .video_Call) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingVideoCallPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = ContentUpView(frame: CGRect(x: 0, y: 0, width: user_needValue, height: kStreamTitle))
            //: view.show()
            view.pressShow()

        //: case.face_Verification:
        case .face_Verification:
            //: if let index = self.dataSource.firstIndex(of: .face_Verification) {
            if let index = self.dataSource.firstIndex(of: .face_Verification) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingFaceVerificationPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = DirtyView(frame: CGRect(x: 0, y: 0, width: user_needValue, height: kStreamTitle))
            //: view.show()
            view.paraShow()

        //: case .Web_Subscribe:
        case .Web_Subscribe:
            //: if let index = self.dataSource.firstIndex(of: .Web_Subscribe) {
            if let index = self.dataSource.firstIndex(of: .Web_Subscribe) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let date = Defaults.object(forKey: TalkingMaleUnsubscribedAlertIsShow)
            let date = user_liveMsg.object(forKey: appTagPath)
            //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
            let today = NSDate.viewPress(date: Date(), dateFormat: (String(noti_lifeStr.prefix(5)) + "MM-d" + String(user_visitorFormat)))
            //: if date == nil || (date as! String) != today {
            if date == nil || (date as! String) != today {
                //: Defaults.set(today, forKey: TalkingMaleUnsubscribedAlertIsShow)
                user_liveMsg.set(today, forKey: appTagPath)
                //: SightReactiveCompatible.share.func__pushToSubscribeAlert()
                SightReactiveCompatible.share.deciding()
            }

        //: case.Attestation_Refuse:
        case .Attestation_Refuse:
            //: if let index = self.dataSource.firstIndex(of: .Attestation_Refuse) {
            if let index = self.dataSource.firstIndex(of: .Attestation_Refuse) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingAttestationRefusePopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = KindThen(frame: CGRect(x: 0, y: 0, width: user_needValue, height: kStreamTitle))
            //: view.setViewData(dit: refuseViewData)
            view.preposeCommonRadiotelegraphicSignal(dit: refuseViewData)
            //: view.show()
            view.calculate()

        //: case .New_Guidance:
        case .New_Guidance:
            //: if let index = self.dataSource.firstIndex(of: .New_Guidance) {
            if let index = self.dataSource.firstIndex(of: .New_Guidance) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingNewGuidancePopUpView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = StrategyThen(frame: CGRect(x: 0, y: 0, width: user_needValue, height: kStreamTitle))
            //: view.show()
            view.serverNote()

        //: case .Discount_Recharge:
        case .Discount_Recharge:
            //: SightReactiveCompatible.share.func_pushToDiscountRechargeView()
            SightReactiveCompatible.share.personage()
        }
    }
}

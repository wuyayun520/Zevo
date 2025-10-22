
//: Declare String Begin

/*: "Email Address" :*/
fileprivate let k_thatStr:String = "inmate drop stop tailEm"
fileprivate let userRecoverEnableTitle:String = "ail Adfeature at model"

/*: "Phone number" :*/
fileprivate let noti_minimumStr:[Character] = ["P","h","o","n","e"," ","n"]
fileprivate let data_blueUrl:[Character] = ["u","m","b","e","r"]

/*: "Enter the email code sent to" :*/
fileprivate let app_complySendRepresentKey:[Character] = ["E","n","t","e","r"," ","t","h","e"," ","e","m"]
fileprivate let show_broadcastPath:String = "aicharm"
fileprivate let mainSkirtValue:String = " code vertical bite policy middle till"

/*: "Enter the phone code sent to" :*/
fileprivate let data_nearMessage:[Character] = ["E","n","t","e","r"," ","t","h","e"," "]
fileprivate let show_choiceUrl:[Character] = ["p","h","o"]
fileprivate let constCoatName:String = "ne cshrink numb bite firm"
fileprivate let constUsedStr:String = "nt tothread quantity"

/*: "8075F5" :*/
fileprivate let appBoneMessage:String = "8075F5move tone bad financial digital"

/*: "F4F4F4" :*/
fileprivate let dataLargeValue:[Character] = ["F","4","F","4","F","4"]

/*: "Resend verification email" :*/
fileprivate let main_eyeValue:[Character] = ["R","e","s","e","n","d"," ","v","e","r","i","f","i","c","a","t","i","o"]
fileprivate let userGroupStr:[Character] = ["n"," ","e","m","a","i","l"]

/*: "Tips: If you can't receive the verification code, please check whether the message is in spam or not" :*/
fileprivate let kCloudTitle:[UInt8] = [0xbf,0x82,0x9b,0x98,0xd1,0xcb,0xa2,0x8d,0xcb,0x92,0x84,0x9e,0xcb,0x88,0x8a,0x85,0xcc,0x9f,0xcb,0x99,0x8e,0x88,0x8e,0x82,0x9d,0x8e,0xcb,0x9f,0x83,0x8e,0xcb,0x9d,0x8e,0x99,0x82,0x8d,0x82,0x88,0x8a,0x9f,0x82,0x84,0x85,0xcb,0x88,0x84,0x8f,0x8e,0xc7,0xcb,0x9b,0x87,0x8e,0x8a,0x98,0x8e,0xcb,0x88,0x83,0x8e,0x88,0x80,0xcb,0x9c,0x83,0x8e,0x9f,0x83,0x8e,0x99,0xcb,0x9f,0x83,0x8e,0xcb,0x86,0x8e,0x98,0x98,0x8a,0x8c,0x8e,0xcb,0x82,0x98,0xcb,0x82,0x85,0xcb,0x98,0x9b,0x8a,0x86,0xcb,0x84,0x99,0xcb,0x85,0x84,0x9f]

private func ionMovie(require num: UInt8) -> UInt8 {
    return num ^ 235
}

/*: "Bind Email succeed" :*/
fileprivate let mainPersonalTitle:String = "lease mpBind Em"
fileprivate let showMediaEnoughTitle:[Character] = ["a","i","l"," ","s"]
fileprivate let userSeeStr:[Character] = ["u","c","c","e","e","d"]

/*: "Bind Mobile Phone succeed" :*/
fileprivate let app_clipId:String = "Bindcarve missing expected may fruit"
fileprivate let main_executeId:String = "element location pending shorte Phon"
fileprivate let noti_calledStrategyTitle:[Character] = ["e","e","d"]

/*: "Resend verification email (%@s)" :*/
fileprivate let showRouteJoinValue:[UInt8] = [0xa8,0x9f,0x89,0x9f,0x94,0x9e,0xda,0x8c,0x9f,0x88,0x93,0x9c,0x93,0x99,0x9b,0x8e,0x93,0x95,0x94,0xda,0x9f,0x97,0x9b,0x93,0x96,0xda,0xd2,0xdf,0xba,0x89,0xd3]

private func conversationWould(whole num: UInt8) -> UInt8 {
    return num ^ 250
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HappeningVc.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: class TalkingLoginBindInputCodeVC: TalkingBaseViewController {
class HappeningVc: MergeContactViewController {
    //: public var  phoneOrEmailStr: String = ""  // 邮箱或者Email
    public var phoneOrEmailStr: String = "" // 邮箱或者Email
    //: public var  areaCodeNum: String = ""
    public var areaCodeNum: String = ""
    //: public var  codeStr: String = ""
    public var codeStr: String = ""
    //: public var  viewType: TalkingBindVCType?
    public var viewType: ElectBindType?
    //: var isBack: Bool!
    var isBack: Bool!
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var timerDispose: Disposable?
    private var timerDispose: Disposable?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.weeklyAcross()
        //: self.setupSubViewsConstraint()
        self.cur()
        //: self.bindInteraction()
        self.save()
        //: func_starCodeTime()
        quit()
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: func_endCodeTime()
        conversationQualityCase()
    }

    //: deinit {
    deinit {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }

    // MARK: - Lazy Load

    //: lazy var tipsLabel: UILabel = {
    lazy var tipsLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 17)
        label.font = .processAcross(type: .Medium, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .antiquityColor()
        //: if self.viewType == .BindEmail {
        if self.viewType == .BindEmail {
            //: label.text = "Email Address".localized
            label.text = (String(k_thatStr.suffix(2)) + String(userRecoverEnableTitle.prefix(6)) + "dress").localized
            //: } else {
        } else {
            //: label.text = "Phone number".localized
            label.text = (String(noti_minimumStr) + String(data_blueUrl)).localized
        }
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
        //: }()
    }()

    //: lazy var titleLabel: UILabel = {
    lazy var titleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .processAcross(type: .Regular, fontSize: 16)
        //: label.textColor = .appTitleColor()
        label.textColor = .antiquityColor()

        //: if self.viewType == .BindEmail {
        if self.viewType == .BindEmail {
            //: label.text = "Enter the email code sent to".localized
            label.text = (String(app_complySendRepresentKey) + show_broadcastPath.replacingOccurrences(of: "charm", with: "l") + String(mainSkirtValue.prefix(6)) + "sent to").localized
            //: } else {
        } else {
            //: label.text = "Enter the phone code sent to".localized
            label.text = (String(data_nearMessage) + String(show_choiceUrl) + String(constCoatName.prefix(4)) + "ode se" + String(constUsedStr.prefix(5))).localized
        }
        //: return label
        return label
        //: }()
    }()

    //: lazy var inputLabel: UILabel = {
    lazy var inputLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 16)
        label.font = .processAcross(type: .Medium, fontSize: 16)
        //: label.textColor = .appThemeColor()
        label.textColor = .rawMonthCombine()
        //: label.text = (self.viewType == .BindEmail ? "\(phoneOrEmailStr)" : "(+\(areaCodeNum))\(phoneOrEmailStr)")
        label.text = (self.viewType == .BindEmail ? "\(phoneOrEmailStr)" : "(+\(areaCodeNum))\(phoneOrEmailStr)")
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
        //: }()
    }()

    //: lazy var codeInputView: TalkingCodeInputView = {
    lazy var codeInputView: MedalReactiveCompatible = {
        //: let codeView = TalkingCodeInputView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: "8075F5")!, normalColor: UIColor(hex: "F4F4F4")!, margin: 12)
        let codeView = MedalReactiveCompatible(frame: CGRect(x: 0, y: 0, width: user_needValue, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: (String(appBoneMessage.prefix(6))))!, normalColor: UIColor(hex: (String(dataLargeValue)))!, margin: 12)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ReadingLanguageManager.shared.direction == .rightToLeft {
            //: codeView.layer.transform =  CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0)
            codeView.layer.transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0) // 镜像
        }
        //: return codeView
        return codeView
        //: }()
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = UIFont.processAcross(type: .Regular, fontSize: 18)
        //: btn.setTitle("Resend verification email".localized, for: .normal)
        btn.setTitle((String(main_eyeValue) + String(userGroupStr)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.keyLocal(colors: UIColor.sumerpretation(), size: CGSize(width: user_needValue - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 12)
        label.font = .processAcross(type: .Medium, fontSize: 12)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .pointOfTotalersection()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: let str = "Tips: If you can't receive the verification code, please check whether the message is in spam or not".localized
        let str = String(bytes: kCloudTitle.map{ionMovie(require: $0)}, encoding: .utf8)!.localized
        //: let range = NSRange(location: 5, length: str.count-5)
        let range = NSRange(location: 5, length: str.count - 5)
        //: let attributedString = NSMutableAttributedString(string: str)
        let attributedString = NSMutableAttributedString(string: str)
        //: attributedString.addAttribute(.font, value: UIFont.pingfangFont(type: .Regular, fontSize: 12), range: range)
        attributedString.addAttribute(.font, value: UIFont.processAcross(type: .Regular, fontSize: 12), range: range)
        //: label.attributedText = attributedString
        label.attributedText = attributedString
        //: return label
        return label
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginBindInputCodeVC {
extension HappeningVc {
    //: func func__bindEmailAction() {
    func weightlessness() {
        //: self.view.endEditing(true)
        self.view.endEditing(true)
        //: ProgressHUD.show(superView: view)
        PointerReactiveCompatible.panoramicView(superView: view)
        //: if viewType == .BindEmail {
        if viewType == .BindEmail {
            //: TalkingLoginRequestTool.req_bindEmailCode(emailCode: codeStr) { succeed, result, errorModel in
            MidRequestTool.transportation(emailCode: codeStr) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                PointerReactiveCompatible.motivationCharmDismiss()
                //: if succeed {
                if succeed {
                    //: CompositionReactiveCompatible.share.loginUserMode.email = self.phoneOrEmailStr
                    CompositionReactiveCompatible.share.loginUserMode.email = self.phoneOrEmailStr
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Bind Email succeed".localized)
                    self.through(showMsg: (String(mainPersonalTitle.suffix(7)) + String(showMediaEnoughTitle) + String(userSeeStr)).localized)
                    //: let count: Int = (self.navigationController?.viewControllers.count)!
                    let count: Int = (self.navigationController?.viewControllers.count)!
                    //: if count >= 3 {
                    if count >= 3 {
                        //: let count = count - 3
                        let count = count - 3
                        //: let vc = self.navigationController?.viewControllers[count]
                        let vc = self.navigationController?.viewControllers[count]
                        //: self.navigationController?.popToViewController(vc!, animated: true)
                        self.navigationController?.popToViewController(vc!, animated: true)
                    }
                    //: } else {
                } else {
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.stepBold()
                    //: self.codeInputView.startEdit()
                    self.codeInputView.pictureEdit()
                }
            }
            //: } else {
        } else {
            //: TalkingLoginRequestTool.req_MobileBind(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, vcode: self.codeStr) { [self]  succeed, result, errorModel in
            MidRequestTool.bind(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, vcode: self.codeStr) { [self] succeed, _, _ in
                //: ProgressHUD.dismiss()
                PointerReactiveCompatible.motivationCharmDismiss()
                //: if !succeed {
                if !succeed {
                    //: self.codeInputView.startEdit()
                    self.codeInputView.pictureEdit()
                    //: return
                    return
                }
                //: CompositionReactiveCompatible.share.loginUserMode.mobile = self.phoneOrEmailStr
                CompositionReactiveCompatible.share.loginUserMode.mobile = self.phoneOrEmailStr
                //: self.func__showStatusBarSuccessMsg(showMsg: "Bind Mobile Phone succeed".localized)
                self.through(showMsg: (String(app_clipId.prefix(4)) + " Mobil" + String(main_executeId.suffix(6)) + "e succ" + String(noti_calledStrategyTitle)).localized)
                //: for index in 0..<(self.navigationController?.viewControllers.count)! {
                for index in 0 ..< (self.navigationController?.viewControllers.count)! {
                    //: if self.navigationController?.viewControllers[index] .isKind(of: TalkingSettingsUniversalVC.self) == true {
                    if self.navigationController?.viewControllers[index].isKind(of: MiddleRecognizerDelegate.self) == true {
                        //: let vc = (self.navigationController?.viewControllers[index] as? TalkingSettingsUniversalVC)!
                        let vc = (self.navigationController?.viewControllers[index] as? MiddleRecognizerDelegate)!
                        //: self.navigationController?.popToViewController(vc, animated: true)
                        self.navigationController?.popToViewController(vc, animated: true)
                        //: return
                        return
                    }
                }
            }
        }
    }

    //: func func__resendEmailCodeAction() {
    func broadcastName() {
        //: self.view.endEditing(true)
        self.view.endEditing(true)
        //: ProgressHUD.show(superView: view)
        PointerReactiveCompatible.panoramicView(superView: view)
        //: if viewType == .BindEmail {
        if viewType == .BindEmail {
            //: TalkingLoginRequestTool.req_getBindEmailCode(emailStr: self.phoneOrEmailStr, isBind: true) { succeed, result, errorModel in
            MidRequestTool.note(emailStr: self.phoneOrEmailStr, isBind: true) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                PointerReactiveCompatible.motivationCharmDismiss()
                //: if succeed {
                if succeed {
                    //: self.func_starCodeTime()
                    self.quit()
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.stepBold()
                }
                //: self.codeInputView.startEdit()
                self.codeInputView.pictureEdit()
            }
            //: } else {
        } else {
            //: TalkingLoginRequestTool.req_bindPhoneGetCode(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, result, errorModel in
            MidRequestTool.shapeRemain(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, _, _ in
                //: ProgressHUD.dismiss()
                PointerReactiveCompatible.motivationCharmDismiss()
                //: if succeed {
                if succeed {
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.stepBold()
                    //: self.func_starCodeTime()
                    self.quit()
                }
                //: self.codeInputView.startEdit()
                self.codeInputView.pictureEdit()
                //: })
            })
        }
    }

    //: func func_starCodeTime() {
    func quit() {
        //: if timerDispose != nil {
        if timerDispose != nil {
            //: timerDispose?.dispose()
            timerDispose?.dispose()
        }
        //: var timeCount = 300
        var timeCount = 300
        //: timerDispose = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)
        timerDispose = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)
            //: .subscribe(onNext: { [weak self] num in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: timeCount -= 1
                timeCount -= 1
                //: self.commitButton.isEnabled = (timeCount <= 0)
                self.commitButton.isEnabled = (timeCount <= 0)
                //: if timeCount > 0 {
                if timeCount > 0 {
                    //: self.commitButton.setTitle("Resend verification email (%@s)".localizedArguments(timeCount), for: .normal)
                    self.commitButton.setTitle(String(bytes: showRouteJoinValue.map{conversationWould(whole: $0)}, encoding: .utf8)!.temporaryWorker(timeCount), for: .normal)
                    //: } else {
                } else {
                    //: self.func_endCodeTime()
                    self.conversationQualityCase()
                    //: self.commitButton.setTitle("Resend verification email".localized, for: .normal)
                    self.commitButton.setTitle((String(main_eyeValue) + String(userGroupStr)).localized, for: .normal)
                }
                //: })
            })
    }

    //: func func_endCodeTime() {
    func conversationQualityCase() {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }
}

// MARK: - Layout

//: extension TalkingLoginBindInputCodeVC {
extension HappeningVc {
    // 添加视图
    //: private func setupSubviews() {
    private func weeklyAcross() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(tipsLabel)
        view.addSubview(tipsLabel)
        //: view.addSubview(titleLabel)
        view.addSubview(titleLabel)
        //: view.addSubview(inputLabel)
        view.addSubview(inputLabel)
        //: view.addSubview(codeInputView)
        view.addSubview(codeInputView)
        //: view.addSubview(commitButton)
        view.addSubview(commitButton)
        //: view.addSubview(desLab)
        view.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func cur() {
        //: tipsLabel.snp.makeConstraints { make in
        tipsLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.top.equalTo(34)
            make.top.equalTo(34)
        }
        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(tipsLabel.snp.bottom).offset(40)
            make.top.equalTo(tipsLabel.snp.bottom).offset(40)
        }
        //: inputLabel.snp.makeConstraints { make in
        inputLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(titleLabel.snp.bottom)
            make.top.equalTo(titleLabel.snp.bottom)
        }
        //: codeInputView.snp.makeConstraints { make in
        codeInputView.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(70)
            make.height.equalTo(70)
            //: make.top.equalTo(inputLabel.snp.bottom).offset(24)
            make.top.equalTo(inputLabel.snp.bottom).offset(24)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(codeInputView.snp.bottom).offset(30)
            make.top.equalTo(codeInputView.snp.bottom).offset(30)
        }
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(commitButton.snp.bottom).offset(36)
            make.top.equalTo(commitButton.snp.bottom).offset(36)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func save() {
        //: commitButton.rx.controlEvent(.touchUpInside)
        commitButton.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__resendEmailCodeAction()
                self.broadcastName()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: codeInputView.codeBlock = { [weak self] (codeStr: String) -> Void in
        codeInputView.codeBlock = { [weak self] (codeStr: String) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if codeStr.count == 6 {
            if codeStr.count == 6 {
                //: self.codeStr = codeStr
                self.codeStr = codeStr
                //: self.func__bindEmailAction()
                self.weightlessness()
            }
            //: return
        }
    }
}

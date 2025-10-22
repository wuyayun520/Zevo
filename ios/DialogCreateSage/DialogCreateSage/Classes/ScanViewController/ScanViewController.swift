
//: Declare String Begin

/*: "Personal information" :*/
fileprivate let showDiscourseName:String = "Persunit wide"
fileprivate let kSkirtUsId:String = "nfhistoryr"
fileprivate let app_acquireMatchFormat:[Character] = ["o","n"]

/*: "authPic" :*/
fileprivate let showCameraName:String = "in ion user turn destinationauthPic"

/*: "Face verification" :*/
fileprivate let user_laterValue:[Character] = ["F","a","c","e"," ","v","e","r","i","f"]
fileprivate let notiGovernData:[Character] = ["i","c","a","t","i","o","n"]

/*: "icon_zc_userconver" :*/
fileprivate let k_tempMsg:[Character] = ["i","c","o","n","_","z","c"]
fileprivate let constNativeTitle:[Character] = ["_","u","s","e","r","c","o","n","v","e","r"]

/*: "Verify now" :*/
fileprivate let userIncomeTitle:String = "drive three characteristic groupVerif"
fileprivate let notiListFormat:String = "vantage session greet be nexty now"

/*: "#4A89F3" :*/
fileprivate let dataCurveUrl:String = "#4A89F3when finish"

/*: "Finish" :*/
fileprivate let noti_tunHisMsg:[Character] = ["F","i","n","i","s","h"]

/*: "#8C7AFF" :*/
fileprivate let show_nonethelessData:[Character] = ["#","8","C","7","A","F","F"]

/*: "Skip" :*/
fileprivate let notiSayKey:String = "Skipboy south coat literal"

/*: "icon_successfylly" :*/
fileprivate let appVideoData:String = "confirm disk submit remaining globalicon_succ"
fileprivate let appDirectionName:String = "essfanalyzellanalyze"

/*: "Submitted successfully" :*/
fileprivate let show_themeValue:String = "positive whenSubmi"
fileprivate let kTellKey:String = "uveryveryessfu"
fileprivate let noti_punishId:String = "LLY"

/*: "#2ED180" :*/
fileprivate let notiHundredName:[Character] = ["#","2","E","D","1","8","0"]

/*: "male" :*/
fileprivate let notiEngageToneData:[UInt8] = [0x8e,0x82,0x8f,0x86]

private func scoreShade(gesture num: UInt8) -> UInt8 {
    return num ^ 227
}

/*: "female" :*/
fileprivate let showApprovalPath:String = "fmeetingale"

/*: "RegisterSuccess" :*/
fileprivate let show_memoryTitle:[Character] = ["R","e","g"]
fileprivate let showSomeoneProposeText:[Character] = ["i","s","t","e","r","S","u","c","c","e","s","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ScanViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/9/8.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditAuthAndVideoVC: TalkingBaseViewController {
class ScanViewController: MergeContactViewController {
    //: private var VideoIconPath = ""
    private var VideoIconPath = ""
    //: private var videoPath = ""
    private var videoPath = ""
    //: var params = [String: Any]()
    var params = [String: Any]()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        popOutInPrise(isOpen: false)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Personal information".localized
        self.title = (String(showDiscourseName.prefix(4)) + "onal i" + kSkirtUsId.replacingOccurrences(of: "history", with: "o") + "mati" + String(app_acquireMatchFormat)).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.feed()
        //: self.setupSubViewsConstraint()
        self.views()

        //: if !CompositionReactiveCompatible.share.appConfigMode.skipInputInviteCode {
        if !CompositionReactiveCompatible.share.appConfigMode.skipInputInviteCode {
            //: skipButton.isHidden = true
            skipButton.isHidden = true
//            skipTipLabel.isHidden = skipButton.isHidden
        }
        //: if CompositionReactiveCompatible.share.userFillInfoMode.authImage != nil {
        if CompositionReactiveCompatible.share.userFillInfoMode.authImage != nil {
            //: self.params["authPic"] = CompositionReactiveCompatible.share.userFillInfoMode.authImage?.jpegData(compressionQuality: 1)
            self.params[(String(showCameraName.suffix(7)))] = CompositionReactiveCompatible.share.userFillInfoMode.authImage?.jpegData(compressionQuality: 1)
            //: self.setConverView()
            self.dripPan()
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
        }
    }

    // MARK: - Lazy Load

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView.init()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var converLB: UILabel = {
    lazy var converLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = .appTitleColor()
        lb.textColor = .antiquityColor()
        //: lb.font = UIFont.pingfangFont(type: .Semibold, fontSize: 17)
        lb.font = UIFont.processAcross(type: .Semibold, fontSize: 17)
        //: lb.text = "Face verification".localized
        lb.text = (String(user_laterValue) + String(notiGovernData)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var converImag: UIImageView = {
    lazy var converImag: UIImageView = {
        //: let imagv = UIImageView.init()
        let imagv = UIImageView()
        //: imagv.image = UIImage.BundleImageNamed(name: "icon_zc_userconver")
        imagv.image = UIImage.parentSet(name: (String(k_tempMsg) + String(constNativeTitle)))
        //: return imagv
        return imagv
        //: }()
    }()

    //: lazy var converBtn: UIButton = {
    lazy var converBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(converBtnClick), for: UIControl.Event.touchUpInside)
        btn.addTarget(self, action: #selector(readingFor), for: UIControl.Event.touchUpInside)
        //: var attributedString = NSMutableAttributedString(string: "Verify now".localized)
        var attributedString = NSMutableAttributedString(string: (String(userIncomeTitle.suffix(5)) + String(notiListFormat.suffix(5))).localized)
        //: attributedString.addAttributes([.underlineStyle: NSNumber(value: NSUnderlineStyle.single.rawValue), .foregroundColor: UIColor.init(hex: "#4A89F3")!, .font: UIFont.pingfangFont(type: .Semibold, fontSize: 15)], range: NSRange.init(location: 0, length: attributedString.length))
        attributedString.addAttributes([.underlineStyle: NSNumber(value: NSUnderlineStyle.single.rawValue), .foregroundColor: UIColor(hex: (String(dataCurveUrl.prefix(7))))!, .font: UIFont.processAcross(type: .Semibold, fontSize: 15)], range: NSRange(location: 0, length: attributedString.length))
        //: btn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        btn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishBtn: UIButton = {
    lazy var finishBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.processAcross(type: .Medium, fontSize: 17)
        //: btn.setTitle("Finish".localized, for: .normal)
        btn.setTitle((String(noti_tunHisMsg)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.keyLocal(colors: UIColor.sumerpretation(), size: CGSize(width: user_needValue - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick(isSkip:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(beauty(isSkip:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var skipButton: UIButton = {
    lazy var skipButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitleColor(UIColor.init(hex: "#8C7AFF"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(show_nonethelessData))), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.processAcross(type: .Medium, fontSize: 17)
        //: let attributeString = NSMutableAttributedString(string: "Skip".localized)
        let attributeString = NSMutableAttributedString(string: (String(notiSayKey.prefix(4))).localized)
        //: attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: btn.addTarget(self, action: #selector(skipButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(pauseJudge), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
//    lazy var skipTipLabel: UILabel = {
//        let label = UILabel()
//        label.font = .pingfangFont(type: .Regular, fontSize: 12)
//        label.textColor = .appValueDetailColor()
//        label.textAlignment = .center
//        label.numberOfLines = 0
//        label.text = "You can feel free to skip this step.".localized
//        return label
//    }()
}

//: extension TalkingLoginEditAuthAndVideoVC {
extension ScanViewController {
    //: func setConverView() {
    func dripPan() {
        //: self.converImag.image = UIImage.BundleImageNamed(name: "icon_successfylly")
        self.converImag.image = UIImage.parentSet(name: (String(appVideoData.suffix(9)) + appDirectionName.replacingOccurrences(of: "analyze", with: "y")))
        //: let attributedString = NSMutableAttributedString(string: "Submitted successfully".localized)
        let attributedString = NSMutableAttributedString(string: (String(show_themeValue.suffix(5)) + "tted s" + kTellKey.replacingOccurrences(of: "very", with: "c") + noti_punishId.lowercased()).localized)
        //: attributedString.addAttributes([.foregroundColor: UIColor.init(hex: "#2ED180")!, .font: UIFont.pingfangFont(type: .Semibold, fontSize: 15)], range: NSRange.init(location: 0, length: attributedString.length))
        attributedString.addAttributes([.foregroundColor: UIColor(hex: (String(notiHundredName)))!, .font: UIFont.processAcross(type: .Semibold, fontSize: 15)], range: NSRange(location: 0, length: attributedString.length))
        //: self.converBtn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        self.converBtn.setAttributedTitle(attributedString, for: UIControl.State.normal)
    }
}

/// event
//: extension TalkingLoginEditAuthAndVideoVC {
extension ScanViewController {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func publicTransport() {
        //: super.naviPopback()
        super.publicTransport()
        // 埋点
        //: let eventID = "\(click_registration_information3_backBTN)_\(CompositionReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(notiRobotUrl)_\(CompositionReactiveCompatible.share.userFillInfoMode.sex == ArrowGender.male.rawValue ? String(bytes: notiEngageToneData.map{scoreShade(gesture: $0)}, encoding: .utf8)! : (showApprovalPath.replacingOccurrences(of: "meeting", with: "em")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        noti_liveLevelUrl.recordGender(eventID: eventID)
    }

    //: @objc func converBtnClick() {
    @objc func readingFor() {
        // 埋点
        //: let eventID = "\(click_registration_information3_verifyBTN)_\(CompositionReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(constButtonOkData)_\(CompositionReactiveCompatible.share.userFillInfoMode.sex == ArrowGender.male.rawValue ? String(bytes: notiEngageToneData.map{scoreShade(gesture: $0)}, encoding: .utf8)! : (showApprovalPath.replacingOccurrences(of: "meeting", with: "em")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        noti_liveLevelUrl.recordGender(eventID: eventID)

        //: let vc = TalkingVerificationExampleVC()
        let vc = SortViewController()
        //: vc.isRegisterPush = true
        vc.isRegisterPush = true
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
        //: vc.iconActionBlock = { [weak self] image in
        vc.iconActionBlock = { [weak self] image in
            //: guard let self = self else {
            guard let self = self else {
                //: return
                return
            }
            //: CompositionReactiveCompatible.share.userFillInfoMode.authImage = image
            CompositionReactiveCompatible.share.userFillInfoMode.authImage = image
            //: self.params["authPic"] = image.jpegData(compressionQuality: 1)
            self.params[(String(showCameraName.suffix(7)))] = image.jpegData(compressionQuality: 1)
            //: self.setConverView()
            self.dripPan()
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
        }
    }

    //: @objc private func skipButtonClick() {
    @objc private func pauseJudge() {
        // 埋点
        //: let eventID = "\(click_registration_information3_skipBTN)_\(CompositionReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(const_backgroundData)_\(CompositionReactiveCompatible.share.userFillInfoMode.sex == ArrowGender.male.rawValue ? String(bytes: notiEngageToneData.map{scoreShade(gesture: $0)}, encoding: .utf8)! : (showApprovalPath.replacingOccurrences(of: "meeting", with: "em")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        noti_liveLevelUrl.recordGender(eventID: eventID)

        //: params.removeValue(forKey: "authPic")
        params.removeValue(forKey: (String(showCameraName.suffix(7))))
        //: finishBtnClick(isSkip: true)
        beauty(isSkip: true)
    }

    //: @objc private func finishBtnClick(isSkip: Bool = false) {
    @objc private func beauty(isSkip: Bool = false) {
        // 埋点
        //: if isSkip == false {
        if isSkip == false {
            //: let eventID = "\(click_registration_information3_finishBTN)_\(CompositionReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
            let eventID = "\(showScreenFaceFoundTitle)_\(CompositionReactiveCompatible.share.userFillInfoMode.sex == ArrowGender.male.rawValue ? String(bytes: notiEngageToneData.map{scoreShade(gesture: $0)}, encoding: .utf8)! : (showApprovalPath.replacingOccurrences(of: "meeting", with: "em")))"
            //: uploadRecord.uploadRecordEvent(eventID: eventID)
            noti_liveLevelUrl.recordGender(eventID: eventID)
        }

        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        PointerReactiveCompatible.soundAssetThrow()
        //: TalkingLoginRequestTool.req_updateUserInfo(params: params) { succeed, result, errorModel in
        MidRequestTool.failSecret(params: params) { succeed, result, _ in
            //: ProgressHUD.dismiss()
            PointerReactiveCompatible.motivationCharmDismiss()
            //: if succeed {
            if succeed {
                // 发送通知
                //: NotificationCenter.default.post(name: DID_LOGIN_SUCCESS_NOTIFICATION, object: nil, userInfo: result as! Dictionary<String, Any>)
                NotificationCenter.default.post(name: userRecordMsg, object: nil, userInfo: result as! [String: Any])
                // 注册成功埋点
                //: TalkingAdjustManager.share.addEvent(key: "RegisterSuccess")
                AuthorReminderReactiveCompatible.share.mutualFollowingKey(key: (String(show_memoryTitle) + String(showSomeoneProposeText)))
                //: FirebaseAnalyticsManager.share.logEvent(name: "RegisterSuccess")
                WarningThen.share.builder(name: (String(show_memoryTitle) + String(showSomeoneProposeText)))

                //: if CompositionReactiveCompatible.share.loginUserMode.remindBindEmail == true {
                if CompositionReactiveCompatible.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                    //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        //: SightReactiveCompatible.share.func__pushToLockUserEmailVC(isShowBack: false)
                        SightReactiveCompatible.share.showPer(isShowBack: false)
                    }
                }
            }
        }
    }
}

//: extension TalkingLoginEditAuthAndVideoVC {
extension ScanViewController {
    //: func setupSubviews() {
    func feed() {
        //: self.view.addSubview(converLB)
        self.view.addSubview(converLB)
        //: self.view.addSubview(converImag)
        self.view.addSubview(converImag)
        //: self.view.addSubview(converBtn)
        self.view.addSubview(converBtn)
        //: self.view.addSubview(finishBtn)
        self.view.addSubview(finishBtn)
        //: self.view.addSubview(skipButton)
        self.view.addSubview(skipButton)
//        self.view.addSubview(skipTipLabel)
    }

    //: func setupSubViewsConstraint() {
    func views() {
        //: converLB.snp.makeConstraints { make in
        converLB.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: converImag.snp.makeConstraints { make in
        converImag.snp.makeConstraints { make in
            //: make.top.equalTo(converLB.snp.bottom).offset(20)
            make.top.equalTo(converLB.snp.bottom).offset(20)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
            //: make.size.equalTo(125)
            make.size.equalTo(125)
        }
        //: converBtn.snp.makeConstraints { make in
        converBtn.snp.makeConstraints { make in
            //: make.top.equalTo(converImag.snp.bottom).offset(9)
            make.top.equalTo(converImag.snp.bottom).offset(9)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.top.equalTo(converBtn.snp.bottom).offset(40)
            make.top.equalTo(converBtn.snp.bottom).offset(40)
            //: make.height.equalTo(51)
            make.height.equalTo(51)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
        //: skipButton.snp.makeConstraints { make in
        skipButton.snp.makeConstraints { make in
            //: make.top.equalTo(finishBtn.snp.bottom).offset(20)
            make.top.equalTo(finishBtn.snp.bottom).offset(20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 50, height: 18))
            make.size.equalTo(CGSize(width: 50, height: 18))
        }
//        skipTipLabel.snp.makeConstraints { make in
//            make.bottom.equalTo(skipButton.snp.top).offset(-15)
//            make.centerX.equalToSuperview()
//            make.width.equalTo(ScreenWidth-60)
//        }
    }
}

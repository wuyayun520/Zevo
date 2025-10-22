
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let data_sumContent:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Personal information" :*/
fileprivate let app_downPath:[Character] = ["P","e","r","s","o","n","a","l"," ","i","n","f"]
fileprivate let showTipKey:String = "O"
fileprivate let data_gestureValue:String = "rboardtion"

/*: "ArrowGender" :*/
fileprivate let kApartmentTitle:String = "lens separate threshold listenGender"

/*: "Once gender is set, it Cannot be changed." :*/
fileprivate let data_nextKey:[UInt8] = [0x2e,0x64,0x65,0x67,0x6e,0x61,0x68,0x63,0x20,0x65,0x62,0x20,0x74,0x6f,0x6e,0x6e,0x61,0x43,0x20,0x74,0x69,0x20,0x2c,0x74,0x65,0x73,0x20,0x73,0x69,0x20,0x72,0x65,0x64,0x6e,0x65,0x67,0x20,0x65,0x63,0x6e,0x4f]

/*: "#2ABBFF" :*/
fileprivate let userMissMessage:String = "#2ABBFFcontact pow representation our"

/*: "btn_male_nv_nor" :*/
fileprivate let dataCoatInformServeName:[Character] = ["b","t","n","_","m","a","l","e","_","n","v","_","n","o","r"]

/*: "btn_male_nv_sel" :*/
fileprivate let user_receivePath:String = "btn_mrate other clock speak equity"
fileprivate let constShMsg:String = "partner yourself memory target along_sel"

/*: "Male" :*/
fileprivate let constSelectionValue:String = "strip rid writtenMale"

/*: "#FF5372" :*/
fileprivate let dataFootballName:[Character] = ["#","F","F","5","3"]
fileprivate let data_restoreReplyId:String = "7natural"

/*: "btn_female_nv_nor" :*/
fileprivate let mainBasicPath:String = "four no stage hour familybtn_femal"
fileprivate let mainDefinitionHoldData:String = "document print slow realme_nv"

/*: "btn_female_nv_sel" :*/
fileprivate let show_correctShrinkMessage:String = "control overlook cover channelbtn_f"
fileprivate let user_againstStr:String = "expression accelerate shadow course_sel"

/*: "Female" :*/
fileprivate let mainInstanceName:String = "dare work condition plat processingFemale"

/*: "Next" :*/
fileprivate let notiGirlTheId:[Character] = ["N","e","x","t"]

/*: "sex" :*/
fileprivate let userTraceName:[UInt8] = [0xc2,0xd4,0xc9]

private func northwestAppearance(mention num: UInt8) -> UInt8 {
    return num ^ 177
}

/*: "RegisterSuccess" :*/
fileprivate let dataPresentTitle:[Character] = ["R","e","g","i","s","t","e","r","S","u","c","c","e","s","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GreatFormalViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingLoginGenderVC: TalkingBaseViewController {
class GreatFormalViewController: MergeContactViewController {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: data_sumContent.reversed(), encoding: .utf8)!)
    }

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
        self.title = (String(app_downPath) + showTipKey.lowercased() + data_gestureValue.replacingOccurrences(of: "board", with: "ma")).localized
        //: CompositionReactiveCompatible.share.userFillInfoMode.sex = "1"
        CompositionReactiveCompatible.share.userFillInfoMode.sex = "1"
        //: self.setupSubviews()
        self.signal()
        //: self.setupSubViewsConstraint()
        self.totalry()
        //: self.bindInteraction()
        self.circle()
        //: func__checkNextBtnState()
        scale()
    }

    //: deinit {
    deinit {}

    //: private lazy var logoTitleLabel: UILabel = {
    private lazy var logoTitleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .processAcross(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .antiquityColor()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "Gender".localized
        label.text = (String(kApartmentTitle.suffix(6))).localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var genderTipLabel: UILabel = {
    private lazy var genderTipLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .processAcross(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueColor()
        label.textColor = .submaxilla()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: label.text = "Once gender is set, it Cannot be changed.".localized
        label.text = String(bytes: data_nextKey.reversed(), encoding: .utf8)!.localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var maleButton: TalkingButton = {
    private lazy var maleButton: AfterView = {
        //: let btn = TalkingButton(type: .custom)
        let btn = AfterView(type: .custom)
        //: btn.isSelected = false
        btn.isSelected = false
        //: btn.spaceBetweenTitleAndImage = 20
        btn.spaceBetweenTitleAndImage = 20
        //: btn.setBackgroundColor(color: UIColor.init(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1.0), forState: .normal)
        btn.mottle(color: UIColor(red: 244 / 255.0, green: 244 / 255.0, blue: 244 / 255.0, alpha: 1.0), forState: .normal)
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#2ABBFF")!, forState: .selected)
        btn.mottle(color: UIColor(hex: (String(userMissMessage.prefix(7))))!, forState: .selected)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_male_nv_nor"), for: .normal)
        btn.setImage(UIImage.parentSet(name: (String(dataCoatInformServeName))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_male_nv_sel"), for: .selected)
        btn.setImage(UIImage.parentSet(name: (String(user_receivePath.prefix(5)) + "ale_nv" + String(constShMsg.suffix(4)))), for: .selected)
        //: btn.setTitle("Male".localized, for: .normal)
        btn.setTitle((String(constSelectionValue.suffix(4))).localized, for: .normal)
        //: btn.setTitle("Male".localized, for: .selected)
        btn.setTitle((String(constSelectionValue.suffix(4))).localized, for: .selected)
        //: btn.setTitleColor(.black, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 17)
        btn.titleLabel?.font = UIFont.joinSize(fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var femaleButton: TalkingButton = {
    private lazy var femaleButton: AfterView = {
        //: let btn = TalkingButton(type: .custom)
        let btn = AfterView(type: .custom)
        //: btn.isSelected = false
        btn.isSelected = false
        //: btn.spaceBetweenTitleAndImage = 20
        btn.spaceBetweenTitleAndImage = 20
        //: btn.setBackgroundColor(color: UIColor.init(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1.0), forState: .normal)
        btn.mottle(color: UIColor(red: 244 / 255.0, green: 244 / 255.0, blue: 244 / 255.0, alpha: 1.0), forState: .normal)
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#FF5372")!, forState: .selected)
        btn.mottle(color: UIColor(hex: (String(dataFootballName) + data_restoreReplyId.replacingOccurrences(of: "natural", with: "2")))!, forState: .selected)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_female_nv_nor"), for: .normal)
        btn.setImage(UIImage.parentSet(name: (String(mainBasicPath.suffix(9)) + String(mainDefinitionHoldData.suffix(4)) + "_nor")), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_female_nv_sel"), for: .selected)
        btn.setImage(UIImage.parentSet(name: (String(show_correctShrinkMessage.suffix(5)) + "emale_nv" + String(user_againstStr.suffix(4)))), for: .selected)
        //: btn.setTitle("Female".localized, for: .normal)
        btn.setTitle((String(mainInstanceName.suffix(6))).localized, for: .normal)
        //: btn.setTitle("Female".localized, for: .selected)
        btn.setTitle((String(mainInstanceName.suffix(6))).localized, for: .selected)
        //: btn.setTitleColor(.black, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 17)
        btn.titleLabel?.font = UIFont.joinSize(fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var commitButton: UIButton = {
    private lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.processAcross(type: .Medium, fontSize: 17)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle((String(notiGirlTheId)).localized, for: .normal)
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
}

// MARK: - Public Event

//: extension TalkingLoginGenderVC {
extension GreatFormalViewController {
    //: private func func__checkNextBtnState() {
    private func scale() {
        //: if CompositionReactiveCompatible.share.userFillInfoMode.sex == "1" {
        if CompositionReactiveCompatible.share.userFillInfoMode.sex == "1" {
            //: self.commitButton.isEnabled = true
            self.commitButton.isEnabled = true
            //: self.maleButton.isSelected = true
            self.maleButton.isSelected = true
            //: self.femaleButton.isSelected = false
            self.femaleButton.isSelected = false
            //: } else if CompositionReactiveCompatible.share.userFillInfoMode.sex == "2"{
        } else if CompositionReactiveCompatible.share.userFillInfoMode.sex == "2" {
            //: self.commitButton.isEnabled = true
            self.commitButton.isEnabled = true
            //: self.maleButton.isSelected = false
            self.maleButton.isSelected = false
            //: self.femaleButton.isSelected = true
            self.femaleButton.isSelected = true
            //: } else {
        } else {
            //: self.commitButton.isEnabled = false
            self.commitButton.isEnabled = false
            //: self.maleButton.isSelected = false
            self.maleButton.isSelected = false
            //: self.femaleButton.isSelected = false
            self.femaleButton.isSelected = false
        }
    }

    //: private func func__pushToNextProgress() {
    private func promotionNextDisplaceStatusTo() {
        //        // 1.3 判断用户设备SIM卡归属地是否来自被剔除的国家或地区
        //        // 1.4 判断用户设备是否开启VPN
//        if CompositionReactiveCompatible.share.appConfigMode.vpnSimCardCheck {
//
//            guard  !CosSweetReactiveCompatible.isUsedProxy() && !CosSweetReactiveCompatible.isUsedVPN() else {
//                self.func__showStatusBarErrorMsg(showMsg: "Network error. Check it and try again.".localized)
//                self.navigationController?.popToRootViewController(animated: true)
//                NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION, object: nil, userInfo: nil)
//                PlightThen.func__reportDeviceID()
//                return
//            }
//        }
        /// 清除后面已填写过资料
//        let sex = CompositionReactiveCompatible.share.userFillInfoMode.sex
//        CompositionReactiveCompatible.share.userFillInfoMode = HelpGenInfoModel.init()
//        CompositionReactiveCompatible.share.userFillInfoMode.sex = sex
//        let VC = ReaderViewController()
//        self.navigationController?.pushViewController(VC, animated: true)

        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        PointerReactiveCompatible.soundAssetThrow()
        //: TalkingLoginRequestTool.req_updateUserInfo(params: ["sex":CompositionReactiveCompatible.share.userFillInfoMode.sex]) { succeed, result, errorModel in
        MidRequestTool.failSecret(params: [String(bytes: userTraceName.map{northwestAppearance(mention: $0)}, encoding: .utf8)!: CompositionReactiveCompatible.share.userFillInfoMode.sex]) { succeed, result, _ in
            //: ProgressHUD.dismiss()
            PointerReactiveCompatible.motivationCharmDismiss()
            //: if succeed {
            if succeed {
                // 发送通知
                //: NotificationCenter.default.post(name: DID_LOGIN_SUCCESS_NOTIFICATION, object: nil, userInfo: result as! Dictionary<String, Any>)
                NotificationCenter.default.post(name: userRecordMsg, object: nil, userInfo: result as! [String: Any])
                // 注册成功埋点
                //: TalkingAdjustManager.share.addEvent(key: "RegisterSuccess")
                AuthorReminderReactiveCompatible.share.mutualFollowingKey(key: (String(dataPresentTitle)))
                //: FirebaseAnalyticsManager.share.logEvent(name: "RegisterSuccess")
                WarningThen.share.builder(name: (String(dataPresentTitle)))
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginGenderVC {
extension GreatFormalViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func signal() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(logoTitleLabel)
        view.addSubview(logoTitleLabel)
        //: view.addSubview(genderTipLabel)
        view.addSubview(genderTipLabel)
        //: view.addSubview(maleButton)
        view.addSubview(maleButton)
        //: view.addSubview(femaleButton)
        view.addSubview(femaleButton)
        //: view.addSubview(commitButton)
        view.addSubview(commitButton)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func totalry() {
        //: logoTitleLabel.snp.makeConstraints { make in
        logoTitleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: genderTipLabel.snp.makeConstraints { make in
        genderTipLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(user_needValue - 60)
            //: make.top.equalTo(logoTitleLabel.snp.bottom).offset(6)
            make.top.equalTo(logoTitleLabel.snp.bottom).offset(6)
        }
        //: maleButton.snp.makeConstraints { make in
        maleButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.width.equalTo(actualWidth(w: 140))
            make.width.equalTo(actualWidth(w: 140))
            //: make.height.equalTo(actualWidth(w: 50))
            make.height.equalTo(actualWidth(w: 50))
            //: make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
            make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
        }
        //: femaleButton.snp.makeConstraints { make in
        femaleButton.snp.makeConstraints { make in
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.width.equalTo(actualWidth(w: 140))
            make.width.equalTo(actualWidth(w: 140))
            //: make.height.equalTo(actualWidth(w: 50))
            make.height.equalTo(actualWidth(w: 50))
            //: make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
            make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(user_needValue - 60)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(maleButton.snp.bottom).offset(40)
            make.top.equalTo(maleButton.snp.bottom).offset(40)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func circle() {
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__pushToNextProgress()
                self.promotionNextDisplaceStatusTo()

                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: femaleButton.rx.tap
        femaleButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: CompositionReactiveCompatible.share.userFillInfoMode.sex = "2"
                CompositionReactiveCompatible.share.userFillInfoMode.sex = "2"
                //: self.func__checkNextBtnState()
                self.scale()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: maleButton.rx.tap
        maleButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: CompositionReactiveCompatible.share.userFillInfoMode.sex = "1"
                CompositionReactiveCompatible.share.userFillInfoMode.sex = "1"
                //: self.func__checkNextBtnState()
                self.scale()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}

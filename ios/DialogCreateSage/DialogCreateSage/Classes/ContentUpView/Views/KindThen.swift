
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainClearStr:[UInt8] = [0x76,0x71,0x76,0x6b,0x37,0x7c,0x70,0x7b,0x7a,0x6d,0x25,0x36,0x3f,0x77,0x7e,0x6c,0x3f,0x71,0x70,0x6b,0x3f,0x7d,0x7a,0x7a,0x71,0x3f,0x76,0x72,0x6f,0x73,0x7a,0x72,0x7a,0x71,0x6b,0x7a,0x7b]

private func bigEntitle(jump num: UInt8) -> UInt8 {
    return num ^ 31
}

/*: "icon_livetc_warn" :*/
fileprivate let userSnapUrl:[Character] = ["i","c","o","n","_","l","i","v"]
fileprivate let userVantageData:[Character] = ["e","t","c","_","w","a","r","n"]

/*: "System notification" :*/
fileprivate let appSmallData:[Character] = ["S","y","s","t","e","m"," ","n","o","t","i"]
fileprivate let k_honeyFoundStr:String = "depthica"

/*: "Upload Now" :*/
fileprivate let appTabTranslationKey:[Character] = ["U","p","l","o","a","d"," "]
fileprivate let constStagePath:[Character] = ["N","o","w"]

/*: "btn_me_program_photo_delete" :*/
fileprivate let mainSpeakerPath:String = "btn_maximum type"
fileprivate let data_incomeFormat:[Character] = ["g","r","a","m","_","p","h","o","t","o","_","d","e","l","e","t","e"]

/*: "content" :*/
fileprivate let data_formalMessage:String = "cofasttefastt"

/*: "jumpKey" :*/
fileprivate let data_stallText:String = "jumpKeting nearby"
fileprivate let appScopeValue:String = "principal"

/*: "uploadUserHeaderPic" :*/
fileprivate let constPublishKey:String = "bone comply may succeeduploadUse"
fileprivate let notiOwnerValue:[Character] = ["r","H","e","a","d","e","r","P","i","c"]

/*: "truePersonAuth" :*/
fileprivate let data_pingPath:[Character] = ["t","r","u","e","P","e"]
fileprivate let showTabUnknownHoneyMessage:String = "rbrushn"

/*: "headPic" :*/
fileprivate let userBrightName:String = "girl must errheadPic"

/*: "Modify the success" :*/
fileprivate let k_freshMessage:String = "Modifychange will brush"
fileprivate let main_canFormat:String = " thelet strip she photo unless"
fileprivate let k_entityName:String = "recommend play cycle tar express success"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  KindThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/23.
//

//: import UIKit
import UIKit

/// 真人认证被拒,头像审核提示弹窗

//: class TalkingAttestationRefusePopUpView: UIView {
class KindThen: UIView {
    //: var popView: TalkingPopView?
    var popView: FormalView?
    //: var pushType = ""
    var pushType = ""

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.sinceProcess()
        //: self.setupSubViewsConstraint()
        self.unprocessed()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainClearStr.map{bigEntitle(jump: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.BundleImageNamed(name: "icon_livetc_warn")
        imag.image = UIImage.parentSet(name: (String(userSnapUrl) + String(userVantageData)))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var title: UILabel = {
    private lazy var title: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.black
        lb.textColor = UIColor.black
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lb.font = UIFont.processAcross(type: .Medium, fontSize: 18)
        //: lb.text = "System notification".localized
        lb.text = (String(appSmallData) + k_honeyFoundStr.replacingOccurrences(of: "depth", with: "f") + "tion").localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var mesageLB: UILabel = {
    private lazy var mesageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.black
        lb.textColor = UIColor.black
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.processAcross(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        btn.setBackgroundImage(UIImage.keyLocal(colors: UIColor.sumerpretation(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Upload Now".localized, for: .normal)
        btn.setTitle((String(appTabTranslationKey) + String(constStagePath)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 18)
        btn.titleLabel?.font = UIFont.counteraction(fontSize: 18)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(followOutMove), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_me_program_photo_delete"), for: .normal)
        btn.setImage(UIImage.parentSet(name: (String(mainSpeakerPath.prefix(4)) + "me_pro" + String(data_incomeFormat))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(immediateNetwork), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingAttestationRefusePopUpView {
extension KindThen {
    //: func setViewData(dit: [String: String]) {
    func preposeCommonRadiotelegraphicSignal(dit: [String: String]) {
        //: mesageLB.text = dit["content"]
        mesageLB.text = dit[(data_formalMessage.replacingOccurrences(of: "fast", with: "n"))]
        //: pushType = dit["jumpKey"] ?? ""
        pushType = dit[(String(data_stallText.prefix(6)) + appScopeValue.replacingOccurrences(of: "principal", with: "y"))] ?? ""
    }

    //: @objc private func finishBtnClick() {
    @objc private func followOutMove() {
        //: if pushType == "uploadUserHeaderPic" {
        if pushType == (String(constPublishKey.suffix(9)) + String(notiOwnerValue)) {
            //: updatePhotoButtonClick()
            targetHighlight()
            //: } else if pushType == "truePersonAuth" {
        } else if pushType == (String(data_pingPath) + showTabUnknownHoneyMessage.replacingOccurrences(of: "brush", with: "so") + "Auth") {
            //: CompositionReactiveCompatible.share.loginUserMode.isTPAuth = "3"
            CompositionReactiveCompatible.share.loginUserMode.isTPAuth = "3"
            //: SightReactiveCompatible.share.func__pushUserVerifyController(toast: nil)
            SightReactiveCompatible.share.bringExposure(toast: nil)
            //: dismiss()
            pickInDismiss()
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func immediateNetwork() {
        //: dismiss()
        pickInDismiss()
    }

    //: func show() {
    func calculate() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = FormalView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.dotView(view: self)
        //: popView?.showInView(view: DirtyMacroDefine.getWindow())
        popView?.birdSEyeViewMiss(view: DirtyMacroDefine.effectRequire())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func pickInDismiss() {
        //: popView?.dismissView()
        popView?.detectDecide()
        //: popView = nil
        popView = nil
    }

    /// 更新photo
    //: private func updatePhotoButtonClick() {
    private func targetHighlight() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        MeetRouteThen.funcFromNog(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = StickPickTool.beyondVideo(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: self.currentViewController()?.present(vc, animated: true)
                self.mediumSave()?.present(vc, animated: true)
                //: vc.didFinishPickingPhotosHandle = { [weak self] ( photos: Array<UIImage>?,
                vc.didFinishPickingPhotosHandle = { [weak self] (photos: [UIImage]?,
                                                                 //: assets: Array<Any>?,
                                                                 _: [Any]?,
                                                                 //: isSelectOriginalPhoto: Bool?)  in
                                                                 _: Bool?) in
                        //: guard let self = self else {return}
                        guard let self = self else { return }
                        //: if photos!.count > 0 {
                        if photos!.count > 0 {
                            //: let image: UIImage = photos?[0] ?? UIImage()
                            let image: UIImage = photos?[0] ?? UIImage()
                            // 上传头像
                            //: self.req_updateInfo(img: image)
                            self.streetImg(img: image)
                        }
                        //: return
                }
                //: vc.imagePickerControllerDidCancelHandle = { [weak self] in
                vc.imagePickerControllerDidCancelHandle = { [weak self] in
                    //: guard let self = self else {return}
                    guard let self = self else { return }
                    //: self.dismiss()
                    self.pickInDismiss()
                }
                //: } else {
            } else {
                //: self.dismiss()
                self.pickInDismiss()
            }
        }
    }

    //: private func req_updateInfo(img: UIImage) {
    private func streetImg(img: UIImage) {
        //: let resultData: NSData = img.compressedImageData()! as NSData
        let resultData: NSData = img.availableData()! as NSData
        //: let dict = ["headPic": resultData]
        let dict = [(String(userBrightName.suffix(7))): resultData]
        //: ProgressHUD.show()
        PointerReactiveCompatible.soundAssetThrow()
        //: TalkingMeRequestTool.req_UpdateUserInfo(params: dict) { [weak self] succeed, result, errorModel in
        GreatThen.service(params: dict) { [weak self] succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            PointerReactiveCompatible.motivationCharmDismiss()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.dismiss()
            self.pickInDismiss()
            //: guard succeed else {
            guard succeed else {
                //: if errorModel?.errorCode != 100 {
                if errorModel?.errorCode != 100 {
                    //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                    self.foolishness(showMsg: errorModel!.errorMsg)
                }
                //: return
                return
            }
            //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
            self.through(showMsg: (String(k_freshMessage.prefix(6)) + String(main_canFormat.prefix(4)) + String(k_entityName.suffix(8))).localized)
            //: let data: Dictionary = result as! Dictionary<String, Any>
            let data: Dictionary = result as! [String: Any]
            //: CompositionReactiveCompatible.share.loginUserMode.headPic = data["headPic"] as? String
            CompositionReactiveCompatible.share.loginUserMode.headPic = data[(String(userBrightName.suffix(7)))] as? String
            //: CompositionReactiveCompatible.share.loginUserMode.headPicStatus = 0
            CompositionReactiveCompatible.share.loginUserMode.headPicStatus = 0
        }
    }
}

// MARK: - Layout

//: extension TalkingAttestationRefusePopUpView {
extension KindThen {
    // 添加视图
    //: private func setupSubviews() {
    private func sinceProcess() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(title)
        contentView.addSubview(title)
        //: contentView.addSubview(mesageLB)
        contentView.addSubview(mesageLB)
        //: contentView.addSubview(finishBtn)
        contentView.addSubview(finishBtn)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func unprocessed() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 297), height: actualWidth(w: 350)))
            make.size.equalTo(CGSize(width: actualWidth(w: 297), height: actualWidth(w: 350)))
        }
        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.size.equalTo(actualWidth(w: 93))
            make.size.equalTo(actualWidth(w: 93))
        }
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(topIcon.snp.bottom).offset(21)
            make.top.equalTo(topIcon.snp.bottom).offset(21)
        }
        //: mesageLB.snp.makeConstraints { make in
        mesageLB.snp.makeConstraints { make in
            //: make.leading.equalTo(21)
            make.leading.equalTo(21)
            //: make.trailing.equalTo(-21)
            make.trailing.equalTo(-21)
            //: make.top.equalTo(title.snp.bottom).offset(10)
            make.top.equalTo(title.snp.bottom).offset(10)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.width.equalTo(203)
            make.width.equalTo(203)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(30)
            make.top.equalTo(contentView.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
    }
}

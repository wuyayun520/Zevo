
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let notiDisabledText:[UInt8] = [0xd9,0xde,0xd9,0xc4,0x98,0xd3,0xdf,0xd4,0xd5,0xc2,0x8a,0x99,0x90,0xd8,0xd1,0xc3,0x90,0xde,0xdf,0xc4,0x90,0xd2,0xd5,0xd5,0xde,0x90,0xd9,0xdd,0xc0,0xdc,0xd5,0xdd,0xd5,0xde,0xc4,0xd5,0xd4]

private func saveerWith(given num: UInt8) -> UInt8 {
    return num ^ 176
}

/*: "Personal information" :*/
fileprivate let appPersonalityReceiveGrayPath:[Character] = ["P","e","r","s","o","n","a","l"," ","i","n","f","o","r"]
fileprivate let mainCloseerLivingName:String = "structure"
fileprivate let k_careerMessage:String = "readingion"

/*: "male" :*/
fileprivate let show_designMagnitudeerestTitle:[UInt8] = [0x65,0x6c,0x61,0x6d]

/*: "female" :*/
fileprivate let notiOrientationPath:[Character] = ["f","e","m","a","l","e"]

/*: "newHeadPic" :*/
fileprivate let user_heartValue:String = "newHsignal mystery extended hello"

/*: "invite_code" :*/
fileprivate let constMissingValue:String = "demonstratenvdemonstrate"
fileprivate let const_rankName:[Character] = ["o","d","e"]

/*: "codeFillType" :*/
fileprivate let app_contentPath:[Character] = ["c","o","d","e","F","i","l","l","T","y","p","e"]

/*: "RegisterSuccess" :*/
fileprivate let userMediaFormat:String = "Regicontent publication"
fileprivate let notiObserverId:String = "ucceword"
fileprivate let notiLetterKey:[Character] = ["s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TrailControllerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/24.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditPhotoVC: TalkingBaseViewController {
class TrailControllerDelegate: MergeContactViewController {
    //: fileprivate let disposeBag = DisposeBag()
    fileprivate let disposeBag = DisposeBag()
    //: var params = [String: Any]()
    var params = [String: Any]()
    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: notiDisabledText.map{saveerWith(given: $0)}, encoding: .utf8)!)
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
        self.title = (String(appPersonalityReceiveGrayPath) + mainCloseerLivingName.replacingOccurrences(of: "structure", with: "m") + k_careerMessage.replacingOccurrences(of: "reading", with: "at")).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.distance()
        //: self.setupSubViewsConstraint()
        self.hideWith()
        //: self.bindInteraction()
        self.scene()
        //: addTapGestureRecognizer()
        mixInThroughLimit()

        //: func__checkFinishBtnState()
        sequence()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var editInfoView: TalkingLoginEditPhotoView = {
    lazy var editInfoView: OptPhotoView = {
        //: let infoView = TalkingLoginEditPhotoView.init()
        let infoView = OptPhotoView()
        //: return infoView
        return infoView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginEditPhotoVC {
extension TrailControllerDelegate {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func publicTransport() {
        //: super.naviPopback()
        super.publicTransport()
        // 埋点
        //: let eventID = "\(click_registration_information2_backBTN)_\(CompositionReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(k_informationSamplePurchaseKey)_\(CompositionReactiveCompatible.share.userFillInfoMode.sex == ArrowGender.male.rawValue ? String(bytes: show_designMagnitudeerestTitle.reversed(), encoding: .utf8)! : (String(notiOrientationPath)))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        noti_liveLevelUrl.recordGender(eventID: eventID)
    }

    /// next事件
    //: func commitControlAction() {
    func utilize() {
        // 埋点
        //: let eventID = "\(click_registration_information2_nextBTN)_\(CompositionReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(appFrameFormat)_\(CompositionReactiveCompatible.share.userFillInfoMode.sex == ArrowGender.male.rawValue ? String(bytes: show_designMagnitudeerestTitle.reversed(), encoding: .utf8)! : (String(notiOrientationPath)))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        noti_liveLevelUrl.recordGender(eventID: eventID)

        //: if CompositionReactiveCompatible.share.userFillInfoMode.headImage != nil {
        if CompositionReactiveCompatible.share.userFillInfoMode.headImage != nil {
            //: let image = CompositionReactiveCompatible.share.userFillInfoMode.headImage!
            let image = CompositionReactiveCompatible.share.userFillInfoMode.headImage!
            //: params["newHeadPic"] = image.jpegData(compressionQuality: 1)
            params[(String(user_heartValue.prefix(4)) + "eadPic")] = image.jpegData(compressionQuality: 1)
        }
        //: if CompositionReactiveCompatible.share.userFillInfoMode.inviteCode.count > 0 {
        if CompositionReactiveCompatible.share.userFillInfoMode.inviteCode.count > 0 {
            //: params["invite_code"] = CompositionReactiveCompatible.share.userFillInfoMode.inviteCode
            params[(constMissingValue.replacingOccurrences(of: "demonstrate", with: "i") + "te_c" + String(const_rankName))] = CompositionReactiveCompatible.share.userFillInfoMode.inviteCode

            //: } else {
        } else {
            //: let inviteCode = UserDefaults.standard.string(forKey: SaveInviteCodeKey)
            let inviteCode = UserDefaults.standard.string(forKey: constDiskKey)
            //: if inviteCode?.count ?? 0 > 1 {
            if inviteCode?.count ?? 0 > 1 {
                //: params["invite_code"] = inviteCode
                params[(constMissingValue.replacingOccurrences(of: "demonstrate", with: "i") + "te_c" + String(const_rankName))] = inviteCode
                //: params["codeFillType"] = 1
                params[(String(app_contentPath))] = 1
            }
        }

        //: if CompositionReactiveCompatible.share.userFillInfoMode.sex == "1" {
        if CompositionReactiveCompatible.share.userFillInfoMode.sex == "1" {
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
                    AuthorReminderReactiveCompatible.share.mutualFollowingKey(key: (String(userMediaFormat.prefix(4)) + "sterS" + notiObserverId.replacingOccurrences(of: "word", with: "s") + String(notiLetterKey)))
                    //: FirebaseAnalyticsManager.share.logEvent(name: "RegisterSuccess")
                    WarningThen.share.builder(name: (String(userMediaFormat.prefix(4)) + "sterS" + notiObserverId.replacingOccurrences(of: "word", with: "s") + String(notiLetterKey)))

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
            //: } else {
        } else {
            //: let VC = TalkingLoginEditAuthAndVideoVC.init()
            let VC = ScanViewController()
            //: VC.params = params
            VC.params = params
            //: self.currentViewController()?.navigationController?.pushViewController(VC, animated: true)
            self.mediumSave()?.navigationController?.pushViewController(VC, animated: true)
        }
    }

    //: func func__checkFinishBtnState() {
    func sequence() {
        //: let headImg = CompositionReactiveCompatible.share.userFillInfoMode.headImage ?? nil
        let headImg = CompositionReactiveCompatible.share.userFillInfoMode.headImage ?? nil
        //: editInfoView.commitButton.isEnabled = headImg != nil
        editInfoView.commitButton.isEnabled = headImg != nil
    }
}

// MARK: - Delegate

//: extension TalkingLoginEditPhotoVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
extension TrailControllerDelegate: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //: private func func__choicePhotos() {
    private func crop() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) {  (isOpen: Bool) in
        MeetRouteThen.funcFromNog(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = StickPickTool.beyondVideo(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: SightReactiveCompatible.share.func__getCurrentActivityVC()?.present(vc, animated: true)
                SightReactiveCompatible.share.reserveUp()?.present(vc, animated: true)
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
                            //: CompositionReactiveCompatible.share.userFillInfoMode.headImage = photos![0]
                            CompositionReactiveCompatible.share.userFillInfoMode.headImage = photos![0]
                            //: self.editInfoView.addHeadButton.setImage(photos![0], for: .normal)
                            self.editInfoView.addHeadButton.setImage(photos![0], for: .normal)
                            //: self.func__checkFinishBtnState()
                            self.sequence()
                        }
                }
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginEditPhotoVC {
extension TrailControllerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func distance() {
        //: view.addSubview(editInfoView)
        view.addSubview(editInfoView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func hideWith() {
        //: editInfoView.snp.makeConstraints { make in
        editInfoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func scene() {
        //: editInfoView.btnBlock = { [weak self] (_ type: EditInfoType) -> Void in
        editInfoView.btnBlock = { [weak self] (_ type: BroadInfoType) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .HeadPic:
            case .HeadPic:
                //: func__choicePhotos()
                crop()
            //: break
            //: case .NickName, .Birth, .Skip: break
            case .NickName, .Birth, .Skip: break
            //: case .Finish:
            case .Finish:
                //: self.commitControlAction()
                self.utilize()
                //: break
            }

            //: return
        }
    }
}

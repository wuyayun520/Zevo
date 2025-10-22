
//: Declare String Begin

/*: "Personal information" :*/
fileprivate let const_dataRouteValue:String = "Persoconsist discourse feed selected complaint"
fileprivate let show_transitionStr:String = "formatfeather"
fileprivate let app_livingVersionMouthUrl:String = "selection"

/*: "male" :*/
fileprivate let app_effectValue:[UInt8] = [0x83,0x8f,0x82,0x8b]

private func exploreJaw(will num: UInt8) -> UInt8 {
    return num ^ 238
}

/*: "female" :*/
fileprivate let kPortData:String = "F"
fileprivate let mainSignUrl:String = "cleanmalclean"

/*: "sex" :*/
fileprivate let notiBlueBeginFormat:String = "slocalx"

/*: "nickname" :*/
fileprivate let data_leaveProductName:[Character] = ["n","i","c","k","n","a","m","e"]

/*: "birthday" :*/
fileprivate let noti_detailedPath:String = "resistancerthday"

/*: "User :*/
fileprivate let k_curId:[Character] = ["U","s","e","r"]

/*: "invite_code" :*/
fileprivate let dataAdvancedKey:[UInt8] = [0x65,0x64,0x6f,0x63,0x5f,0x65,0x74,0x69,0x76,0x6e,0x69]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReaderViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditInfoVC: TalkingBaseViewController {
class ReaderViewController: MergeContactViewController {
    //: fileprivate let disposeBag = DisposeBag()
    fileprivate let disposeBag = DisposeBag()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        popOutInPrise(isOpen: false)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        // 返回到此页面时，重新赋值
        //: if editInfoView.nameInputView.text?.count ?? 0 > 0 {
        if editInfoView.nameInputView.text?.count ?? 0 > 0 {
            //: CompositionReactiveCompatible.share.userFillInfoMode.nickName = editInfoView.nameInputView.text ?? ""
            CompositionReactiveCompatible.share.userFillInfoMode.nickName = editInfoView.nameInputView.text ?? ""
        }
        //: if editInfoView.inviteCodeInputView.text?.count ?? 0 > 0 {
        if editInfoView.inviteCodeInputView.text?.count ?? 0 > 0 {
            //: CompositionReactiveCompatible.share.userFillInfoMode.inviteCode = editInfoView.inviteCodeInputView.text ?? ""
            CompositionReactiveCompatible.share.userFillInfoMode.inviteCode = editInfoView.inviteCodeInputView.text ?? ""
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: title = "Personal information".localized
        title = (String(const_dataRouteValue.prefix(5)) + "nal in" + show_transitionStr.replacingOccurrences(of: "feather", with: "io") + app_livingVersionMouthUrl.replacingOccurrences(of: "selection", with: "n")).localized
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: setupSubviews()
        moreRoot()
        //: setupSubViewsConstraint()
        character()
        //: bindInteraction()
        cling()
        //: addTapGestureRecognizer()
        mixInThroughLimit()
    }

    // MARK: - Lazy Load

    //: private lazy var editInfoView: TalkingLoginEditInfoView = {
    private lazy var editInfoView: ChinOuterReactiveCompatible = {
        //: let infoView = TalkingLoginEditInfoView()
        let infoView = ChinOuterReactiveCompatible()
        //: return infoView
        return infoView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginEditInfoVC {
extension ReaderViewController {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func publicTransport() {
        //: super.naviPopback()
        super.publicTransport()
        // 埋点
        //: let eventID = "\(click_registration_information1_backBTN)_\(CompositionReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(app_partySendStr)_\(CompositionReactiveCompatible.share.userFillInfoMode.sex == ArrowGender.male.rawValue ? String(bytes: app_effectValue.map{exploreJaw(will: $0)}, encoding: .utf8)! : (kPortData.lowercased() + mainSignUrl.replacingOccurrences(of: "clean", with: "e")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        noti_liveLevelUrl.recordGender(eventID: eventID)
    }

    /// next事件
    //: private func commitControlAction() {
    private func halfAction() {
        //: if CompositionReactiveCompatible.share.userFillInfoMode.nickName.count <= 0 {
        if CompositionReactiveCompatible.share.userFillInfoMode.nickName.count <= 0 {
            //: getRandomNickname()
            missErgodicBringIn()
        }
        //: var params = [String: Any]()
        var params = [String: Any]()
        //: params["sex"] = CompositionReactiveCompatible.share.userFillInfoMode.sex
        params[(notiBlueBeginFormat.replacingOccurrences(of: "local", with: "e"))] = CompositionReactiveCompatible.share.userFillInfoMode.sex
        //: params["nickname"] = CompositionReactiveCompatible.share.userFillInfoMode.nickName
        params[(String(data_leaveProductName))] = CompositionReactiveCompatible.share.userFillInfoMode.nickName
        //: params["birthday"] = "\(String(format: "%.2d", CompositionReactiveCompatible.share.userFillInfoMode.birthMonth))-\(String(format: "%.2d", CompositionReactiveCompatible.share.userFillInfoMode.birthDay))-\(CompositionReactiveCompatible.share.userFillInfoMode.birthYear)"
        params[(noti_detailedPath.replacingOccurrences(of: "resistance", with: "bi"))] = "\(String(format: "%.2d", CompositionReactiveCompatible.share.userFillInfoMode.birthMonth))-\(String(format: "%.2d", CompositionReactiveCompatible.share.userFillInfoMode.birthDay))-\(CompositionReactiveCompatible.share.userFillInfoMode.birthYear)"
        //: let VC = TalkingLoginEditPhotoVC()
        let VC = TrailControllerDelegate()
        //: VC.params = params
        VC.params = params
        //: currentViewController()?.navigationController?.pushViewController(VC, animated: true)
        mediumSave()?.navigationController?.pushViewController(VC, animated: true)
    }

    /// skip事件
    //: private func func__skipBtnAction() {
    private func image() {
        //: getRandomNickname()
        missErgodicBringIn()
        //: CompositionReactiveCompatible.share.userFillInfoMode.setBirth()
        CompositionReactiveCompatible.share.userFillInfoMode.outsetPrepare()
        //: CompositionReactiveCompatible.share.userFillInfoMode.inviteCode = ""
        CompositionReactiveCompatible.share.userFillInfoMode.inviteCode = ""
        //: commitControlAction()
        halfAction()
    }

    /// 获取随机昵称
    //: private func getRandomNickname() {
    private func missErgodicBringIn() {
        //: let randCode = Int(arc4random_uniform(899999) + 100000)
        let randCode = Int(arc4random_uniform(899_999) + 100_000)
        //: CompositionReactiveCompatible.share.userFillInfoMode.nickName = "User\(randCode)"
        CompositionReactiveCompatible.share.userFillInfoMode.nickName = (String(k_curId)) + "\(randCode)"
    }
}

// MARK: - Layout

//: extension TalkingLoginEditInfoVC {
extension ReaderViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func moreRoot() {
        //: view.addSubview(editInfoView)
        view.addSubview(editInfoView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func character() {
        //: editInfoView.snp.makeConstraints { make in
        editInfoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func cling() {
        //: editInfoView.btnBlock = { [weak self] (_ type: EditInfoType) in
        editInfoView.btnBlock = { [weak self] (_ type: BroadInfoType) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .HeadPic: break
            case .HeadPic: break
            //: case .NickName: break
            case .NickName: break
            //: case .Birth: break
            case .Birth: break
            //: case .Finish:
            case .Finish:
                // 埋点
                //: let eventID = "\(click_registration_information1_nextBTN)_\(CompositionReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
                let eventID = "\(const_showInfoValue)_\(CompositionReactiveCompatible.share.userFillInfoMode.sex == ArrowGender.male.rawValue ? String(bytes: app_effectValue.map{exploreJaw(will: $0)}, encoding: .utf8)! : (kPortData.lowercased() + mainSignUrl.replacingOccurrences(of: "clean", with: "e")))"
                //: uploadRecord.uploadRecordEvent(eventID: eventID)
                noti_liveLevelUrl.recordGender(eventID: eventID)

                // 校验验证码
                //: if CompositionReactiveCompatible.share.userFillInfoMode.inviteCode.count > 0 {
                if CompositionReactiveCompatible.share.userFillInfoMode.inviteCode.count > 0 {
                    //: let params = ["invite_code": CompositionReactiveCompatible.share.userFillInfoMode.inviteCode]
                    let params = [String(bytes: dataAdvancedKey.reversed(), encoding: .utf8)!: CompositionReactiveCompatible.share.userFillInfoMode.inviteCode]
                    //: TalkingLoginRequestTool.req_CheckCodeData(params: params) { succeed, _, _ in
                    MidRequestTool.device(params: params) { succeed, _, _ in
                        //: guard succeed else { return }
                        guard succeed else { return }
                        //: self.commitControlAction()
                        self.halfAction()
                    }

                    //: } else {
                } else {
                    //: self.commitControlAction()
                    self.halfAction()
                }

            //: case .Skip:
            case .Skip:
                // 埋点
                //: let eventID = "\(click_registration_information1_skipBTN)_\(CompositionReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
                let eventID = "\(k_textKey)_\(CompositionReactiveCompatible.share.userFillInfoMode.sex == ArrowGender.male.rawValue ? String(bytes: app_effectValue.map{exploreJaw(will: $0)}, encoding: .utf8)! : (kPortData.lowercased() + mainSignUrl.replacingOccurrences(of: "clean", with: "e")))"
                //: uploadRecord.uploadRecordEvent(eventID: eventID)
                noti_liveLevelUrl.recordGender(eventID: eventID)
                //: self.func__skipBtnAction()
                self.image()
            }
        }
    }
}

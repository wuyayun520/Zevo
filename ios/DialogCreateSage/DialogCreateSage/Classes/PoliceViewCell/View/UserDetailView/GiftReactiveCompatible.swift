
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_remainName:[UInt8] = [0x6a,0x6f,0x6a,0x75,0x29,0x64,0x70,0x65,0x66,0x73,0x3b,0x2a,0x21,0x69,0x62,0x74,0x21,0x6f,0x70,0x75,0x21,0x63,0x66,0x66,0x6f,0x21,0x6a,0x6e,0x71,0x6d,0x66,0x6e,0x66,0x6f,0x75,0x66,0x65]

fileprivate func successfulDetail(assist num: UInt8) -> UInt8 {
    let value = Int(num) + 255
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "bg_others_shadow_up" :*/
fileprivate let userHouseText:String = "range televisionbg_oth"
fileprivate let data_mediaValue:String = "ers_shmember minimize insert"

/*: "nav_back_black_nor" :*/
fileprivate let constGivingAppealAutoMessage:String = "change create servernav_ba"
fileprivate let mainBagPopularValue:[Character] = ["c","k","_","b"]
fileprivate let k_filterSiblingName:[Character] = ["l","a","c","k","_","n","o","r"]

/*: "btn_detail_more" :*/
fileprivate let constSegmentAboveFormat:[Character] = ["b","t","n","_","d","e","t","a","i","l","_","m","o","r"]
fileprivate let k_sinceMsg:[Character] = ["e"]

/*: "Shielding Success" :*/
fileprivate let user_particleMsg:String = "smart foreheadShie"
fileprivate let dataNorthKey:String = "g Successhort shrink receive"
fileprivate let user_ownPressUrl:String = "restore"

/*: "Unmasking Succeeded" :*/
fileprivate let appPrettyConditionData:String = "pattern detail next mask plantUnmaski"
fileprivate let noti_micStr:String = "ng Sualbum successful communicate"

/*: "Report" :*/
fileprivate let app_areaBigMsg:String = "Reportskirt type immediate"

/*: "Remvoe Block" :*/
fileprivate let const_birdPartFormat:[Character] = ["R","e","m","v","o","e"]
fileprivate let main_foreheadUrl:[Character] = [" "]
fileprivate let appSomethingData:String = "production detail restaurantBlock"

/*: "Block" :*/
fileprivate let userTitleStr:String = "Blockconnection regain eff reward"

/*: "Cancel" :*/
fileprivate let appOptionData:[Character] = ["C","a","n","c","e","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GiftReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/9.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailNaviBarView: UIView {
class GiftReactiveCompatible: UIView {
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var isBlack = false
    private var isBlack = false // 是否已拉黑
    //: private var userInfoModel = TalkingUserInfoModel()
    private var userInfoModel = ExecMeasurable() // 用户资料

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: setupSubviews()
        put()
        //: setupSubViewsConstraint()
        message()
        //: bindInteraction()
        sumerrupt()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_remainName.map{successfulDetail(assist: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.BundleImageNamed(name: "bg_others_shadow_up")
        imgV.image = UIImage.parentSet(name: (String(userHouseText.suffix(6)) + String(data_mediaValue.prefix(6)) + "adow_up"))
        //: return imgV
        return imgV
        //: }()
    }()

    //: lazy var whiteBgView: UIView = {
    lazy var whiteBgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.alpha = 0
        v.alpha = 0
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        lab.font = UIFont.processAcross(type: .Medium, fontSize: 17)
        //: lab.textColor = .appTitleColor()
        lab.textColor = .antiquityColor()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ReadingLanguageManager.shared.direction == .rightToLeft {
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var backButton: UIButton = {
    lazy var backButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.BundleImageNamed(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.parentSet(name: (String(constGivingAppealAutoMessage.suffix(6)) + String(mainBagPopularValue) + String(k_filterSiblingName))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(sumAction), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var moreButton: UIButton = {
    lazy var moreButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.BundleImageNamed(name: "btn_detail_more").withRenderingMode(.alwaysTemplate)
        let img = UIImage.parentSet(name: (String(constSegmentAboveFormat) + String(k_sinceMsg))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingUserDetailNaviBarView {
extension GiftReactiveCompatible {
    /// 拉黑和取消拉黑
    //: private func req_pullBlackRequest() {
    private func two() {
        //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: self.userInfoModel.uid, isBlack: !self.isBlack) { succeed, result, errorModel in
        MpThen.personality(uid: self.userInfoModel.uid, isBlack: !self.isBlack) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                //: self.isBlack = !self.isBlack
                self.isBlack = !self.isBlack
                //: let toastStr = self.isBlack == true ? "Shielding Success".localized : "Unmasking Succeeded".localized
                let toastStr = self.isBlack == true ? (String(user_particleMsg.suffix(4)) + "ldin" + String(dataNorthKey.prefix(8)) + user_ownPressUrl.replacingOccurrences(of: "restore", with: "s")).localized : (String(appPrettyConditionData.suffix(7)) + String(noti_micStr.prefix(5)) + "cceeded").localized
                //: ProgressHUD.toast(toastStr)
                PointerReactiveCompatible.stateToast(toastStr)
            }
        }
    }
}

// MARK: - Event

//: extension TalkingUserDetailNaviBarView {
extension GiftReactiveCompatible {
    //: @objc private func clickBackButtonAction() {
    @objc private func sumAction() {
        //: SightReactiveCompatible.share.func__getCurrentActivityVC()?.navigationController?.popViewController(animated: true)
        SightReactiveCompatible.share.reserveUp()?.navigationController?.popViewController(animated: true)
    }

    //: @objc private func registerMoreButtonAction() {
    @objc private func blackPanthers() {
        //: let vc = TalkingMunuPopView.init(frame: UIScreen.main.bounds)
        let vc = AddressPopView(frame: UIScreen.main.bounds)
        //: var titleArr = ["Report".localized]
        var titleArr = [(String(app_areaBigMsg.prefix(6))).localized]
        //: let uid = Int(userInfoModel.uid) ?? 0
        let uid = Int(userInfoModel.uid) ?? 0

        //: titleArr.append(self.isBlack ? "Remvoe Block".localized : "Block".localized)
        titleArr.append(self.isBlack ? (String(const_birdPartFormat) + String(main_foreheadUrl) + String(appSomethingData.suffix(5))).localized : (String(userTitleStr.prefix(5))).localized)

        //: vc.initwithList(cellTitleList: titleArr)
        vc.mapFile(cellTitleList: titleArr)
        //: vc.munuBlock = { index, str in
        vc.munuBlock = { index, _ in
            //: if index==0 {
            if index == 0 {
                //: self.reportAction()
                self.dataRemind()
                //: } else if index==1 {
            } else if index == 1 {
                //: self.pullBlackAction()
                self.resistanceAction()
            }
        }
    }

    /// 举报用户
    //: private func reportAction() {
    private func dataRemind() {
        //: let reportView = TalkingReportAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: userInfoModel.uid)
        let reportView = ArrowCapAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: userInfoModel.uid)
        //: reportView.showReportViewIn(view: nil)
        reportView.whenReport(view: nil)
    }

    /// 拉黑用户
    //: private func pullBlackAction() {
    private func resistanceAction() {
        //: guard self.isBlack == false else {
        guard self.isBlack == false else {
            //: req_pullBlackRequest()
            two()
            //: return
            return
        }

        //: TalkingAlertShow.alert(title: nil, message: kMessage_blocking, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized) {
        YetAlertShow.trackSpace(title: nil, message: noti_warningId, leftBtnTitle: (String(appOptionData)).localized, rightBtnTitle: "OK".localized) {
            //: TalkingAlertShow.hideAlert()
            YetAlertShow.usance()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            YetAlertShow.usance()
            //: self.req_pullBlackRequest()
            self.two()
        }
    }
}

// MARK: Layout

//: extension TalkingUserDetailNaviBarView {
extension GiftReactiveCompatible {
    /// 刷新
    //: func refreshView(_ userModel: TalkingUserInfoModel) {
    func molarConcentration(_ userModel: ExecMeasurable) {
        //: self.userInfoModel = userModel
        self.userInfoModel = userModel
        //: self.isBlack = userModel.inMyBlackList
        self.isBlack = userModel.inMyBlackList
        //: self.moreButton.isHidden = (userModel.uid == CompositionReactiveCompatible.share.loginUid)
        self.moreButton.isHidden = (userModel.uid == CompositionReactiveCompatible.share.loginUid)
        //: titleLab.text = userModel.nickname
        titleLab.text = userModel.nickname
    }

    //: private func setupSubviews() {
    private func put() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(bgImgView)
        addSubview(bgImgView)
        //: addSubview(whiteBgView)
        addSubview(whiteBgView)
        //: whiteBgView.addSubview(titleLab)
        whiteBgView.addSubview(titleLab)
        //: addSubview(backButton)
        addSubview(backButton)
        //: addSubview(moreButton)
        addSubview(moreButton)
    }

    //: private func setupSubViewsConstraint() {
    private func message() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: whiteBgView.snp.makeConstraints { make in
        whiteBgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(noti_guideRequestId)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(main_buildValue)
            //: make.width.equalTo(200)
            make.width.equalTo(200)
        }

        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(main_buildValue)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(noti_guideRequestId)
        }

        //: moreButton.snp.makeConstraints { make in
        moreButton.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.centerY.equalTo(backButton.snp.centerY)
            make.centerY.equalTo(backButton.snp.centerY)
            //: make.size.equalTo(CGSize(width: 45, height: NavigationBarHeight))
            make.size.equalTo(CGSize(width: 45, height: main_buildValue))
        }
    }

    //: private func bindInteraction() {
    private func sumerrupt() {
        //: moreButton.rx.controlEvent(.touchUpInside).subscribe(onNext: { [weak self] in
        moreButton.rx.controlEvent(.touchUpInside).subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.registerMoreButtonAction()
            self.blackPanthers()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}

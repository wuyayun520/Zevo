
//: Declare String Begin

/*: "bg_shouye_misanguang_default" :*/
fileprivate let main_channelContent:String = "bone install cry compete drawingbg_shouy"
fileprivate let mainTransmissionMsg:[Character] = ["e","_","m","i","s","a","n","g"]
fileprivate let noti_hairCookieMutualMessage:[Character] = ["u","a","n","g","_","d","e","f","a","u","l","t"]

/*: "Popular" :*/
fileprivate let app_detailedValueTitle:String = "Populleast football hour motivation"
fileprivate let constCancelName:String = "labelr"

/*: "777777" :*/
fileprivate let notiHelloBoneMsg:[Character] = ["7","7","7","7","7","7"]

/*: "icon_moment_news_nor" :*/
fileprivate let userBeautifulMessage:[Character] = ["i","c","o","n","_","m","o","m","e","n","t","_","n","e","w","s","_","n","o","r"]

/*: "icon_free_pre" :*/
fileprivate let mainAgencyContent:String = "icon_frreturn installation"
fileprivate let showHairTitle:String = "ee_preweekly character miss career lift"

/*: "num" :*/
fileprivate let noti_fatalMessage:[Character] = ["n","u","m"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TwoRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

// MARK: - 属性声明 & 生命周期方法

//: class TalkingMomentViewController: TalkingBaseViewController {
class TwoRecognizerDelegate: MergeContactViewController {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        connectNow()
        //: setupSubViewsConstraint()
        countM()
        //: NotificationCenter.default.addObserver(self, selector: #selector(freeNotif), name: FREEBTN_UPLOAD_POST_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(point), name: data_restoreMsg, object: nil)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: load_remindNum()
        upTo()
    }

    //: private lazy var bottomImgView: UIImageView = {
    private lazy var bottomImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.BundleImageNamed(name: "bg_shouye_misanguang_default"))
        let imgV = UIImageView(image: UIImage.parentSet(name: (String(main_channelContent.suffix(8)) + String(mainTransmissionMsg) + String(noti_hairCookieMutualMessage))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var slideVC: QYSlideNavigationViewController = {
    private lazy var slideVC: ExThen = {
        //: let vc = QYSlideNavigationViewController()
        let vc = ExThen()
        //: vc.topDistance = NavigationBarHeight
        vc.topDistance = main_buildValue
        //: vc.controllerItems = [TalkingPopularMomentVC()]
        vc.controllerItems = [PointDataSource()]
        //: vc.titleItems = ["Popular".localized]
        vc.titleItems = [(String(app_detailedValueTitle.prefix(5)) + constCancelName.replacingOccurrences(of: "label", with: "a")).localized]
        //: vc.titleViewBackgroundColor = .clear
        vc.titleViewBackgroundColor = .clear
        //: vc.titleFont = .pingfangFont(type: .Medium, fontSize: 16)
        vc.titleFont = .processAcross(type: .Medium, fontSize: 16)
        //: vc.selectTitleFont = .pingfangFont(type: .Medium, fontSize: 18)
        vc.selectTitleFont = .processAcross(type: .Medium, fontSize: 18)
        //: vc.normalColor = UIColor(hex: "777777")!
        vc.normalColor = UIColor(hex: (String(notiHelloBoneMsg)))!
        //: vc.selectedColor = UIColor.appTitleColor()
        vc.selectedColor = UIColor.antiquityColor()
        //: vc.hasBttomTabBar = true
        vc.hasBttomTabBar = true
        //: vc.delegate = self
        vc.delegate = self
        //: vc.scrollEnabled = false
        vc.scrollEnabled = false
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var newsBtn: UIButton = {
    private lazy var newsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_moment_news_nor"), for: .normal)
        btn.setImage(UIImage.parentSet(name: (String(userBeautifulMessage))), for: .normal)
        //: btn.addTarget(self, action: #selector(newsBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(limitMobile), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var newsBadgeLab: BadgeLab = {
    private lazy var newsBadgeLab: CoronaBadgeLab = {
        //: let label = BadgeLab()
        let label = CoronaBadgeLab()
        //: label.isHidden = true
        label.isHidden = true
        //: return label
        return label
        //: }()
    }()

    //: private lazy var freeBtn: UIButton = {
    private lazy var freeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.BundleImageNamed(name: "icon_free_pre"), for: .normal)
        btn.setBackgroundImage(UIImage.parentSet(name: (String(mainAgencyContent.prefix(7)) + String(showHairTitle.prefix(6)))), for: .normal)
        //: btn.addTarget(self, action: #selector(freeBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(currentSize), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingMomentViewController {
extension TwoRecognizerDelegate {
    /// 获取用户当前未读动态数量
    //: private func load_remindNum() {
    private func upTo() {
        //: TalkingMomentRequestTool.req_getRemindNum { succeed, result, errorModel in
        ContentWeeklyReactiveCompatible.delayAcrossCompletion { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [])
            let json = JSON(result ?? [])
            //: self.refreshNewsbadge(num: json["num"].intValue)
            self.betweenFlow(num: json[(String(noti_fatalMessage))].intValue)
        }
    }
}

// MARK: - Event

//: extension TalkingMomentViewController {
extension TwoRecognizerDelegate {
    /// 跳转到动态通知列表
    //: @objc private func newsBtnClickEvent() {
    @objc private func limitMobile() {
        //: refreshNewsbadge(num: 0)
        betweenFlow(num: 0)
        //: let vc = TalkingMomentNewsFeedViewController()
        let vc = ViewRecognizerDelegate()
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }

    /// 发布通知
    //: @objc func freeNotif() {
    @objc func point() {
        //: freeBtnClickEvent()
        currentSize()
    }

    /// 发布
    //: @objc func freeBtnClickEvent() {
    @objc func currentSize() {
        //: if CompositionReactiveCompatible.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue, CompositionReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue, CompositionReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue {
        if CompositionReactiveCompatible.share.loginUserMode.isTPAuth != GiftMeasurable.isSuccessed.rawValue, CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.female.rawValue, CompositionReactiveCompatible.share.appStatus == ColumnExInsetTarget.normal.rawValue {
            //: AppManagerRequest.func__requestUserInfo { _, _, _ in
            PlightThen.end { _, _, _ in
                //: if !CompositionReactiveCompatible.share.loginUserMode.isNaUser,
                if !CompositionReactiveCompatible.share.loginUserMode.isNaUser,
                   //: CompositionReactiveCompatible.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue
                   CompositionReactiveCompatible.share.loginUserMode.isTPAuth != GiftMeasurable.isSuccessed.rawValue
                {
                    /// 真人认证提示弹窗
                    //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                    GenerateingReactiveCompatible.shared.nuclearFamilyConversion()
                    //: return
                    return
                        //: } else {
                } else {
                    //: self.pushFreeVC()
                    self.tipHead()
                }
            }
            //: } else {
        } else {
            //: pushFreeVC()
            tipHead()
        }
    }

    //: private func pushFreeVC() {
    private func tipHead() {
        //: let isShow = Defaults.bool(forKey: TalkingFreeTipsViewIsShow)
        let isShow = user_liveMsg.bool(forKey: data_sceneId)
        //: let freeVC = TalkingFreeViewController()
        let freeVC = MedalOfHonorObjectProtocol()
        //: freeVC.delegate = slideVC.controllerItems.first as? any TalkingFreeViewControllerDelegate
        freeVC.delegate = slideVC.controllerItems.first as? any TreaclyControllerDelegate
        //: guard isShow == false else {
        guard isShow == false else { // 已展示过
            //: navigationController?.pushViewController(freeVC, animated: true)
            navigationController?.pushViewController(freeVC, animated: true)
            //: return
            return
        }
        //: TalkingFreeTipsView().showView {
        ExecTipsView().panoramicViewShowOkHandler {
            //: self.navigationController?.pushViewController(freeVC, animated: true)
            self.navigationController?.pushViewController(freeVC, animated: true)
        }
    }
}

// MARK: - SerialNavigationDelegate

//: extension TalkingMomentViewController: QYSlideNavigationDelegate {
extension TwoRecognizerDelegate: SerialNavigationDelegate {
    //: func selectedViewController(_ viewController: UIViewController, index: Int) {}
    func light(_: UIViewController, index _: Int) {}
}

// MARK: - Layout

//: extension TalkingMomentViewController {
extension TwoRecognizerDelegate {
    /// 刷新动态通知角标
    //: func refreshNewsbadge(num: Int) {
    func betweenFlow(num: Int) {
        //: newsBadgeLab.isHidden = num > 0 ? false:true
        newsBadgeLab.isHidden = num > 0 ? false : true
        //: newsBadgeLab.text = num > 99 ? "99+":String(num)
        newsBadgeLab.text = num > 99 ? "99+" : String(num)
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func connectNow() {
        //: hideNavi = true
        hideNavi = true
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        // 导航底部渐变背景
        //: view.addSubview(bottomImgView)
        view.addSubview(bottomImgView)
        //: addChild(slideVC)
        addChild(slideVC)
        //: view.addSubview(slideVC.view)
        view.addSubview(slideVC.view)
        //: view.addSubview(newsBtn)
        view.addSubview(newsBtn)
        //: view.addSubview(newsBadgeLab)
        view.addSubview(newsBadgeLab)
        //: view.addSubview(freeBtn)
        view.addSubview(freeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func countM() {
        //: bottomImgView.snp.makeConstraints { make in
        bottomImgView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(145+StatusBarHeight)
            make.height.equalTo(145 + noti_guideRequestId)
        }
        //: newsBtn.snp.makeConstraints { make in
        newsBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(noti_guideRequestId)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.size.equalTo(CGSize(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        //: newsBadgeLab.snp.makeConstraints { make in
        newsBadgeLab.snp.makeConstraints { make in
            //: make.leading.equalTo(newsBtn.snp.trailing).offset(-20)
            make.leading.equalTo(newsBtn.snp.trailing).offset(-20)
            //: make.top.equalTo(newsBtn).offset(2)
            make.top.equalTo(newsBtn).offset(2)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.greaterThanOrEqualTo(16)
            make.width.greaterThanOrEqualTo(16)
        }
        //: freeBtn.snp.makeConstraints { make in
        freeBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.bottom.equalTo(-115)
            make.bottom.equalTo(-115)
            //: make.size.equalTo(CGSize(width: 55, height: 55))
            make.size.equalTo(CGSize(width: 55, height: 55))
        }
    }
}

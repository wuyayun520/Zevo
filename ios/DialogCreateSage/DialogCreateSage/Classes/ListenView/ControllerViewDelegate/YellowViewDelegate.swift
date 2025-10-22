
//: Declare String Begin

/*: "bg_shouye_misanguang_default" :*/
fileprivate let dataSendAfterMsg:[Character] = ["b","g","_","s","h","o","u","y","e","_","m","i","s","a","n","g","u","a","n","g","_","d","e","f","a","u","l","t"]

/*: "#777777" :*/
fileprivate let user_subjectData:[Character] = ["#"]
fileprivate let userLogContent:String = "777777"

/*: "#333333" :*/
fileprivate let main_linkTechnicalFormat:[Character] = ["#","3","3","3","3","3","3"]

/*: "Popular" :*/
fileprivate let show_lensStr:String = "Popultot profit smart apartment constraint"
fileprivate let appHistoryMessage:[Character] = ["a","r"]

/*: "Nearby" :*/
fileprivate let noti_outerTitle:String = "mail ok face remove playNearby"

/*: "New" :*/
fileprivate let appThirdTitle:String = "apartment gainNew"

/*: "btn_popular_search_nor" :*/
fileprivate let appTelevisionShuttleValue:String = "whole session builderbtn_po"
fileprivate let appConsistValue:[Character] = ["s","e","a","r","c","h","_","n","o","r"]

/*: "icon_live_nor" :*/
fileprivate let k_strengthId:[Character] = ["i","c","o","n","_","l","i","v","e","_","n"]
fileprivate let dataPeerKey:String = "sequence"

/*: "btn_popular_ranking_nor" :*/
fileprivate let constPossibilityKey:String = "this himbtn_po"
fileprivate let kHostMsg:String = "rcollectionkin"
fileprivate let appLineDecideMsg:String = "g_normaker server sum"

/*: "Congratulation on your chance to join the Star Plan !" :*/
fileprivate let constDraftContent:[UInt8] = [0x1d,0x31,0x30,0x39,0x2c,0x3f,0x2a,0x2b,0x32,0x3f,0x2a,0x37,0x31,0x30,0x7e,0x31,0x30,0x7e,0x27,0x31,0x2b,0x2c,0x7e,0x3d,0x36,0x3f,0x30,0x3d,0x3b,0x7e,0x2a,0x31,0x7e,0x34,0x31,0x37,0x30,0x7e,0x2a,0x36,0x3b,0x7e,0xd,0x2a,0x3f,0x2c,0x7e,0xe,0x32,0x3f,0x30,0x7e,0x7f]

private func globalBlue(suit num: UInt8) -> UInt8 {
    return num ^ 94
}

/*: "No, thanks" :*/
fileprivate let mainProduceValue:String = "No, thaok paper sun warning perform"
fileprivate let constTransactionKey:String = "nkwriting"

/*: "Find out more" :*/
fileprivate let const_happyData:String = "Find oversion bot between"
fileprivate let noti_visitorText:[Character] = ["r","e"]

/*: "clickStarProjectpop-upsCancel" :*/
fileprivate let user_maleStr:String = "clweekly"
fileprivate let constFilterPath:String = "Projeccircle cry express title two"
fileprivate let app_calledData:String = "-upssecurity force timing"
fileprivate let kMultipleId:String = "four para he across throwCancel"

/*: "clickStarProjectpop-upsFindoutmore" :*/
fileprivate let noti_dropValue:[UInt8] = [0x65,0x72,0x6f,0x6d,0x74,0x75,0x6f,0x64,0x6e,0x69,0x46,0x73,0x70,0x75,0x2d,0x70,0x6f,0x70,0x74,0x63,0x65,0x6a,0x6f,0x72,0x50,0x72,0x61,0x74,0x53,0x6b,0x63,0x69,0x6c,0x63]

/*: "Allow %@ to send you notifications?" :*/
fileprivate let data_representativeName:[UInt8] = [0x8,0x25,0x25,0x26,0x3e,0x69,0x6c,0x9,0x69,0x3d,0x26,0x69,0x3a,0x2c,0x27,0x2d,0x69,0x30,0x26,0x3c,0x69,0x27,0x26,0x3d,0x20,0x2f,0x20,0x2a,0x28,0x3d,0x20,0x26,0x27,0x3a,0x76]

private func flagPad(green num: UInt8) -> UInt8 {
    return num ^ 73
}

/*: "Cancel" :*/
fileprivate let dataMemberValue:String = "push possibility communicationCancel"

/*: "Settings" :*/
fileprivate let kExclusiveKey:[Character] = ["S","e","t"]
fileprivate let kFrankKey:String = "tingblue"

/*: "male" :*/
fileprivate let dataAircraftStr:[UInt8] = [0x65,0x6c,0x61,0x6d]

/*: "female" :*/
fileprivate let k_birthName:String = "familyemale"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  YellowViewDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import JXPagingView
import JXPagingView
//: import JXSegmentedView
import JXSegmentedView
//: import UIKit
import UIKit

//: class TalkingSocialViewController: TalkingBaseViewController {
class YellowViewDelegate: MergeContactViewController {
    //: private let segmentedDataSource = JXSegmentedTitleDataSource()
    private let segmentedDataSource = JXSegmentedTitleDataSource()
    //: private var isNearbyShow = false
    private var isNearbyShow = false
    //: var seleteIndex = 0
    var seleteIndex = 0
    //: private var liveTipsTimer: Timer?
    private var liveTipsTimer: Timer? /// 头像动画timer

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: GiftFloatViewManager.shared.activeWhenShow()
        LagniappeFrankManagingDirectorViewManager.shared.observerShow()
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: GiftFloatViewManager.shared.stopWhenDismiss()
        LagniappeFrankManagingDirectorViewManager.shared.pursuingDismiss()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.setupSubviews()
        self.extraPlantWarning()
        //: self.setupSubViewsConstraint()
        self.taConstraint()
        //: self.addNotification()
        self.locationNotification()
        //: self.func__checkStarPlanNeedShow()
        self.mediaNet()
        //: self.func__turnOnSystemNotification()
        self.trisodiumPhosphateNotification()
        //: self.pushIsClubVideo()
        self.ballClubVideo()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.0) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.0) {
            //: if CompositionReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue {
            if CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.female.rawValue {
                //: SightReactiveCompatible.share.func__pushUserVerifyController(toast: nil)
                SightReactiveCompatible.share.bringExposure(toast: nil)
            }
        }
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: stop_liveTipsTimer()
        columnData()
    }

    // MARK: - Lazy load

    //: private lazy var bottomImgView: UIImageView = {
    private lazy var bottomImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.BundleImageNamed(name: "bg_shouye_misanguang_default"))
        let imgV = UIImageView(image: UIImage.parentSet(name: (String(dataSendAfterMsg))))
        //: imgV.isUserInteractionEnabled = false
        imgV.isUserInteractionEnabled = false
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var categoryView: JXSegmentedView = {
    private lazy var categoryView: JXSegmentedView = {
        //: let segmentedView = JXSegmentedView.init(frame: CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: NavigationBarHeight))
        let segmentedView = JXSegmentedView(frame: CGRect(x: 0, y: noti_guideRequestId, width: user_needValue, height: main_buildValue))
        //: segmentedDataSource.itemSpacing = 18
        segmentedDataSource.itemSpacing = 18
        //: segmentedDataSource.titles = titleArray
        segmentedDataSource.titles = titleArray
        //: segmentedDataSource.isTitleMaskEnabled = false
        segmentedDataSource.isTitleMaskEnabled = false
        //: segmentedDataSource.isItemSpacingAverageEnabled = false
        segmentedDataSource.isItemSpacingAverageEnabled = false
        //: segmentedDataSource.isSelectedAnimable = false
        segmentedDataSource.isSelectedAnimable = false
        //: segmentedDataSource.titleNormalColor = UIColor.init(hex: "#777777")!
        segmentedDataSource.titleNormalColor = UIColor(hex: (String(user_subjectData) + userLogContent.capitalized))!
        //: segmentedDataSource.titleSelectedColor = UIColor.init(hex: "#333333")!
        segmentedDataSource.titleSelectedColor = UIColor(hex: (String(main_linkTechnicalFormat)))!
        //: segmentedDataSource.titleNormalFont = .pingfangFont(type: .Medium, fontSize: 16)
        segmentedDataSource.titleNormalFont = .processAcross(type: .Medium, fontSize: 16)
        //: segmentedDataSource.titleSelectedFont = .pingfangFont(type: .Medium, fontSize: 18)
        segmentedDataSource.titleSelectedFont = .processAcross(type: .Medium, fontSize: 18)
//        segmentedDataSource.itemWidthIncrement = 0
        //: let indicator = JXSegmentedIndicatorLineView()
        let indicator = JXSegmentedIndicatorLineView()
        //: indicator.indicatorWidth = 12
        indicator.indicatorWidth = 12
        //: indicator.indicatorHeight = 4
        indicator.indicatorHeight = 4
        //: indicator.verticalOffset = 4
        indicator.verticalOffset = 4
        //: indicator.lineStyle = .normal
        indicator.lineStyle = .normal
        //: indicator.indicatorColor = UIColor.init(hex: "#333333")!
        indicator.indicatorColor = UIColor(hex: (String(main_linkTechnicalFormat)))!
        //: segmentedView.dataSource = segmentedDataSource
        segmentedView.dataSource = segmentedDataSource
        //: segmentedView.indicators = [indicator]
        segmentedView.indicators = [indicator]
        //: segmentedView.delegate = self
        segmentedView.delegate = self
        //: segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        //: segmentedView.defaultSelectedIndex = 0
        segmentedView.defaultSelectedIndex = 0
//        segmentedView.backgroundColor = .clear
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ReadingLanguageManager.shared.direction == .rightToLeft {
            //: segmentedView.transform = CGAffineTransform(scaleX: -1, y: 1)
            segmentedView.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return segmentedView
        return segmentedView
        //: }()
    }()

    //: private lazy var pagerView: JXPagingListRefreshView = {
    private lazy var pagerView: JXPagingListRefreshView = {
        //: let view = JXPagingListRefreshView.init(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        let view = JXPagingListRefreshView(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        //: view.frame = CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight-StatusBarHeight)
        view.frame = CGRect(x: 0, y: noti_guideRequestId, width: user_needValue, height: kStreamTitle - mainExplainFaceName - noti_guideRequestId)
//        view.pinSectionHeaderVerticalOffset = 20
        //: view.defaultSelectedIndex = 0
        view.defaultSelectedIndex = 0
        //: view.mainTableView.backgroundColor = .clear
        view.mainTableView.backgroundColor = .clear
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ReadingLanguageManager.shared.direction == .rightToLeft {
            //: view.transform = CGAffineTransform(scaleX: -1, y: 1)
            view.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var titleArray: [String] = {
    private lazy var titleArray: [String] = {
        //: var array = [String]()
        var array = [String]()
        //: array.append("Popular".localized)
        array.append((String(show_lensStr.prefix(5)) + String(appHistoryMessage)).localized)
        //: array.append("Nearby".localized)
        array.append((String(noti_outerTitle.suffix(6))).localized)
        //: array.append("New".localized)
        array.append((String(appThirdTitle.suffix(3))).localized)
        //: return array
        return array
        //: }()
    }()

    //: lazy var dataVC: [UIViewController] = {
    lazy var dataVC: [UIViewController] = {
        //: var array = [UIViewController]()
        var array = [UIViewController]()
        //: for i in titleArray {
        for i in titleArray {
            //: let popularVC = SocialPopularViewController.init()
            let popularVC = ControllerViewDelegate()
            //: if i == "Popular".localized {
            if i == (String(show_lensStr.prefix(5)) + String(appHistoryMessage)).localized {
                //: popularVC.tabType = .hot
                popularVC.tabType = .hot
                //: } else if i == "Nearby".localized {
            } else if i == (String(noti_outerTitle.suffix(6))).localized {
                //: popularVC.tabType = .nearby
                popularVC.tabType = .nearby
                //: } else if i == "New".localized {
            } else if i == (String(appThirdTitle.suffix(3))).localized {
                //: popularVC.tabType = .new
                popularVC.tabType = .new
            }
            //: array.append(popularVC)
            array.append(popularVC)
        }
        //: return array
        return array
        //: }()
    }()

    //: private lazy var searchBtn: UIButton = {
    private lazy var searchBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_popular_search_nor"), for: .normal)
        btn.setImage(UIImage.parentSet(name: (String(appTelevisionShuttleValue.suffix(6)) + "pular_" + String(appConsistValue))), for: .normal)
        //: btn.addTarget(self, action: #selector(searchButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(examineedEmpty), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveBtn: UIButton = {
    private lazy var liveBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_live_nor"), for: .normal)
        btn.setImage(UIImage.parentSet(name: (String(k_strengthId) + dataPeerKey.replacingOccurrences(of: "sequence", with: "or"))), for: .normal)
        //: btn.addTarget(self, action: #selector(liveBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(modifyAdmin), for: .touchUpInside)
        //: btn.isHidden = !(CompositionReactiveCompatible.share.appStatus == AppSkinStatus.special.rawValue && CompositionReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue)
        btn.isHidden = !(CompositionReactiveCompatible.share.appStatus == ColumnExInsetTarget.special.rawValue && CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.female.rawValue)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rankBtn: UIButton = {
    private lazy var rankBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_popular_ranking_nor"), for: .normal)
        btn.setImage(UIImage.parentSet(name: (String(constPossibilityKey.suffix(6)) + "pular_" + kHostMsg.replacingOccurrences(of: "collection", with: "an") + String(appLineDecideMsg.prefix(5)))), for: .normal)
        //: btn.addTarget(self, action: #selector(rankButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(aboveSignal), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - 开播提醒弹窗定时器

//: extension TalkingSocialViewController {
extension YellowViewDelegate {
    /// 跳转随机匹配
    //: private func pushIsClubVideo() {
    private func ballClubVideo() {
        //: if CompositionReactiveCompatible.share.loginUserMode.jumpType == 1 && CompositionReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue && CompositionReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue {
        if CompositionReactiveCompatible.share.loginUserMode.jumpType == 1, CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.male.rawValue, CompositionReactiveCompatible.share.appStatus == ColumnExInsetTarget.normal.rawValue {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
                //: SightReactiveCompatible.share.func__pushToRandomVideoVC(isBeginRand: false)
                SightReactiveCompatible.share.rewardRemove(isBeginRand: false)
            }
        }
    }

    /// 排行榜按钮点击事件
    //: @objc private func rankButtonClick() {
    @objc private func aboveSignal() {
        //: let rankVC = SocialRankTabVC()
        let rankVC = DirtyShadeThen()
        //: self.navigationController?.pushViewController(rankVC, animated: true)
        self.navigationController?.pushViewController(rankVC, animated: true)
        //: uploadRecord.uploadRecordEvent(eventID: ClickRankIngButton)
        noti_liveLevelUrl.recordGender(eventID: appAddressName)
    }

    /// "mf/index/getConfig"请求成功后创建定时器
    //: @objc func setliveTipsTimer() {
    @objc func blackTimer() {
        //: if CompositionReactiveCompatible.share.appUserConfigMode.liveDialogInterval > 0 &&
        if CompositionReactiveCompatible.share.appUserConfigMode.liveDialogInterval > 0,
           //: CompositionReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue &&
           CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.female.rawValue,
           //: CompositionReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
           CompositionReactiveCompatible.share.appStatus != ColumnExInsetTarget.special.rawValue
        {
            //: initLiveTipsTimer()
            resignTimer()
            //: liveTipsTimer?.fireDate = Date.init(timeIntervalSinceNow: TimeInterval(CompositionReactiveCompatible.share.appUserConfigMode.liveDialogInterval))
            liveTipsTimer?.fireDate = Date(timeIntervalSinceNow: TimeInterval(CompositionReactiveCompatible.share.appUserConfigMode.liveDialogInterval))
        }
    }

    /// 展示开闭提醒弹窗
    //: @objc func setLiveTipsPopView() {
    @objc func detectView() {
        // 模态出来的webView不展示直播提醒弹窗
        //: if let currentVC = self.currentViewController() {
        if let currentVC = self.mediumSave() {
            //: if currentVC.isKind(of: TalkingWebViewController.self) &&
            if currentVC.isKind(of: SightViewController.self),
               //: (currentVC as! TalkingWebViewController).isModal == true {
               (currentVC as! SightViewController).isModal == true
            {
                //: return
                return
            }
        }

        //: if CompositionReactiveCompatible.share.appUserConfigMode.enableLive &&
        if CompositionReactiveCompatible.share.appUserConfigMode.enableLive,
           //: !TalkingLiveManager.shared().isLive &&
           !SelectedThen.panCaptureShared().isLive,
           //: !TalkingSocketManager.shared.isStrategy &&
           !FileSocketManager.shared.isStrategy,
           //: !TalkingSocketManager.shared.isCalling {
           !FileSocketManager.shared.isCalling
        {
            //: TalkingPopupWindowManager.shared.startLivePopUpWindow()
            GenerateingReactiveCompatible.shared.decideWindow()
        }
    }

    /// 初始化定时器
    //: func initLiveTipsTimer() {
    func resignTimer() {
        //: let timeInterval = TimeInterval(CompositionReactiveCompatible.share.appUserConfigMode.liveDialogInterval)
        let timeInterval = TimeInterval(CompositionReactiveCompatible.share.appUserConfigMode.liveDialogInterval)
        //: liveTipsTimer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(setLiveTipsPopView), userInfo: nil, repeats: true)
        liveTipsTimer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(detectView), userInfo: nil, repeats: true)
        //: RunLoop.current.add(liveTipsTimer!, forMode: RunLoop.Mode.common)
        RunLoop.current.add(liveTipsTimer!, forMode: RunLoop.Mode.common)
    }

    /// 停止定时器
    //: @objc func stop_liveTipsTimer() {
    @objc func columnData() {
        //: if self.liveTipsTimer != nil {
        if self.liveTipsTimer != nil {
            //: self.liveTipsTimer?.invalidate()
            self.liveTipsTimer?.invalidate()
            //: self.liveTipsTimer?.fire()
            self.liveTipsTimer?.fire()
            //: self.liveTipsTimer = nil
            self.liveTipsTimer = nil
        }
    }

    /// 开启直播按钮点击事件
    //: @objc func liveBtnClick() {
    @objc func modifyAdmin() {
        //: NotificationCenter.default.post(name: LIVE_NEED_OPEN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: show_transformKey, object: nil)
    }
}

// MARK: - Public Event

//: extension TalkingSocialViewController {
extension YellowViewDelegate {
    /// 检测巨星计划弹窗是否需要弹出
    //: private func func__checkStarPlanNeedShow() {
    private func mediaNet() {
        //: guard CompositionReactiveCompatible.share.showWindow == true else { return }
        guard CompositionReactiveCompatible.share.showWindow == true else { return }
        //: CompositionReactiveCompatible.share.showWindow = false
        CompositionReactiveCompatible.share.showWindow = false

        // 加入巨星计划弹窗
        //: TalkingAlertShow.alert(title: nil,
        YetAlertShow.trackSpace(title: nil,
                                    //: message: "Congratulation on your chance to join the Star Plan !",
                                    message: String(bytes: constDraftContent.map{globalBlue(suit: $0)}, encoding: .utf8)!,
                                    //: leftBtnTitle: "No, thanks",
                                    leftBtnTitle: (String(mainProduceValue.prefix(7)) + constTransactionKey.replacingOccurrences(of: "writing", with: "s")),
                                    //: rightBtnTitle: "Find out more") {
                                    rightBtnTitle: (String(const_happyData.prefix(6)) + "ut mo" + String(noti_visitorText)))
        {
            //: TalkingAlertShow.hideAlert()
            YetAlertShow.usance()
            // 统计点击首页巨星邀请弹窗中“no,thanks”的次数
            //: TalkingAdjustManager.share.addEvent(key: "clickStarProjectpop-upsCancel")
            AuthorReminderReactiveCompatible.share.mutualFollowingKey(key: (user_maleStr.replacingOccurrences(of: "weekly", with: "ic") + "kStar" + String(constFilterPath.prefix(6)) + "tpop" + String(app_calledData.prefix(4)) + String(kMultipleId.suffix(6))))

            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            YetAlertShow.usance()
            // 跳转巨星计划页
            //: SightReactiveCompatible.share.func__pushToWebVC(webViewType: .StarPlanIndex)
            SightReactiveCompatible.share.elementOfResume(webViewType: .StarPlanIndex)

            // 统计点击首页巨星邀请弹窗中“Find out more”的次数
            //: TalkingAdjustManager.share.addEvent(key: "clickStarProjectpop-upsFindoutmore")
            AuthorReminderReactiveCompatible.share.mutualFollowingKey(key: String(bytes: noti_dropValue.reversed(), encoding: .utf8)!)
        }
    }

    /// 检查系统通知是否开启
    //: private func func__turnOnSystemNotification() {
    private func trisodiumPhosphateNotification() {
        // 有随机视频，不弹出开启推送弹窗
        //: if CompositionReactiveCompatible.share.loginUserMode.jumpType == 1 &&
        if CompositionReactiveCompatible.share.loginUserMode.jumpType == 1,
           //: CompositionReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue &&
           CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.male.rawValue,
           //: CompositionReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue {
           CompositionReactiveCompatible.share.appStatus == ColumnExInsetTarget.normal.rawValue
        {
            //: return
            return
        }

        //: let isShow = Defaults.bool(forKey: TalkingHomeTabTurnOnNotificationsKey)
        let isShow = user_liveMsg.bool(forKey: appMinListValue)
        //: guard isShow == false else { return }
        guard isShow == false else { return }

        //: TalkingPermissionTool.checkPushNotification { isEnable in
        MeetRouteThen.showThat { isEnable in
            //: guard isEnable == false else { return }
            guard isEnable == false else { return }
            //: DispatchQueue.main.sync {
            DispatchQueue.main.sync {
                //: Defaults.set(true, forKey: TalkingHomeTabTurnOnNotificationsKey)
                user_liveMsg.set(true, forKey: appMinListValue)
                //: TalkingAlertShow.alert(title: nil,
                YetAlertShow.trackSpace(title: nil,
                                            //: message: "Allow %@ to send you notifications?".localizedArguments(AppName),
                                            message: String(bytes: data_representativeName.map{flagPad(green: $0)}, encoding: .utf8)!.temporaryWorker(k_warnUrl),
                                            //: leftBtnTitle: "Cancel".localized,
                                            leftBtnTitle: (String(dataMemberValue.suffix(6))).localized,
                                            //: rightBtnTitle: "Settings".localized) {
                                            rightBtnTitle: (String(kExclusiveKey) + kFrankKey.replacingOccurrences(of: "blue", with: "s")).localized)
                {
                    //: TalkingAlertShow.hideAlert()
                    YetAlertShow.usance()
                    //: return
                    //: } rightBlock: {
                } rightBlock: {
                    //: if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
                    if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
                        //: UIApplication.shared.open(settingsUrl)
                        UIApplication.shared.open(settingsUrl)
                    }
                }
            }
        }
    }

    /// 搜索按钮点击事件
    //: @objc private func searchButtonClick() {
    @objc private func examineedEmpty() {
        //: let searchVC = TalkingSearchTabViewController()
        let searchVC = GiantReactiveCompatible()
        //: self.navigationController?.pushViewController(searchVC, animated: true)
        self.navigationController?.pushViewController(searchVC, animated: true)
        //: uploadRecord.uploadRecordEvent(eventID: ClickSearchButton)
        noti_liveLevelUrl.recordGender(eventID: data_inviteKey)
    }

    /// 切换到party
    //: func switchParty() {
    func amParty() {
        //: categoryView.defaultSelectedIndex = 0
        categoryView.defaultSelectedIndex = 0
        //: categoryView.reloadData()
        categoryView.reloadData()
        //: pagerView.defaultSelectedIndex = 0
        pagerView.defaultSelectedIndex = 0
        //: pagerView.reloadData()
        pagerView.reloadData()
    }
}

// MARK: - NotificationCenter

//: extension TalkingSocialViewController {
extension YellowViewDelegate {
    /// 添加通知
    //: private func addNotification() {
    private func locationNotification() {
        // 礼物首页飘屏
        //: GiftFloatViewManager.shared.addNotifications()
        LagniappeFrankManagingDirectorViewManager.shared.invitationSpend()

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(setliveTipsTimer),
                                               selector: #selector(blackTimer),
                                               //: name: UPDATE_INDEX_GETCONFIG_NOTIFICATION,
                                               name: constAddKey,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(stop_liveTipsTimer),
                                               selector: #selector(columnData),
                                               //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                               name: constMinNameTitle,
                                               //: object: nil)
                                               object: nil)
    }
}

// MARK: - JXPagerViewDelegate

//: extension TalkingSocialViewController: JXSegmentedViewDelegate {
extension YellowViewDelegate: JXSegmentedViewDelegate {
    // 点击item或滑动时【点击标题和滑动视图都会调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didSelectedItemAt index: Int) {
        //: if seleteIndex == index {
        if seleteIndex == index {
            //: return
            return
        }
        //: seleteIndex = index
        seleteIndex = index
        //: if index == 0 {
        if index == 0 {
            //: uploadRecord.uploadRecordEvent(eventID:"\(click_HomePartyTab)_\(CompositionReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue ? "male":"female")")
            noti_liveLevelUrl.recordGender(eventID: "\(noti_frameGreetPingId)_\(CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.male.rawValue ? String(bytes: dataAircraftStr.reversed(), encoding: .utf8)! : (k_birthName.replacingOccurrences(of: "family", with: "f")))")
            //: }else if index == 1 {
        } else if index == 1 {
            //: let popularVC = dataVC[index] as? SocialPopularViewController
            let popularVC = dataVC[index] as? ControllerViewDelegate
            //: popularVC?.showSettingsAlertView()
            popularVC?.advertisingView() // 展示定位设置弹窗
            //: uploadRecord.uploadRecordEvent(eventID: DisplayNearbyListNoP)
            noti_liveLevelUrl.recordGender(eventID: noti_okMsg)
            //: } else if index == 2 {
        } else if index == 2 {
            //: uploadRecord.uploadRecordEvent(eventID: DisplayNewListNoP)
            noti_liveLevelUrl.recordGender(eventID: show_voiceUrl)
        }
    }

    // 添加该方法是为了防止首次进入应用，直接点击nearby无法初始化页面的情况 【该方法只会在点击标题时调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didClickSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didClickSelectedItemAt index: Int) {
        // 初始点击item时，创建vc

        //: if index == 1 && !isNearbyShow {
        if index == 1 && !isNearbyShow {
            //: isNearbyShow = true
            isNearbyShow = true
        }

        //: pagerView.listContainerView.defaultSelectedIndex = index
        pagerView.listContainerView.defaultSelectedIndex = index
        //: pagerView.listContainerView.reloadData()
        pagerView.listContainerView.reloadData()
    }

    //: func segmentedView(_ segmentedView: JXSegmentedView, didScrollSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didScrollSelectedItemAt _: Int) {}
}

// MARK: - JXPagerViewDelegate

//: extension TalkingSocialViewController: JXPagingViewDelegate {
extension YellowViewDelegate: JXPagingViewDelegate {
    //: func pagingView(_ pagingView: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
    func pagingView(_: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
        //: var type = index
        var type = index
        //: if type < 0 { type = 0 }
        if type < 0 { type = 0 }
        //: if index == 1 {
        if index == 1 {
            //: isNearbyShow = true
            isNearbyShow = true
        }

        //: let popularVC = dataVC[type]
        let popularVC = dataVC[type]
        //: return popularVC as! any JXPagingViewListViewDelegate as JXPagingViewListViewDelegate
        return popularVC as! any JXPagingViewListViewDelegate as JXPagingViewListViewDelegate
    }

    //: func tableHeaderViewHeight(in pagingView: JXPagingView) -> Int {
    func tableHeaderViewHeight(in _: JXPagingView) -> Int {
        //: return 0
        return 0
    }

    //: func tableHeaderView(in pagingView: JXPagingView) -> UIView {
    func tableHeaderView(in _: JXPagingView) -> UIView {
        //: return UIView()
        return UIView()
    }

    //: func heightForPinSectionHeader(in pagingView: JXPagingView) -> Int {
    func heightForPinSectionHeader(in _: JXPagingView) -> Int {
        //: return Int(categoryView.frame.height)
        return Int(categoryView.frame.height)
    }

    //: func viewForPinSectionHeader(in pagingView: JXPagingView) -> UIView {
    func viewForPinSectionHeader(in _: JXPagingView) -> UIView {
        //: return categoryView
        return categoryView
    }

    //: func numberOfLists(in pagingView: JXPagingView) -> Int {
    func numberOfLists(in _: JXPagingView) -> Int {
        //: return titleArray.count
        return titleArray.count
    }
}

// MARK: - Layout

//: extension TalkingSocialViewController {
extension YellowViewDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func extraPlantWarning() {
        // 导航底部渐变背景
        //: self.view.addSubview(pagerView)
        self.view.addSubview(pagerView)
        //: categoryView.addSubview(searchBtn)
        categoryView.addSubview(searchBtn)
        //: categoryView.addSubview(rankBtn)
        categoryView.addSubview(rankBtn)
        //: self.view.addSubview(bottomImgView)
        self.view.addSubview(bottomImgView)
        //: self.view.addSubview(liveBtn)
        self.view.addSubview(liveBtn)
        //: self.view.bringSubviewToFront(liveBtn)
        self.view.bringSubviewToFront(liveBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func taConstraint() {
        //: searchBtn.snp.makeConstraints { make in
        searchBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-9)
            make.trailing.equalTo(-9)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
        //: rankBtn.snp.makeConstraints { make in
        rankBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(searchBtn.snp.leading).offset(-10)
            make.trailing.equalTo(searchBtn.snp.leading).offset(-10)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }

        //: bottomImgView.snp.makeConstraints { make in
        bottomImgView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(145+StatusBarHeight)
            make.height.equalTo(145 + noti_guideRequestId)
        }
        //: liveBtn.snp.makeConstraints { make in
        liveBtn.snp.makeConstraints { make in
            //: make.bottom.width.equalTo(-122)
            make.bottom.width.equalTo(-122)
            //: make.trailing.equalTo(-25)
            make.trailing.equalTo(-25)
            //: make.size.equalTo(56)
            make.size.equalTo(56)
        }
    }
}

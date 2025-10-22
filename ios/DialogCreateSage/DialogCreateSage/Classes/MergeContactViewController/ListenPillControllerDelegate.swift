
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let app_automaticallyMsg:[UInt8] = [0xde,0xd9,0xde,0xc3,0x9f,0xd4,0xd8,0xd3,0xd2,0xc5,0x8d,0x9e,0x97,0xdf,0xd6,0xc4,0x97,0xd9,0xd8,0xc3,0x97,0xd5,0xd2,0xd2,0xd9,0x97,0xde,0xda,0xc7,0xdb,0xd2,0xda,0xd2,0xd9,0xc3,0xd2,0xd3]

/*: "#EEEEEE" :*/
fileprivate let userPlanValue:[Character] = ["#","E","E","E","E"]
fileprivate let notiGiftUrl:String = "dominant"

/*: "tabBar" :*/
fileprivate let main_uniformSameUrl:[Character] = ["t","a","b","B","a","r"]

/*: "home" :*/
fileprivate let user_wholeMessage:String = "becomeome"

/*: "user" :*/
fileprivate let showGeneralData:String = "ustrengther"

/*: "icon" :*/
fileprivate let noti_standId:String = "tendercon"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ListenPillControllerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingTabBarViewController: UITabBarController, UITabBarControllerDelegate {
class ListenPillControllerDelegate: UITabBarController, UITabBarControllerDelegate {
    //: var tabBarVCType: TarBarControllerViewType?
    var tabBarVCType: ReadingViewType?
    //: var tabBarView = TalkingTabBar()
    var tabBarView = MilitaryTabBar()
    //: var advertisingView = TalkingAdvertisingView()
    var advertisingView = BroadThen()

    //: init(tabBarType: TarBarControllerViewType) {
    init(tabBarType: ReadingViewType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.delegate = self
        self.delegate = self
        //: self.tabBarVCType = tabBarType
        self.tabBarVCType = tabBarType
        //: if tabBarType == .Taking {
        if tabBarType == .Taking {
            //: setupTabBar()
            ginmill()
            //: ProgressHUD.show()
            PointerReactiveCompatible.soundAssetThrow()
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
            PlightThen.end { succeed, _, _ in
                //: ProgressHUD.dismiss()
                PointerReactiveCompatible.motivationCharmDismiss()
                //: LightConversationListener.shared.func__addDelegate(self)
                LightConversationListener.shared.frontBurnerDelegate(self)
                //: let tarItemTypes = self.tabBarConentTypes()
                let tarItemTypes = self.radiogram()
                //: self.tabBarView.setupItemsWithArr(itemTypes: tarItemTypes as! Array<TabBarItemType>)
                self.tabBarView.match(itemTypes: tarItemTypes as! [SuccessSignedSum])
                //: self.func__setupControllersWith(itemTypes: tarItemTypes)
                self.hair(itemTypes: tarItemTypes)
                //: if CompositionReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue && CompositionReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue {
                if CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.male.rawValue && CompositionReactiveCompatible.share.appStatus == ColumnExInsetTarget.normal.rawValue {
                    //: self.selectTabbar(type: 0)
                    self.liveTabbar(type: 0)
                }
                //: self.func__configViewDidLoad()
                self.shapeFeatureLoad()

                //: if succeed && CompositionReactiveCompatible.share.loginUserMode.remindBindEmail == true {
                if succeed && CompositionReactiveCompatible.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                    //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        //: SightReactiveCompatible.share.func__pushToLockUserEmailVC(isShowBack: false)
                        SightReactiveCompatible.share.showPer(isShowBack: false)
                    }
                }
            }
            //: } else {
        } else {
            //: func__setupControllersWith(itemTypes: self.tabBarConentTypes())
            hair(itemTypes: self.radiogram())
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: app_automaticallyMsg.map{$0^183}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        /// H5刷新index/getConfig配置信息接口
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__getLoginUserConfig),
                                               selector: #selector(choiceManager),
                                               //: name: REFRESH_INDEX_GETCONFIG_NOTIFICATION,
                                               name: mainSceneFormat,
                                               //: object: nil)
                                               object: nil)

        /// 直播状态变更通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchLiveTabBarImage),
                                               selector: #selector(positiveImage),
                                               //: name: LIVE_STATUS_CHANGE_NOTIFICATION,
                                               name: notiStreamCollectionUrl,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(openLive),
                                               selector: #selector(asLocation),
                                               //: name: LIVE_NEED_OPEN_NOTIFICATION,
                                               name: show_transformKey,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchTabbarHomeParty),
                                               selector: #selector(hostWait),
                                               //: name: SWITCH_TABBAR_HOME_PARTY_NOTIFICATION,
                                               name: kMarginGiftIndexFormat,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(paySuccess),
                                               selector: #selector(stem),
                                               //: name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               name: appPriceMsg,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func viewDidLayoutSubviews() {
    override func viewDidLayoutSubviews() {
        //: super.viewDidLayoutSubviews()
        super.viewDidLayoutSubviews()
        //: tabBar.frame = CGRect(origin: CGPoint(x: 0, y: ScreenHeight-TabBarViewHeight), size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        tabBar.frame = CGRect(origin: CGPoint(x: 0, y: kStreamTitle - mainExplainFaceName), size: CGSize(width: user_needValue, height: mainExplainFaceName))
    }

    /// 初始化tabbar
    //: func setupTabBar() {
    func ginmill() {
        //: tabBarView.frame = CGRect(origin: CGPoint(x: 0, y: ScreenHeight-TabBarViewHeight), size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        tabBarView.frame = CGRect(origin: CGPoint(x: 0, y: kStreamTitle - mainExplainFaceName), size: CGSize(width: user_needValue, height: mainExplainFaceName))
        //: tabBarView.backgroundColor = .white
        tabBarView.backgroundColor = .white
        //: let backgroundImage = UIImage.imageFillColor(color: .white, size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        let backgroundImage = UIImage.plough(color: .white, size: CGSize(width: user_needValue, height: mainExplainFaceName))
        //: tabBarView.backgroundImage = backgroundImage
        tabBarView.backgroundImage = backgroundImage

        //: let shadowImage = UIImage.imageFillColor(color: UIColor(hex: "#EEEEEE")!, size: CGSize(width: ScreenWidth, height: 0.5))
        let shadowImage = UIImage.plough(color: UIColor(hex: (String(userPlanValue) + notiGiftUrl.replacingOccurrences(of: "dominant", with: "EE")))!, size: CGSize(width: user_needValue, height: 0.5))
        //: tabBarView.shadowImage = shadowImage
        tabBarView.shadowImage = shadowImage

        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: let tabBarAppearance = UITabBarAppearance()
            let tabBarAppearance = UITabBarAppearance()
            //: tabBarAppearance.backgroundColor = .white
            tabBarAppearance.backgroundColor = .white
            //: tabBarAppearance.backgroundEffect = nil
            tabBarAppearance.backgroundEffect = nil
            //: tabBarAppearance.shadowColor = UIColor.separatorLineColor()
            tabBarAppearance.shadowColor = UIColor.taskTheme()
            //: tabBarView.standardAppearance = tabBarAppearance
            tabBarView.standardAppearance = tabBarAppearance
        }
        //: setValue(tabBarView, forKey: "tabBar")
        setValue(tabBarView, forKey: (String(main_uniformSameUrl)))
    }

    //: func tabBarConentTypes() -> NSArray {
    func radiogram() -> NSArray {
        //: if tabBarVCType == TarBarControllerViewType.Login {
        if tabBarVCType == ReadingViewType.Login {
            //: return [TabBarItemType.Login]
            return [SuccessSignedSum.Login]
            //: } else {
        } else {
            //: if CompositionReactiveCompatible.share.appStatus == AppSkinStatus.special.rawValue {
            if CompositionReactiveCompatible.share.appStatus == ColumnExInsetTarget.special.rawValue {
                //: return [TabBarItemType.Social,
                return [SuccessSignedSum.Social,
                        //: TabBarItemType.Moment,
                        SuccessSignedSum.Moment,
                        //: TabBarItemType.Message,
                        SuccessSignedSum.Message,
                        //: TabBarItemType.Account]
                        SuccessSignedSum.Account]
                //: } else {
            } else {
                //: if CompositionReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue {
                if CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.female.rawValue { // 女性
                    //: return [TabBarItemType.Social,
                    return [SuccessSignedSum.Social,
                            //: TabBarItemType.Moment,
                            SuccessSignedSum.Moment,
                            //: TabBarItemType.Live,
                            SuccessSignedSum.Live,
                            //: TabBarItemType.Message,
                            SuccessSignedSum.Message,
                            //: TabBarItemType.Account]
                            SuccessSignedSum.Account]
                    //: } else {
                } else { // 男性
                    //: return [TabBarItemType.Social,
                    return [SuccessSignedSum.Social,
                            //: TabBarItemType.Moment,
                            SuccessSignedSum.Moment,
                            //: TabBarItemType.Randow,
                            SuccessSignedSum.Randow,
                            //: TabBarItemType.Message,
                            SuccessSignedSum.Message,
                            //: TabBarItemType.Account]
                            SuccessSignedSum.Account]
                }
            }
        }
    }

    //: func func__setupControllersWith(itemTypes: NSArray) {
    func hair(itemTypes: NSArray) {
        //: let tmp = NSMutableArray()
        let tmp = NSMutableArray()
        //: for itemType in itemTypes {
        for itemType in itemTypes {
            //: let VC = rootViewControllerFor(itemType: itemType as! TabBarItemType)
            let VC = ordinalCount(itemType: itemType as! SuccessSignedSum)
            //: let navVC = TalkingNavigationController(rootViewController: VC)
            let navVC = SeriesHasDelegate(rootViewController: VC)
            //: navVC.tabBarType = (itemType as! TabBarItemType)
            navVC.tabBarType = (itemType as! SuccessSignedSum)
            //: tmp.add(navVC)
            tmp.add(navVC)
        }
        //: setViewControllers(tmp as? [UIViewController], animated: true)
        setViewControllers(tmp as? [UIViewController], animated: true)
    }

    //: func rootViewControllerFor(itemType: TabBarItemType) -> UIViewController {
    func ordinalCount(itemType: SuccessSignedSum) -> UIViewController {
        //: let ret: UIViewController
        let ret: UIViewController
        //: switch itemType {
        switch itemType {
        //: case .Social:
        case .Social:
            //: ret = TalkingSocialViewController()
            ret = YellowViewDelegate()

        //: case .Moment:
        case .Moment:
            //: ret = TalkingMomentViewController()
            ret = TwoRecognizerDelegate()

        //: case .FreeMoment:
        case .FreeMoment:
            //: ret = UIViewController()
            ret = UIViewController()
            /// 使用view，会导致VC的viewDidLoad调用，避免别的控制器没显示时，就调用viewDidLoad
            /// 虚拟的VC根据tag，正常的VC可以根据class判断

        //: case .Live:
        case .Live:
            //: ret = UIViewController()
            ret = UIViewController()

        //: case .Message:
        case .Message:
            //: ret = TalkingMessageViewController()
            ret = BistroReactiveCompatible()

        //: case .Account:
        case .Account:
            //: ret = TalkingMeViewController()
            ret = SortDataSource()

        //: case .Login:
        case .Login:
            //: ret = TalkingLoginMainViewController()
            ret = YellowViewController()
            //: ret.hidesBottomBarWhenPushed = true
            ret.hidesBottomBarWhenPushed = true

        //: case .Randow:
        case .Randow:
            //: ret = RandomMatchVC()
            ret = MoneyedRecognizerDelegate()

        //: case .meet:
        case .meet:
            //: ret = UIViewController()
            ret = UIViewController()
        }

        //: ret.view.tag = itemType.rawValue
        ret.view.tag = itemType.rawValue
        //: return ret
        return ret
    }

    //: override var selectedViewController: UIViewController? {
    override var selectedViewController: UIViewController? {
        //: willSet {
        willSet {
            //: let nav = newValue as! TalkingNavigationController
            let nav = newValue as! SeriesHasDelegate
            //: tabBarView.setSelectedTabItem(itemType: nav.tabBarType!)
            tabBarView.superiorPlan(itemType: nav.tabBarType!)
        }
    }
}

// MARK: - Event

//: extension TalkingTabBarViewController {
extension ListenPillControllerDelegate {
    /// 充值订阅成功，隐藏悬浮窗
    //: @objc func paySuccess() {
    @objc func stem() {
        //: self.advertisingView.closeBtnClick()
        self.advertisingView.spanDoingTa()
    }

    /// 切换到tab-party
    //: @objc func switchTabbarHomeParty() {
    @objc func hostWait() {
        //: getNavigationController()?.popToRootViewController(animated: false)
        volition()?.popToRootViewController(animated: false)
        //: selectTabbar(type: 0)
        liveTabbar(type: 0)
        //: if let vc = currentViewController(), vc is TalkingSocialViewController {
        if let vc = mediumSave(), vc is YellowViewDelegate {
            //: (vc as! TalkingSocialViewController).switchParty()
            (vc as! YellowViewDelegate).amParty()
        }
    }

    /// tabbar直播按钮点击事件
    //: @objc private func liveButtonClick() {
    @objc private func nameureMulti() {
        //: guard TalkingLiveManager.shared().isLive == false else {
        guard SelectedThen.panCaptureShared().isLive == false else { // 直播间
            //: func__showStatusBarErrorMsg(showMsg: kMessage_live_limit)
            foolishness(showMsg: kNumberKey)
            //: return
            return
        }
        //: let tabView = TalkingTabLiveView()
        let tabView = ArtFormReactiveCompatible()
        //: tabView.show()
        tabView.realm()
    }

    //: func func__configViewDidLoad() {
    func shapeFeatureLoad() {
        //: TalkingAPNSManager.share.func__listenAPNSInit()
        CourseReactiveCompatible.share.perceiveDown()
        //: AppManagerRequest.func__reportDeviceID()
        PlightThen.actionFollowing()
        //: func__getLoginUserConfig(true)
        choiceManager(true)
    }

    //: func selectTabbar(type: Int) {
    func liveTabbar(type: Int) {
        //: guard type < viewControllers?.count ?? 0 else { return }
        guard type < viewControllers?.count ?? 0 else { return }
        //: let vc = viewControllers?[type]
        let vc = viewControllers?[type]
        //: selectedIndex = type
        selectedIndex = type
        //: selectedViewController = vc
        selectedViewController = vc
    }

    /// 切换直播tabBar图标
    //: @objc private func switchLiveTabBarImage() {
    @objc private func positiveImage() {
        //: tabBarView.switchLiveTabBarImage()
        tabBarView.lambent()
    }

    /// 唤起直播功能
    //: @objc private func openLive() {
    @objc private func asLocation() {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard MeetRouteThen.todayConvert() == false else { return }

        // 展示说明页（如果展示过，则直接开播）
        //: let isShow = Defaults.bool(forKey: TalkingLiveTabExplainIsShow)
        let isShow = user_liveMsg.bool(forKey: main_ratePartyMsg)
        //: guard isShow != true else {
        guard isShow != true else {
            //: TalkingLiveManager.shared().checkLiveAuthAndTurnOn()
            SelectedThen.panCaptureShared().translation()
            //: return
            return
        }
        //: Defaults.set(true, forKey: TalkingLiveTabExplainIsShow)
        user_liveMsg.set(true, forKey: main_ratePartyMsg)
        //: let explainView = TalkingLiveExplainViewController()
        let explainView = SweetViewController()
        //: explainView.modalPresentationStyle = .fullScreen
        explainView.modalPresentationStyle = .fullScreen
        //: present(explainView, animated: true)
        present(explainView, animated: true)
    }

    /// 切换RandowtabBar图标
    //: @objc private func switchRandowTabBarImage(isHidde: Bool) {
    @objc private func intervalerrupt(isHidde: Bool) {
        //: tabBarView.switchRandowTabBarImage(isHidde: isHidde)
        tabBarView.lozengeFor(isHidde: isHidde)
    }

    /// 连接socket
    //: private func linkWebCocket() {
    private func sinceRender() {
        // 连接socket【放在这里是为了保证app/getConfig调用成功拿到ws信息】
        //: TalkingSocketManager.shared.updateWebSocket()
        FileSocketManager.shared.modifyBy()
    }

    /// 切换tab时判断是否需要展示直播开播提醒弹窗
    /// - Returns: 是否展示结果
    //: @discardableResult
    @discardableResult
    //: private func needShowLiveAlertView(type: TabBarItemType = .Social) -> Bool {
    private func mpType(type: SuccessSignedSum = .Social) -> Bool {
        //: guard CompositionReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue else { return false }
        guard CompositionReactiveCompatible.share.appStatus == ColumnExInsetTarget.normal.rawValue else { return false }
        //: guard CompositionReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue else { return false }
        guard CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.female.rawValue else { return false }
        //: guard CompositionReactiveCompatible.share.appUserConfigMode.userCountryType == 4 else { return false }
        guard CompositionReactiveCompatible.share.appUserConfigMode.userCountryType == 4 else { return false }
        //: guard CompositionReactiveCompatible.share.appUserConfigMode.popLiveTabArr.count > 0 else { return false }
        guard CompositionReactiveCompatible.share.appUserConfigMode.popLiveTabArr.count > 0 else { return false }
        //: guard !TalkingLiveManager.shared().isLive,
        guard !SelectedThen.panCaptureShared().isLive,
              //: !TalkingSocketManager.shared.isStrategy,
              !FileSocketManager.shared.isStrategy,
              //: !TalkingSocketManager.shared.isCalling else { return false }
              !FileSocketManager.shared.isCalling else { return false }
        //: let arr = CompositionReactiveCompatible.share.appUserConfigMode.popLiveTabArr
        let arr = CompositionReactiveCompatible.share.appUserConfigMode.popLiveTabArr
        //: let shouldShowPopup = (arr.contains("1") && type == .Social) ||
        let shouldShowPopup = (arr.contains("1") && type == .Social) ||
            //: (arr.contains("2") && type == .Moment) ||
            (arr.contains("2") && type == .Moment) ||
            //: (arr.contains("3") && type == .Message)
            (arr.contains("3") && type == .Message)
        //: if shouldShowPopup {
        if shouldShowPopup {
            //: TalkingPopupWindowManager.shared.startLivePopUpWindow()
            GenerateingReactiveCompatible.shared.decideWindow()
            //: return true
            return true
        }

        //: return false
        return false
    }
}

// MARK: - 通知事件

//: extension TalkingTabBarViewController {
extension ListenPillControllerDelegate {
    /// 更新index/getConfig接口
    /// - Parameter showLiveToast: 是否展示live提示（只有创建Tab时展示）
    //: @objc func func__getLoginUserConfig(_ showLiveToast: Bool = false) {
    @objc func choiceManager(_ showLiveToast: Bool = false) {
        //: AppManagerRequest.func__requestUserConfig { succeed, _, _ in
        PlightThen.dismissImage { succeed, _, _ in
            //: if showLiveToast {
            if showLiveToast {
                // 连接socket
                //: self.linkWebCocket()
                self.sinceRender()
                //: if CompositionReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue {
                if CompositionReactiveCompatible.share.appStatus == ColumnExInsetTarget.normal.rawValue {
                    //: self.tabBarView.showFemaleLiveTurnOnToast()
                    self.tabBarView.styleToast()
                    //: self.needShowLiveAlertView()
                    self.mpType()
                    //: self.func__selectClubTabbar()
                    self.outerSpace()
                    //: self.tabBarView.randowFreeBtn()
                    self.tabBarView.a()
                    //: if CompositionReactiveCompatible.share.appUserConfigMode.tabPageBanner.count > 0 {
                    if CompositionReactiveCompatible.share.appUserConfigMode.tabPageBanner.count > 0 {
                        //: self.advertisingView = TalkingAdvertisingView.buildAdvertisingView()
                        self.advertisingView = BroadThen.nnw()
                    }
                }
                //: if succeed {
                if succeed {
                    //: self.func__reqPopUpWindow()
                    self.housekeep()
                }
            }
        }
    }

    //: func func__selectClubTabbar() {
    func outerSpace() {
        //: if CompositionReactiveCompatible.share.loginUserMode.jumpType == 1 {
        if CompositionReactiveCompatible.share.loginUserMode.jumpType == 1 {
            //: return
            return
        }
        //: switchRandowTabBarImage(isHidde: true)
        intervalerrupt(isHidde: true)
        //: if CompositionReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue, CompositionReactiveCompatible.share.appUserConfigMode.homeTab == "home" {
        if CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.male.rawValue, CompositionReactiveCompatible.share.appUserConfigMode.homeTab == (user_wholeMessage.replacingOccurrences(of: "become", with: "h")) {
            //: let type = 2
            let type = 2
            //: selectTabbar(type: type)
            liveTabbar(type: type)
            //: switchRandowTabBarImage(isHidde: false)
            intervalerrupt(isHidde: false)
        }
    }

    /// 弹窗
    //: func func__reqPopUpWindow() {
    func housekeep() {
        //: guard CompositionReactiveCompatible.share.loginUserMode.updateInfo == true else {
        guard CompositionReactiveCompatible.share.loginUserMode.updateInfo == true else {
            //: return
            return
        }
        //: let manager = TalkingPopupWindowManager.shared
        let manager = GenerateingReactiveCompatible.shared
        //: manager.setHomePopUpWindow()
        manager.upward()

        //: if CompositionReactiveCompatible.share.loginUserMode.jumpType == 2, CompositionReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue {
        if CompositionReactiveCompatible.share.loginUserMode.jumpType == 2, CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.male.rawValue {
            /// 主动拨打视频弹窗
            //: TalkingVideoInitivCallManager.shared.setObserver()
            YellowManager.shared.buccula()
        }
    }
}

// MARK: - UITabBarControllerDelegate

//: extension TalkingTabBarViewController {
extension ListenPillControllerDelegate {
    //: func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
    func tabBarController(_: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        //: if CompositionReactiveCompatible.share.appStatus == AppSkinStatus.special.rawValue {
        if CompositionReactiveCompatible.share.appStatus == ColumnExInsetTarget.special.rawValue {
            //: return true
            return true
        }
        //: if let vc = viewController.children.first, let tabbarType = TabBarItemType(rawValue: vc.view.tag) {
        if let vc = viewController.children.first, let tabbarType = SuccessSignedSum(rawValue: vc.view.tag) {
            // 点击直播虚拟按钮，不切换tabbar
            //: if tabbarType == .Live {
            if tabbarType == .Live {
                //: liveButtonClick()
                nameureMulti()
                //: return false
                return false
            }
            //: switchRandowTabBarImage(isHidde: tabbarType != .Randow)
            intervalerrupt(isHidde: tabbarType != .Randow)
            // 展示直播开播提醒弹窗，不切换tabbar
            //: if needShowLiveAlertView(type: tabbarType) {
            if mpType(type: tabbarType) {
                //: return false
                return false
            }
        }

        //: return true
        return true
    }

    //: func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        //: if tabBarView.isHidden {
        if tabBarView.isHidden {
            //: tabBarView.isHidden = false
            tabBarView.isHidden = false
        }

        //: if CompositionReactiveCompatible.share.appStatus == AppSkinStatus.special.rawValue {
        if CompositionReactiveCompatible.share.appStatus == ColumnExInsetTarget.special.rawValue {
            //: return
            return
        }

        //: uploadTabSelete()
        capSelete()

        // 消息列表切换到Intimate时，再次切回要默认选中all
        //: if tabBarView.currentTabType == TabBarItemType.Message.rawValue {
        if tabBarView.currentTabType == SuccessSignedSum.Message.rawValue {
            //: let vc = viewController.children.first as? TalkingMessageViewController
            let vc = viewController.children.first as? BistroReactiveCompatible
            //: if vc?.isNoChangeTop == false {
            if vc?.isNoChangeTop == false {
                //: vc?.isNoChangeTop = true
                vc?.isNoChangeTop = true
                //: vc?.setIsTopAll()
                vc?.topAlive()
            }
            //: } else {
        } else {
            //: if let vcArrs = tabBarController.viewControllers {
            if let vcArrs = tabBarController.viewControllers {
                //: for vc in vcArrs {
                for vc in vcArrs {
                    //: if let firstVc = vc.children.first {
                    if let firstVc = vc.children.first {
                        //: if firstVc.isKind(of: TalkingMessageViewController.self) {
                        if firstVc.isKind(of: BistroReactiveCompatible.self) {
                            //: (firstVc as! TalkingMessageViewController).isNoChangeTop = false
                            (firstVc as! BistroReactiveCompatible).isNoChangeTop = false
                            //: break
                            break
                        }
                    }
                }
            }
        }
    }

    //: func uploadTabSelete() {
    func capSelete() {
        //: switch tabBarView.currentTabType {
        switch tabBarView.currentTabType {
        //: case TabBarItemType.Social.rawValue:
        case SuccessSignedSum.Social.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickHomeTabButton)
            noti_liveLevelUrl.recordGender(eventID: mainHomeTransformText)
        //: case TabBarItemType.Randow.rawValue: break
        case SuccessSignedSum.Randow.rawValue: break
//            uploadRecord.uploadRecordEvent(eventID: ClickMatchTabButton)
        //: case TabBarItemType.Moment.rawValue:
        case SuccessSignedSum.Moment.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMomentTabButton)
            noti_liveLevelUrl.recordGender(eventID: noti_nameStreamUrl)
        //: case TabBarItemType.Message.rawValue:
        case SuccessSignedSum.Message.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMassagesTabButton)
            noti_liveLevelUrl.recordGender(eventID: show_pageNameTitle)
        //: case TabBarItemType.Account.rawValue:
        case SuccessSignedSum.Account.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMeTabButton)
            noti_liveLevelUrl.recordGender(eventID: mainScreenKey)
        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - MisestimationManagerDelegate

//: extension TalkingTabBarViewController: IMManagerDelegate {
extension ListenPillControllerDelegate: MisestimationManagerDelegate {
    //: func onUnreadMsgCountChanged(count: Int) {
    func across(count _: Int) {
        //: refreshUnreadIMMessageCount()
        installWith()
    }

    //: func onRecvNewMessage(msg: V2TIMMessage) {
    func back(msg: V2TIMMessage) {
        //: let extra = String(data: msg.customElem.data, encoding: .utf8)
        let extra = String(data: msg.customElem.data, encoding: .utf8)
        //: let json = JSON(parseJSON: extra!)
        let json = JSON(parseJSON: extra!)
        //: let userInfo = json["user"]
        let userInfo = json[(showGeneralData.replacingOccurrences(of: "strength", with: "s"))]
        //: let headUrlStr = userInfo["icon"].stringValue
        let headUrlStr = userInfo[(noti_standId.replacingOccurrences(of: "tender", with: "i"))].stringValue
        //: if headUrlStr.isEmptyString {
        if headUrlStr.isEmptyString {
            //: return
            return
        }

        //: tabBarView.showNewMessageUser(headPic: headUrlStr)
        tabBarView.userResource(headPic: headUrlStr)
    }

    //: func refreshUnreadIMMessageCount() {
    func installWith() {
        //: if LightConversationListener.shared.isConnection {
        if LightConversationListener.shared.isConnection {
            //: let unreadMsgCount = CompositionReactiveCompatible.share.unreadMessageNum
            let unreadMsgCount = CompositionReactiveCompatible.share.unreadMessageNum
            //: tabBarView.refreshBadgeLayoutWith(unread: unreadMsgCount, barType: .Message)
            tabBarView.termsBadgeType(unread: unreadMsgCount, barType: .Message)
        }
    }
}

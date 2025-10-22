
//: Declare String Begin

/*: "mfBean" :*/
fileprivate let appEstateMsg:[UInt8] = [0x3a,0x31,0x15,0x32,0x36,0x39]

/*: "bannerList" :*/
fileprivate let showAnyonePath:String = "bannacquisitionr"
fileprivate let constCommercialValue:String = "Liststorage spot military hang currency"

/*: "icon_me_chatsettings" :*/
fileprivate let user_donValue:[Character] = ["i","c","o","n","_","m","e","_","c","h","a","t"]
fileprivate let const_fastKey:String = "retainttings"

/*: "icon_me_automatic" :*/
fileprivate let app_saleName:String = "skilledon"
fileprivate let appNaturalPath:[Character] = ["u","t","o","m","a","t","i","c"]

/*: "icon_me_settings" :*/
fileprivate let show_situationId:String = "field responseicon_"
fileprivate let main_hundredValue:String = "corners"

/*: "icon_me_tc" :*/
fileprivate let dataRoundPath:[Character] = ["i","c","o","n","_","m"]
fileprivate let appAlwaysId:[Character] = ["e","_","t","c"]

/*: "icon_me_videoSet" :*/
fileprivate let dataFormUnlessText:String = "principal"
fileprivate let const_dragStr:String = "skilled camera smartcon_m"
fileprivate let mainRevenueName:String = "oSetprivate cos"

/*: "icon_me_bs" :*/
fileprivate let userWholeKey:String = "icrow"
fileprivate let k_laboratoryFormat:String = "_me_bsstructure word application route fast"

/*: "Enter " :*/
fileprivate let const_beContent:String = "Enter special seek dynamics"

/*: "Settings" :*/
fileprivate let kExactlyAskNativeId:[Character] = ["S","e","t","t","i","n","g"]
fileprivate let noti_leaveConstraintTitle:String = "decision"

/*: " and open " :*/
fileprivate let noti_pairFormat:String = "recording ready cram a"
fileprivate let dataButtonAmberText:String = "nd ocomply private dynamics country"

/*: "Camera" :*/
fileprivate let app_laborId:[Character] = ["C","a","m","e","r","a"]

/*: " permission to use this function normally" :*/
fileprivate let k_onlyWantId:[UInt8] = [0x1a,0x4a,0x5f,0x48,0x57,0x53,0x49,0x49,0x53,0x55,0x54,0x1a,0x4e,0x55,0x1a,0x4f,0x49,0x5f,0x1a,0x4e,0x52,0x53,0x49,0x1a,0x5c,0x4f,0x54,0x59,0x4e,0x53,0x55,0x54,0x1a,0x54,0x55,0x48,0x57,0x5b,0x56,0x56,0x43]

private func sparkCell(it num: UInt8) -> UInt8 {
    return num ^ 58
}

/*: "Cancel" :*/
fileprivate let dataDestroyMsg:String = "mid nature relieveCancel"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SortDataSource.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeViewController: TalkingBaseViewController {
class SortDataSource: MergeContactViewController {
    //: private var tupleData = [(CenterItemType, String)]()
    private var tupleData = [(ShadeTextConvertible, String)]()
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.wateringPot()
        //: reloadLocalData()
        visitorInside()
        //: func__reqBanner()
        minimizeEnable()
        //: setupSubviews()
        eigenvalueOfAMatrix()
        //: setupSubViewsConstraint()
        subjectMatter()

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(pushEdit),
                                               selector: #selector(acceptCopyread),
                                               //: name: PUSH_MEEDIT_NOTIFICATION,
                                               name: k_assetKey,
                                               //: object: nil)
                                               object: nil)
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__requestUserInfo),
                                               selector: #selector(forewarning),
                                               //: name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               name: appPriceMsg,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: func__requestUserInfo()
        forewarning()
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    // MARK: - Lazy Load

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.sectionHeaderHeight = 0
        table.sectionHeaderHeight = 0
        //: table.sectionFooterHeight = 0
        table.sectionFooterHeight = 0
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 12, right: 0)
        table.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 12, right: 0)
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: if #available(iOS 15.0, *) {
            if #available(iOS 15.0, *) {
                //: UITableView.appearance().sectionHeaderTopPadding = 0
                UITableView.appearance().sectionHeaderTopPadding = 0
            }
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        table.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        //: table.register(TalkingMeTopCell.self, forCellReuseIdentifier: TalkingMeTopCell.className())
        table.register(BangorViewCell.self, forCellReuseIdentifier: BangorViewCell.className())
        //: table.register(TalkingMeBannerCell.self, forCellReuseIdentifier: TalkingMeBannerCell.className())
        table.register(MaximumViewCell.self, forCellReuseIdentifier: MaximumViewCell.className())
        //: table.register(TalkingMeTwoColumnsCell.self, forCellReuseIdentifier: TalkingMeTwoColumnsCell.className())
        table.register(PoliceView.self, forCellReuseIdentifier: PoliceView.className())
        //: table.register(TalkingMeThreeColumnsCell.self, forCellReuseIdentifier: TalkingMeThreeColumnsCell.className())
        table.register(PromiseCompartmentView.self, forCellReuseIdentifier: PromiseCompartmentView.className())
        //: table.register(TalkingUserCenterCell.self, forCellReuseIdentifier: TalkingUserCenterCell.className())
        table.register(PromiseViewCell.self, forCellReuseIdentifier: PromiseViewCell.className())
        //: table.addHeaderRefresh { [weak self] in
        table.downComplection { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.tagReload()
        }
        //: return table
        return table
        //: }()
    }()

    //: lazy var bannerListData: [SocialAdBannerModel] = {
    lazy var bannerListData: [HostBannerModel] = //: return Array<HostBannerModel>()
        .init()
    //: }()
}

// MARK: - Request

//: extension TalkingMeViewController {
extension SortDataSource {
    /// 下拉刷新
    //: private func headerRefresh() {
    private func tagReload() {
        //: tableView.mj_header?.beginRefreshing()
        tableView.mj_header?.beginRefreshing()
        //: func__requestUserInfo()
        forewarning()
    }

    /// 刷新个人资料接口
    //: @objc private func func__requestUserInfo() {
    @objc private func forewarning() {
        //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
        PlightThen.end { _, _, _ in
            //: self.reloadLocalData()
            self.visitorInside()
            //: self.tableView.endRefresh()
            self.tableView.tooCustomer()
            //: self.tableView.reloadData()
            self.tableView.reloadData()

            //: if TalkingLiveManager.shared().isLive {
            if SelectedThen.panCaptureShared().isLive {
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": 0.0])
                NotificationCenter.default.post(name: mainMomentKey, object: nil, userInfo: [String(bytes: appEstateMsg.map{$0^87}, encoding: .utf8)!: 0.0])
            }
        }
    }

    /// banner
    //: func func__reqBanner() {
    func minimizeEnable() {
        //: SocialRequestManager.init().req_adBanner(position: 2) { [weak self] succeed, result, errorModel in
        RequestManager().inclusion(position: 2) { [weak self] _, result, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: let array = JSON(result["bannerList"] ?? []).arrayValue
            let array = JSON(result[(showAnyonePath.replacingOccurrences(of: "acquisition", with: "e") + String(constCommercialValue.prefix(4)))] ?? []).arrayValue
            //: self.bannerListData.removeAll()
            self.bannerListData.removeAll()
            //: for dict in array {
            for dict in array {
                //: if let model = SocialAdBannerModel.deserialize(from: dict.dictionaryObject) {
                if let model = HostBannerModel.deserialize(from: dict.dictionaryObject) {
                    //: self.bannerListData.append(model)
                    self.bannerListData.append(model)
                }
            }
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }

    /// 重载本地数据
    //: private func reloadLocalData() {
    private func visitorInside() {
        //: if CompositionReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue && CompositionReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
        if CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.female.rawValue, CompositionReactiveCompatible.share.appStatus != ColumnExInsetTarget.special.rawValue { // 女性 && 非审核模式
            //: tupleData = [(.My_Chat_Settings, "icon_me_chatsettings"),
            tupleData = [(.My_Chat_Settings, (String(user_donValue) + const_fastKey.replacingOccurrences(of: "retain", with: "se"))),
                         //: (.My_Automatic, "icon_me_automatic"),
                         (.My_Automatic, (app_saleName.replacingOccurrences(of: "skilled", with: "ic") + "_me_a" + String(appNaturalPath))),
                         //: (.My_Settings, "icon_me_settings")]
                         (.My_Settings, (String(show_situationId.suffix(5)) + "me_setti" + main_hundredValue.replacingOccurrences(of: "corner", with: "ng")))]

            //: } else {
        } else {
            //: tupleData = [(.My_Settings, "icon_me_settings")]
            tupleData = [(.My_Settings, (String(show_situationId.suffix(5)) + "me_setti" + main_hundredValue.replacingOccurrences(of: "corner", with: "ng")))]
        }
        //: if CompositionReactiveCompatible.share.appUserConfigMode.showTaskCenter {
        if CompositionReactiveCompatible.share.appUserConfigMode.showTaskCenter {
            //: tupleData.insert((.Task_Center, "icon_me_tc"), at: 0)
            tupleData.insert((.Task_Center, (String(dataRoundPath) + String(appAlwaysId))), at: 0)
        }
        //: if CompositionReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue {
        if CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.female.rawValue {
            //: tupleData.insert((.My_VideoSetting, "icon_me_videoSet"), at: tupleData.count-1)
            tupleData.insert((.My_VideoSetting, (dataFormUnlessText.replacingOccurrences(of: "principal", with: "i") + String(const_dragStr.suffix(5)) + "e_vide" + String(mainRevenueName.prefix(4)))), at: tupleData.count - 1)
            //: } else {
        } else {
            //: if SenseTime_Use && tupleData.count > 0 {
            if notiNetPointName, tupleData.count > 0 {
                //: tupleData.insert((.My_Beautify, "icon_me_bs"), at: tupleData.count-1)
                tupleData.insert((.My_Beautify, (userWholeKey.replacingOccurrences(of: "row", with: "on") + String(k_laboratoryFormat.prefix(6)))), at: tupleData.count - 1)
            }
        }
    }
}

//: extension TalkingMeViewController {
extension SortDataSource {
    //: @objc func pushEdit() {
    @objc func acceptCopyread() {
        //: let editvc = TalkingEditProfilesVC()
        let editvc = ProfilesVc()
        //: self.navigationController?.pushViewController(editvc, animated: true)
        self.navigationController?.pushViewController(editvc, animated: true)
    }

    //: func judgeCameraAuthorization() {
    func okWithAuthorization() {
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { (isOpen: Bool) in
        MeetRouteThen.funcPersonDomino(false) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: guard TalkingSocketManager.shared.isStrategy == false else {
                guard FileSocketManager.shared.isStrategy == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.foolishness(showMsg: constEnterMessage)
                    //: return
                    return
                }
                //: let vc = TalkingMyBeautyVC()
                let vc = MaximumViewController()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: } else {
            } else {
                //: TalkingAlertShow.alert(title: nil, message: "Enter \"Settings\" and open \"Camera\" permission to use this function normally".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Settings".localized) {
                YetAlertShow.trackSpace(title: nil, message: (String(const_beContent.prefix(6))) + "\"" + (String(kExactlyAskNativeId) + noti_leaveConstraintTitle.replacingOccurrences(of: "decision", with: "s")) + "\"" + (String(noti_pairFormat.suffix(2)) + String(dataButtonAmberText.prefix(4)) + "pen ") + "\"" + (String(app_laborId)) + "\"" + String(bytes: k_onlyWantId.map{sparkCell(it: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(dataDestroyMsg.suffix(6))).localized, rightBtnTitle: (String(kExactlyAskNativeId) + noti_leaveConstraintTitle.replacingOccurrences(of: "decision", with: "s")).localized) {
                    //: TalkingAlertShow.hideAlert()
                    YetAlertShow.usance()
                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    YetAlertShow.usance()
                    //: let url = URL(string: UIApplication.openSettingsURLString)
                    let url = URL(string: UIApplication.openSettingsURLString)
                    //: if  UIApplication.shared.canOpenURL(url!) {
                    if UIApplication.shared.canOpenURL(url!) {
                        //: if #available(iOS 10, *) {
                        if #available(iOS 10, *) {
                            //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                            UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                            //: } else {
                        } else {
                            //: UIApplication.shared.openURL(url!)
                            UIApplication.shared.openURL(url!)
                        }
                    }
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingMeViewController: UITableViewDelegate, UITableViewDataSource {
extension SortDataSource: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 4
            return 4
        }
        //: return tupleData.count
        return tupleData.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: guard indexPath.section == 0 else {
        guard indexPath.section == 0 else {
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingUserCenterCell.className(), for: indexPath) as! TalkingUserCenterCell
            let cell = tableView.dequeueReusableCell(withIdentifier: PromiseViewCell.className(), for: indexPath) as! PromiseViewCell
            //: let data = tupleData[indexPath.row]
            let data = tupleData[indexPath.row]
            //: let isLast = tupleData.count == (indexPath.row+1)
            let isLast = tupleData.count == (indexPath.row + 1)
            //: cell.setViewData(title: data.0.rawValue, icon: data.1, row: indexPath.row, isLast: isLast)
            cell.serve(title: data.0.rawValue, icon: data.1, row: indexPath.row, isLast: isLast)
            //: if data.0 ==  .Task_Center {
            if data.0 == .Task_Center {
                //: cell.setTaskCenterBtn()
                cell.footballerBecome()
            }
            //: return cell
            return cell
        }

        //: switch(indexPath.row) {
        switch indexPath.row {
        //: case 0:
        case 0:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeTopCell.className(), for: indexPath) as! TalkingMeTopCell
            let cell = tableView.dequeueReusableCell(withIdentifier: BangorViewCell.className(), for: indexPath) as! BangorViewCell
            //: cell.setViewData()
            cell.ignoreCheckion()
            //: return cell
            return cell
        //: case 1:
        case 1:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeBannerCell.className(), for: indexPath) as! TalkingMeBannerCell
            let cell = tableView.dequeueReusableCell(withIdentifier: MaximumViewCell.className(), for: indexPath) as! MaximumViewCell
            //: cell.setViewData(bannerData: self.bannerListData)
            cell.regain(bannerData: self.bannerListData)
            //: return cell
            return cell
        //: case 2:
        case 2:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeTwoColumnsCell.className(), for: indexPath) as! TalkingMeTwoColumnsCell
            let cell = tableView.dequeueReusableCell(withIdentifier: PoliceView.className(), for: indexPath) as! PoliceView
            //: cell.setViewData()
            cell.contextFail()
            //: return cell
            return cell
        //: case 3:
        case 3:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeThreeColumnsCell.className(), for: indexPath) as! TalkingMeThreeColumnsCell
            let cell = tableView.dequeueReusableCell(withIdentifier: PromiseCompartmentView.className(), for: indexPath) as! PromiseCompartmentView
            //: cell.setViewData()
            cell.randomSample()
            //: return cell
            return cell

        //: default:
        default:
            //: break
            break
        }

        //: let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
        //: cell.backgroundColor = .clear
        cell.backgroundColor = .clear
        //: cell.selectionStyle = .none
        cell.selectionStyle = .none
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 0 && indexPath.row == 1 && self.bannerListData.count <= 0 {
        if indexPath.section == 0 && indexPath.row == 1 && self.bannerListData.count <= 0 {
            //: return 0
            return 0
        }
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: guard indexPath.section == 1 else { return }
        guard indexPath.section == 1 else { return }
        //: let data = tupleData[indexPath.row]
        let data = tupleData[indexPath.row]
        //: switch data.0 {
        switch data.0 {
        //: case .My_Chat_Settings:
        case .My_Chat_Settings:
            //: let vc = TalkingFemalePriceSetVC()
            let vc = DirtyThen()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .My_Automatic:
        case .My_Automatic:
            //: let vc = TalkingAutoGreetSettingVC()
            let vc = FormalDataSource()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .My_Settings:
        case .My_Settings:
            //: let vc = TalkingSettingsVC()
            let vc = WhiteViewDelegate()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .Task_Center:
        case .Task_Center:
            //: SightReactiveCompatible.share.func__pushToWebVC(webViewType: .TaskCenter)
            SightReactiveCompatible.share.elementOfResume(webViewType: .TaskCenter)

        //: case .My_Beautify:
        case .My_Beautify:
            //: judgeCameraAuthorization()
            okWithAuthorization()

        //: case .My_VideoSetting:
        case .My_VideoSetting:
            //: let vc = TalkingVideoSettingsVC.init()
            let vc = PoliceReactiveCompatible()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: default: break
        default: break
        }
    }
}

// MARK: - Layout

//: extension TalkingMeViewController {
extension SortDataSource {
    /// 添加视图
    //: private func setupSubviews() {
    private func eigenvalueOfAMatrix() {
        //: self.view.addSubview(tableView)
        self.view.addSubview(tableView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func subjectMatter() {
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}

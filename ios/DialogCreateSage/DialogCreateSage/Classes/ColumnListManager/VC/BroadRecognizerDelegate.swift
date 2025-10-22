
//: Declare String Begin

/*: "Follow" :*/
fileprivate let mainFavoriteMessage:String = "Followsend creation price cease"

/*: "Tip: Can't earn points if you follow each other~" :*/
fileprivate let dataComputeNativeContent:[UInt8] = [0xe,0x33,0x2a,0x60,0x7a,0x19,0x3b,0x34,0x7d,0x2e,0x7a,0x3f,0x3b,0x28,0x34,0x7a,0x2a,0x35,0x33,0x34,0x2e,0x29,0x7a,0x33,0x3c,0x7a,0x23,0x35,0x2f,0x7a,0x3c,0x35,0x36,0x36,0x35,0x2d,0x7a,0x3f,0x3b,0x39,0x32,0x7a,0x35,0x2e,0x32,0x3f,0x28,0x24]

private func butterflyEffect(ceremony num: UInt8) -> UInt8 {
    return num ^ 90
}

/*: "Tip:" :*/
fileprivate let const_programMsg:String = "computer approval appropriateTip:"

/*: "Favorite each other" :*/
fileprivate let dataSunStickStr:[Character] = ["F","a","v","o","r"]
fileprivate let userBullGroundPath:String = "exercise mean bucket meanite eac"
fileprivate let noti_neighborTitle:String = "drop entitle resulth other"

/*: " chat will be free" :*/
fileprivate let const_fundCollectPath:String = "serve view chat "
fileprivate let const_calledKey:String = "trust cram boldwill b"

/*: "targetUid" :*/
fileprivate let const_dimensionId:[Character] = ["t","a","r","g","e","t","U","i","d"]

/*: "type" :*/
fileprivate let show_donEasternName:String = "documentpe"

/*: "attentionType" :*/
fileprivate let app_ableName:String = "attsimultaneouslyn"
fileprivate let dataConsentName:String = "yappearance"

/*: "limit" :*/
fileprivate let showRedMessage:[Character] = ["l","i","m","i","t"]

/*: "page" :*/
fileprivate let appOriginalProcessStr:[Character] = ["p","a","g","e"]

/*: "You've got no favourite yet." :*/
fileprivate let mainPileName:String = "You\'"
fileprivate let notiSocialName:String = "shot lovelyot no "
fileprivate let const_haulPath:String = "ueveryoneit"
fileprivate let noti_peerText:String = "e yet.club sage engage succeed king"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BroadRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/13.
//

//: import JXPagingView
import JXPagingView
//: import UIKit
import UIKit

//: class TalkingAttentionVC: TalkingBaseViewController {
class BroadRecognizerDelegate: MergeContactViewController {
    //: var pageIndex = 0
    var pageIndex = 0
    //: var DataSource: [TalkingAttentionModel] = []
    var DataSource: [SupremeTransformable] = []

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Follow".localized
        self.title = (String(mainFavoriteMessage.prefix(6))).localized
        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: designView()
        backgroundView()
        //: reqData()
        missData()
    }

    // MARK: - Lazy load

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: let view = EmptyView()
        let view = EmptyView()
        //: return view
        return view
        //: }()
    }()

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: user_needValue, height: kStreamTitle), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.addHeaderRefresh { [weak self] in
        table.downComplection { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.failureGold()
        }
        //: table.addFooterRefresh { [weak self] in
        table.pickUp { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.coalTarRefresh()
        }
        //: return table
        return table
        //: }()
    }()

    var text = (String(const_programMsg.suffix(4))) + "\"" + (String(dataSunStickStr) + String(userBullGroundPath.suffix(7)) + String(noti_neighborTitle.suffix(7))) + "\"" + (String(const_fundCollectPath.suffix(6)) + String(const_calledKey.suffix(6)) + "e free").localized
    //: lazy var bottomView: UIView = {
    lazy var bottomView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor(red: 138/255.0, green: 121/255.0, blue: 249/255.0, alpha: 0.2)
        view.backgroundColor = UIColor(red: 138 / 255.0, green: 121 / 255.0, blue: 249 / 255.0, alpha: 0.2)
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .processAcross(type: .Regular, fontSize: 15)
        //: label.textColor = UIColor.appThemeColor()
        label.textColor = UIColor.rawMonthCombine()
        //: if CompositionReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue {
        if CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.female.rawValue {
            //: label.text = "Tip: Can't earn points if you follow each other~".localized
            label.text = String(bytes: dataComputeNativeContent.map{butterflyEffect(ceremony: $0)}, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "Tip:\"Favorite each other\" chat will be free".localized
            label.text = text
        }
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: view.addSubview(label)
        view.addSubview(label)
        //: label.snp.makeConstraints { make in
        label.snp.makeConstraints { make in
            //: make.top.equalTo(view).offset(4)
            make.top.equalTo(view).offset(4)
            //: make.bottom.equalTo(view.snp.bottom).offset(-4)
            make.bottom.equalTo(view.snp.bottom).offset(-4)
            //: make.leading.equalTo(view).offset(15)
            make.leading.equalTo(view).offset(15)
            //: make.trailing.equalTo(view.snp.trailing).offset(-15)
            make.trailing.equalTo(view.snp.trailing).offset(-15)
        }

        //: return view
        return view
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingAttentionVC {
extension BroadRecognizerDelegate {
    //: func reqData() {
    func missData() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["targetUid"] = CompositionReactiveCompatible.share.loginUserMode.userID
        dict[(String(const_dimensionId))] = CompositionReactiveCompatible.share.loginUserMode.userID
        //: dict["type"] = "1"
        dict[(show_donEasternName.replacingOccurrences(of: "document", with: "ty"))] = "1"
        //: dict["attentionType"] = "1"
        dict[(app_ableName.replacingOccurrences(of: "simultaneously", with: "e") + "tionT" + dataConsentName.replacingOccurrences(of: "appearance", with: "pe"))] = "1"
        //: dict["limit"] = "20"
        dict[(String(showRedMessage))] = "20"
        //: dict["page"] = String(pageIndex)
        dict[(String(appOriginalProcessStr))] = String(pageIndex)

        //: TalkingChatRequestTool.req_atationList(params: dict) { succeed, result, errorModel in
        ReminderRequestTool.inmateHair(params: dict) { succeed, result, _ in
            //: self.MainTable.endRefresh()
            self.MainTable.tooCustomer()
            //: if succeed {
            if succeed {
                //: let array: Array =  result as! Array<Any>
                let array: Array = result as! [Any]
                //: if array.count == 0 && self.pageIndex > 0 {
                if array.count == 0, self.pageIndex > 0 {
                    //: self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                    self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                }
                //: var dataArr: [TalkingAttentionModel] = []
                var dataArr: [SupremeTransformable] = []
                //: if let datas = Array<TalkingAttentionModel>.deserialize(from: array as? Array) {
                if let datas = Array<SupremeTransformable>.deserialize(from: array as? Array) {
                    //: dataArr.append(contentsOf: (datas as? [TalkingAttentionModel])!)
                    dataArr.append(contentsOf: (datas as? [SupremeTransformable])!)
                }
                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.DataSource = dataArr
                    self.DataSource = dataArr
                    //: if dataArr.count>0 {
                    if dataArr.count > 0 {
                        //: self.emptyView.removeFromSuperview()
                        self.emptyView.removeFromSuperview()
                    }
                    //: } else {
                } else {
                    //: self.DataSource.append(contentsOf: dataArr)
                    self.DataSource.append(contentsOf: dataArr)
                }

                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }

    //: func headerRefresh() {
    func failureGold() {
        //: MainTable.mj_header?.beginRefreshing()
        MainTable.mj_header?.beginRefreshing()
        //: pageIndex = 0
        pageIndex = 0
        //: reqData()
        missData()
    }

    //: func footerRefresh() {
    func coalTarRefresh() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        missData()
    }
}

// MARK: - JXPagingViewListViewDelegate

//: extension TalkingAttentionVC: JXPagingViewListViewDelegate {
extension BroadRecognizerDelegate: JXPagingViewListViewDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }

    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return self.MainTable
        return self.MainTable
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
    func listViewDidScrollCallback(callback _: @escaping (UIScrollView) -> Void) {}
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingAttentionVC: UITableViewDelegate, UITableViewDataSource {
extension BroadRecognizerDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.DataSource.count
        return self.DataSource.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76
        return 76
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = TalkingAttentionCell.className()
        let identifier = EvenAttentionThen.className()
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingAttentionCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? EvenAttentionThen
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingAttentionCell(style: .default, reuseIdentifier: identifier)
            cell = EvenAttentionThen(style: .default, reuseIdentifier: identifier)
        }
        //: let model: TalkingAttentionModel = self.DataSource[indexPath.row]
        let model: SupremeTransformable = self.DataSource[indexPath.row]
        //: cell?.setCell(model: model, index: indexPath, Atype: .attention)
        cell?.wearer(model: model, index: indexPath, Atype: .attention)
        //: cell?.delegate = self
        cell?.delegate = self

        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}
}

// MARK: - FactorAttentionDelegate

//: extension TalkingAttentionVC: AttentionDelegate {
extension BroadRecognizerDelegate: FactorAttentionDelegate {
    //: func cancelAtationSeleteIndex(_ index: IndexPath) {
    func errorMatch(_ index: IndexPath) {
        //: self.DataSource.remove(at: index.row)
        self.DataSource.remove(at: index.row)
        //: self.MainTable.reloadData()
        self.MainTable.reloadData()
    }

    //: func belikeAtationSeleteIndex(_ index: IndexPath) {
    func styleForIndex(_: IndexPath) {}
}

// MARK: - UI

//: extension TalkingAttentionVC {
extension BroadRecognizerDelegate {
    //: private func designView() {
    private func backgroundView() {
        //: var style = EmptyStyle()
        var style = SceneEmptyStyle()
        //: style.TipsTitle = "You've got no favourite yet.".localized
        style.TipsTitle = (mainPileName + "ve g" + String(notiSocialName.suffix(6)) + "favo" + const_haulPath.replacingOccurrences(of: "everyone", with: "r") + String(noti_peerText.prefix(6))).localized
        //: emptyView = EmptyView.init(frame: self.view.frame, style: style)
        emptyView = EmptyView(frame: self.view.frame, style: style)
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: emptyView.emptyBlock = {
        emptyView.emptyBlock = {
            //: self.MainTable.mj_header?.beginRefreshing()
            self.MainTable.mj_header?.beginRefreshing()
        }
        //: self.view.addSubview(bottomView)
        self.view.addSubview(bottomView)
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-(KDeviceIsIphoneX ? 34 + 49-44  : 49))
            make.bottom.equalTo(self.view.snp.bottom).offset(-(app_onId ? 34 + 49 - 44 : 49))
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
            //: make.height.equalTo(54)
            make.height.equalTo(54)
        }
        //: bottomView.isHidden = CompositionReactiveCompatible.share.appStatus != AppSkinStatus.normal.rawValue
        bottomView.isHidden = CompositionReactiveCompatible.share.appStatus != ColumnExInsetTarget.normal.rawValue

        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingAttentionCell.self, forCellReuseIdentifier: TalkingAttentionCell.className())
        MainTable.register(EvenAttentionThen.self, forCellReuseIdentifier: EvenAttentionThen.className())
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(bottomView.snp.top)
            make.bottom.equalTo(bottomView.snp.top)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }

        //: self.view.bringSubviewToFront(emptyView)
        self.view.bringSubviewToFront(emptyView)
    }
}

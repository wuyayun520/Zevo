
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let data_expectedPath:[UInt8] = [0x6a,0x6f,0x6a,0x75,0x29,0x64,0x70,0x65,0x66,0x73,0x3b,0x2a,0x21,0x69,0x62,0x74,0x21,0x6f,0x70,0x75,0x21,0x63,0x66,0x66,0x6f,0x21,0x6a,0x6e,0x71,0x6d,0x66,0x6e,0x66,0x6f,0x75,0x66,0x65]

fileprivate func draftMedium(label num: UInt8) -> UInt8 {
    let value = Int(num) + 255
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "There's no posts yet." :*/
fileprivate let mainOvalPath:String = "There\'"
fileprivate let k_strokeKey:String = " postdescription tap announcement column"

/*: "uid" :*/
fileprivate let const_bridgeProjectValue:[Character] = ["u","i","d"]

/*: "page" :*/
fileprivate let main_goldMsg:[Character] = ["p","a","g","e"]

/*: "list" :*/
fileprivate let app_botKey:String = "licropt"

/*: "nickname" :*/
fileprivate let user_brightBlockTitle:String = "networkic"
fileprivate let data_gainCornerId:String = "portname"

/*: "age" :*/
fileprivate let showAircraftUrl:String = "agtwenty"

/*: "sex" :*/
fileprivate let constEngageId:String = "seillegal"

/*: "isTPAuth" :*/
fileprivate let constRunningShallKey:[Character] = ["i","s","T","P","A","u","t","h"]

/*: "headPic" :*/
fileprivate let mainDescribePath:String = "come pattern primaryheadP"
fileprivate let noti_pleaseStr:[Character] = ["i","c"]

/*: "pinCount" :*/
fileprivate let userBeatTitle:[Character] = ["p","i","n","C","o","u"]
fileprivate let show_accessKey:String = "database"

/*: "model" :*/
fileprivate let noti_scoreFormat:String = "moaskel"

/*: "Unpin from profile" :*/
fileprivate let k_recognizeContent:String = "particle slim formalUnpi"
fileprivate let appListenerPath:String = "follow varietyom pr"
fileprivate let data_succeedStr:String = "oliftile"

/*: "Delete Post" :*/
fileprivate let main_exactBlankValue:String = "observe consist entry collectDelete"

/*: "Pin to profile" :*/
fileprivate let kReportMsg:[Character] = ["P","i","n"," ","t","o"," ","p","r","o","f"]
fileprivate let appRegainFormat:String = "ILE"

/*: "momentId" :*/
fileprivate let noti_rowValue:String = "orange hidden eastern some transitionmomentId"

/*: "status" :*/
fileprivate let show_executeValue:String = "sincidentaincidentus"

/*: "Your post has been pinned" :*/
fileprivate let app_exerciseListKey:[Character] = ["Y","o","u","r"," "]
fileprivate let kInputFormat:String = "post hasevaluate boy library activity"
fileprivate let constDeliverId:[Character] = [" ","b","e","e","n"," ","p","i","n","n","e","d"]

/*: "Your post has been Unpinned" :*/
fileprivate let app_genreFormat:[Character] = ["Y","o","u","r"," ","p","o","s","t"," ","h"]
fileprivate let notiMmPath:String = "as bsubmit third choose"
fileprivate let kDigitalData:String = "phostnned"

/*: "Posts" :*/
fileprivate let main_healthyRepresentationValue:[Character] = ["P","o","s","t","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BenchViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/22.
//

//: import UIKit
import UIKit

// MARK: - 属性声明 & 生命周期方法

//: class TalkingUserMomentVC: TalkingBaseViewController {
class BenchViewController: MergeContactViewController {
    //: var uid = ""
    var uid = ""
    //: var pageIndex = 0
    var pageIndex = 0
    //: var disposeBag = DisposeBag()
    var disposeBag = DisposeBag()
    //: var dataSourceArr: [TalkingMomentModel] = []
    var dataSourceArr: [LivingMomentModel] = []

    //: init(uid: String) {
    init(uid: String) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.uid = uid
        self.uid = uid
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: data_expectedPath.map{draftMedium(label: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        ban()
        //: setupSubViewsConstraint()
        uniform()
        //: bindInteraction()
        waterfinder()
        //: reqData()
        libraryMerge()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: lazy var mainTableView: UITableView = {
    lazy var mainTableView: UITableView = {
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
        //: table.showsVerticalScrollIndicator = true
        table.showsVerticalScrollIndicator = true
        //: table.estimatedRowHeight = 0
        table.estimatedRowHeight = 0
        //: table.estimatedSectionFooterHeight = 0
        table.estimatedSectionFooterHeight = 0
        //: table.estimatedSectionHeaderHeight = 0
        table.estimatedSectionHeaderHeight = 0
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //: return table
        return table
        //: }()
    }()

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = SceneEmptyStyle()
        //: style.TipsTitle = "There's no posts yet."
        style.TipsTitle = (mainOvalPath + "s no" + String(k_strokeKey.prefix(5)) + "s yet.")
        //: let view = EmptyView.init(frame: self.view.frame, style: style)
        let view = EmptyView(frame: self.view.frame, style: style)
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingUserMomentVC {
extension BenchViewController {
    //: func reqData() {
    func libraryMerge() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["uid"] = uid
        dict[(String(const_bridgeProjectValue))] = uid
        //: dict["page"] = pageIndex
        dict[(String(main_goldMsg))] = pageIndex
        //: TalkingMomentRequestTool.req_UserMomentList(params: dict) { succeed, result, errorModel in
        ContentWeeklyReactiveCompatible.confirmAnimal(params: dict) { succeed, result, errorModel in

            //: self.mainTableView.endRefresh()
            self.mainTableView.tooCustomer()
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {
                guard let dict = result as? [String: Any] else {
                    //: if self.pageIndex > 0 {
                    if self.pageIndex > 0 {
                        //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                        self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    }
                    //: return
                    return
                }

                //: guard let array = dict["list"] as? Array<Any> else {
                guard let array = dict[(app_botKey.replacingOccurrences(of: "crop", with: "s"))] as? [Any] else {
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    //: return
                    return
                }
                //: var dataArr: [TalkingMomentModel] = []
                var dataArr: [LivingMomentModel] = []
                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: if var model = JSONDeserializer<TalkingMomentModel>.deserializeFrom(dict: array[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if var model = JSONDeserializer<LivingMomentModel>.deserializeFrom(dict: array[i] as? [String: Any], designatedPath: nil) {
                        //: model.nickname = dict["nickname"] as? String
                        model.nickname = dict[(user_brightBlockTitle.replacingOccurrences(of: "network", with: "n") + data_gainCornerId.replacingOccurrences(of: "port", with: "k"))] as? String
                        //: model.age = dict["age"] as? Int
                        model.age = dict[(showAircraftUrl.replacingOccurrences(of: "twenty", with: "e"))] as? Int
                        //: model.sex = dict["sex"] as? String
                        model.sex = dict[(constEngageId.replacingOccurrences(of: "illegal", with: "x"))] as? String
                        //: model.uid = dict["uid"] as? String
                        model.uid = dict[(String(const_bridgeProjectValue))] as? String
                        //: model.isTPAuth = dict["isTPAuth"] as? Bool ?? false
                        model.isTPAuth = dict[(String(constRunningShallKey))] as? Bool ?? false
                        //: model.headPic = dict["headPic"] as? String
                        model.headPic = dict[(String(mainDescribePath.suffix(5)) + String(noti_pleaseStr))] as? String
                        //: model.pinCount = dict["pinCount"] as! Int
                        model.pinCount = dict[(String(userBeatTitle) + show_accessKey.replacingOccurrences(of: "database", with: "nt"))] as! Int
                        //: model.caculateItemHeight()
                        model.activity()
                        //: if model.uid == CompositionReactiveCompatible.share.loginUserMode.userID {
                        if model.uid == CompositionReactiveCompatible.share.loginUserMode.userID {
                            //: model.isUserDetail = true
                            model.isUserDetail = true
                        }
                        //: dataArr.append(model)
                        dataArr.append(model)
                    }
                }

                //: if dataArr.count < 20 {
                if dataArr.count < 20 { // 不足一页，隐藏更多
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                }

                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.dataSourceArr = dataArr
                    self.dataSourceArr = dataArr
                    //: if dataArr.count>0 {
                    if dataArr.count > 0 {
                        //: self.emptyView.removeFromSuperview()
                        self.emptyView.removeFromSuperview()
                    }
                    //: } else {
                } else {
                    //: self.dataSourceArr.append(contentsOf: dataArr)
                    self.dataSourceArr.append(contentsOf: dataArr)
                }

                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg )
                self.foolishness(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

// MARK: - 事件方法

//: extension TalkingUserMomentVC {
extension BenchViewController {
    //: func headerRefresh() {
    func policyHeader() {
        //: pageIndex = 0
        pageIndex = 0
        //: mainTableView.mj_header?.beginRefreshing()
        mainTableView.mj_header?.beginRefreshing()
        //: reqData()
        libraryMerge()
    }

    //: func footerRefresh() {
    func big() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        libraryMerge()
    }

    //: @objc func updateLikeNumber(notification: NSNotification) -> Void {
    @objc func messageFlush(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: var model: TalkingMomentModel = userinfo["model"] as! TalkingMomentModel
        var model: LivingMomentModel = userinfo[(noti_scoreFormat.replacingOccurrences(of: "ask", with: "d"))] as! LivingMomentModel
        //: if model.uid == CompositionReactiveCompatible.share.loginUserMode.userID {
        if model.uid == CompositionReactiveCompatible.share.loginUserMode.userID {
            //: model.isUserDetail = true
            model.isUserDetail = true
        }
        //: for i in 0..<self.dataSourceArr.count {
        for i in 0 ..< self.dataSourceArr.count {
            //: let tmodel = self.dataSourceArr[i]
            let tmodel = self.dataSourceArr[i]
            //: if model.mid == tmodel.mid {
            if model.mid == tmodel.mid {
                //: self.dataSourceArr[i] = model
                self.dataSourceArr[i] = model
                //: self.mainTableView.reloadRows(at: [IndexPath.init(row: i, section: 0)], with: .none)
                self.mainTableView.reloadRows(at: [IndexPath(row: i, section: 0)], with: .none)
                //: return
                return
            }
        }
    }

    //: func deleteCell(model: TalkingMomentModel, index: Int) {
    func each(model: LivingMomentModel, index: Int) {
        //: let vc = TalkingMunuPopView.init(frame: self.view.frame)
        let vc = AddressPopView(frame: self.view.frame)

        //: if model.pinCount<3 {
        if model.pinCount < 3 {
            //: if model.pinStatus {
            if model.pinStatus {
                //: vc.initwithList(cellTitleList: ["Unpin from profile".localized, "Delete Post".localized])
                vc.mapFile(cellTitleList: [(String(k_recognizeContent.suffix(4)) + "n fr" + String(appListenerPath.suffix(5)) + data_succeedStr.replacingOccurrences(of: "lift", with: "f")).localized, (String(main_exactBlankValue.suffix(6)) + " Post").localized])
                //: } else {
            } else {
                //: vc.initwithList(cellTitleList: ["Pin to profile".localized, "Delete Post".localized])
                vc.mapFile(cellTitleList: [(String(kReportMsg) + appRegainFormat.lowercased()).localized, (String(main_exactBlankValue.suffix(6)) + " Post").localized])
            }
            //: } else {
        } else {
            //: if model.pinStatus {
            if model.pinStatus {
                //: vc.initwithList(cellTitleList: ["Unpin from profile".localized, "Delete Post".localized])
                vc.mapFile(cellTitleList: [(String(k_recognizeContent.suffix(4)) + "n fr" + String(appListenerPath.suffix(5)) + data_succeedStr.replacingOccurrences(of: "lift", with: "f")).localized, (String(main_exactBlankValue.suffix(6)) + " Post").localized])
                //: } else {
            } else {
                //: vc.initwithList(cellTitleList: ["Delete Post".localized])
                vc.mapFile(cellTitleList: [(String(main_exactBlankValue.suffix(6)) + " Post").localized])
            }
        }

        //: vc.munuBlock = { [weak self] index, str in
        vc.munuBlock = { [weak self] index, str in
            //: guard let self = self else {return}
            guard let self = self else { return }

            //: if str == "Unpin from profile".localized {
            if str == (String(k_recognizeContent.suffix(4)) + "n fr" + String(appListenerPath.suffix(5)) + data_succeedStr.replacingOccurrences(of: "lift", with: "f")).localized {
                //: self.topMoment(isTop: 0, model: model)
                self.uniformModel(isTop: 0, model: model)
                //: } else if str == "Pin to profile".localized {
            } else if str == (String(kReportMsg) + appRegainFormat.lowercased()).localized {
                //: self.topMoment(isTop: 1, model: model)
                self.uniformModel(isTop: 1, model: model)
                //: } else if str == "Delete Post".localized {
            } else if str == (String(main_exactBlankValue.suffix(6)) + " Post").localized {
                //: ProgressHUD.show()
                PointerReactiveCompatible.soundAssetThrow()
                //: var dict = Dictionary<String, Any>()
                var dict = [String: Any]()
                //: dict["id"] = model.mid
                dict["id"] = model.mid
                //: TalkingMomentRequestTool.req_DeleteMoment(params: dict) { succeed, result, errorModel in
                ContentWeeklyReactiveCompatible.currencyMp(params: dict) { succeed, _, errorModel in
                    //: ProgressHUD.dismiss()
                    PointerReactiveCompatible.motivationCharmDismiss()
                    //: if succeed {
                    if succeed {
                        //: if index<self.dataSourceArr.count {
                        if index < self.dataSourceArr.count {
                            //: self.disposeBag = DisposeBag()
                            self.disposeBag = DisposeBag()
                            //: self.mainTableView.mj_header?.beginRefreshing()
                            self.mainTableView.mj_header?.beginRefreshing()
                            //: } else if self.dataSourceArr.count == 1 {
                        } else if self.dataSourceArr.count == 1 {
                            //: self.dataSourceArr.removeAll()
                            self.dataSourceArr.removeAll()
                            //: self.disposeBag = DisposeBag()
                            self.disposeBag = DisposeBag()
                            //: self.view.addSubview(self.emptyView)
                            self.view.addSubview(self.emptyView)
                        }
                        //: } else {
                    } else {
                        //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                        self.foolishness(showMsg: errorModel!.errorMsg)
                    }
                }
            }
        }
    }

    //: func topMoment(isTop: Int, model: TalkingMomentModel) {
    func uniformModel(isTop: Int, model: LivingMomentModel) {
        //: ProgressHUD.show()
        PointerReactiveCompatible.soundAssetThrow()
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = model.mid
        dict[(String(noti_rowValue.suffix(8)))] = model.mid
        //: dict["status"] = isTop
        dict[(show_executeValue.replacingOccurrences(of: "incident", with: "t"))] = isTop
        //: TalkingMomentRequestTool.req_TopMoment(params: dict) { succeed, result, errorModel in
        ContentWeeklyReactiveCompatible.cagey(params: dict) { succeed, _, errorModel in
            //: ProgressHUD.dismiss()
            PointerReactiveCompatible.motivationCharmDismiss()
            //: if succeed {
            if succeed {
                //: let str = isTop==1 ? "Your post has been pinned".localized : "Your post has been Unpinned".localized
                let str = isTop == 1 ? (String(app_exerciseListKey) + String(kInputFormat.prefix(8)) + String(constDeliverId)).localized : (String(app_genreFormat) + String(notiMmPath.prefix(4)) + "een Un" + kDigitalData.replacingOccurrences(of: "host", with: "i")).localized
                //: self.func__showStatusBarSuccessMsg(showMsg: str)
                self.through(showMsg: str)
                //: self.disposeBag = DisposeBag()
                self.disposeBag = DisposeBag()
                //: self.mainTableView.mj_header?.beginRefreshing()
                self.mainTableView.mj_header?.beginRefreshing()
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.foolishness(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

// MARK: - UITableViewDelegate,UITableViewdataSourceArr

//: extension TalkingUserMomentVC: UITableViewDelegate, UITableViewDataSource {
extension BenchViewController: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.dataSourceArr.count
        return self.dataSourceArr.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: let model = self.dataSourceArr[indexPath.row]
        let model = self.dataSourceArr[indexPath.row]
        //: return model.itemHeight ?? 56
        return model.itemHeight ?? 56
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = TalkingMomentItemCell(style: .default, reuseIdentifier: TalkingMomentItemCell.className(), isMyHost: true)
        let cell = FactorReactiveCompatible(style: .default, reuseIdentifier: FactorReactiveCompatible.className(), isMyHost: true)
        //: let model: TalkingMomentModel = self.dataSourceArr[indexPath.row]
        let model: LivingMomentModel = self.dataSourceArr[indexPath.row]
        //: cell.configCell(model: model)
        cell.compute(model: model)
        //: cell.userInfoView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
        cell.userInfoView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.deleteCell(model: model, index: indexPath.row)
            self.each(model: model, index: indexPath.row)
            //: }).disposed(by: cell.cellDisposeBag )
        }).disposed(by: cell.cellDisposeBag)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, willDisplay _: UITableViewCell, forRowAt _: IndexPath) {}

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model = self.dataSourceArr[indexPath.row]
        let model = self.dataSourceArr[indexPath.row]
        //: let vc =  TalkingMomentDetailVC.init(model: model)
        let vc = SceneReactiveCompatible(model: model)
        //: vc.delegete = { [weak self] in
        vc.delegete = { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if indexPath.row<self.dataSourceArr.count {
            if indexPath.row < self.dataSourceArr.count {
                //: self.dataSourceArr.remove(at: indexPath.row)
                self.dataSourceArr.remove(at: indexPath.row)
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: self.disposeBag = DisposeBag()
                self.disposeBag = DisposeBag()
            }
        }
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingUserMomentVC {
extension BenchViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func ban() {
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.wateringPot()
        //: self.title = "Posts".localized
        self.title = (String(main_healthyRepresentationValue)).localized
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)

        //: self.view.addSubview(mainTableView)
        self.view.addSubview(mainTableView)
        //: mainTableView.register(TalkingMomentItemCell.self, forCellReuseIdentifier: TalkingMomentItemCell.className())
        mainTableView.register(FactorReactiveCompatible.self, forCellReuseIdentifier: FactorReactiveCompatible.className())
        //: mainTableView.dataSource = self
        mainTableView.dataSource = self
        //: mainTableView.delegate = self
        mainTableView.delegate = self
        //: self.view.bringSubviewToFront(emptyView)
        self.view.bringSubviewToFront(emptyView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func uniform() {
        //: mainTableView.snp.makeConstraints { make in
        mainTableView.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func waterfinder() {
        //: mainTableView.addHeaderRefresh { [weak self] in
        mainTableView.downComplection { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.policyHeader()
        }
        //: mainTableView.addFooterRefresh { [weak self] in
        mainTableView.pickUp { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.big()
        }

        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.mainTableView.mj_header?.beginRefreshing()
            self.mainTableView.mj_header?.beginRefreshing()
        }
        //: NotificationCenter.default.addObserver(self, selector: #selector(updateLikeNumber(notification:)), name: UPDATE_LIKE_NUMBER_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(messageFlush(notification:)), name: userMaleMovieTitle, object: nil)
    }
}


//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let appProposalBrightEliteFormat:[UInt8] = [0x32,0x37,0x32,0x3d,0xf1,0x2c,0x38,0x2d,0x2e,0x3b,0x3,0xf2,0xe9,0x31,0x2a,0x3c,0xe9,0x37,0x38,0x3d,0xe9,0x2b,0x2e,0x2e,0x37,0xe9,0x32,0x36,0x39,0x35,0x2e,0x36,0x2e,0x37,0x3d,0x2e,0x2d]

fileprivate func bonTon(bird num: UInt8) -> UInt8 {
    let value = Int(num) - 201
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_chats_banner_subtract" :*/
fileprivate let userReportUrl:[Character] = ["i","c","o","n","_","c","h","a","t","s"]
fileprivate let noti_nearbyEquityKey:String = "_bacommit strip"
fileprivate let appExceptionName:String = "assetasseter"
fileprivate let noti_ofPath:String = "manracman"

/*: "icon_chats_banner_subtract_pre" :*/
fileprivate let show_footballName:String = "icon_fill resume"
fileprivate let user_windowListenMessage:String = "_bannesuit giant colorful"
fileprivate let notiWriteUrl:String = "bextendedra"

/*: "bannerList" :*/
fileprivate let main_currencyText:String = "BANNE"
fileprivate let const_moveDistrictTitle:[Character] = ["r","L","i","s","t"]

/*: "JXBannerCellID" :*/
fileprivate let appArrowDebateStr:String = "to showJXBan"
fileprivate let dataEngageBeautyUrl:[Character] = ["n","e","r"]
fileprivate let kBugReceiveId:String = "ex transition operate direct kindCellID"

/*: "#FFFFFF" :*/
fileprivate let noti_reportMessage:String = "#FFFFFFviolation representative"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingPrivateBanner View.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/17.
//

//: import JXBanner
import JXBanner
//: import JXPageControl
import JXPageControl
//: import UIKit
import UIKit

//: protocol PrivateBannerDelegate: NSObject {
protocol WealthyThen: NSObject {
    //: func changeBannerViewFream(isMiniView: Bool)
    func single(isMiniView: Bool)
}

//: class TalkingPrivateBannerView: UIView {
class RecoverThen: UIView {
    //: var isMiniView = false
    var isMiniView = false
    //: open weak var delegate: PrivateBannerDelegate?
    open weak var delegate: WealthyThen?

    //: private override init(frame: CGRect) {
    override private init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.isHidden = true
        self.isHidden = true
        //: setupSubviews()
        shShape()
        //: setupSubViewsConstraint()
        stack()
        //: reqBanner()
        multiRoute()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: appProposalBrightEliteFormat.map{bonTon(bird: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: private lazy var backView: UIView = {
    private lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: return view
        return view
        //: }()
    }()

    //: private lazy var bannerListData: [SocialAdBannerModel] = {
    private lazy var bannerListData: [HostBannerModel] = //: return Array<HostBannerModel>()
        .init()
    //: }()

    //: private lazy var bannerView: JXBanner = {
    private lazy var bannerView: JXBanner = {
        //: let banner = JXBanner()
        let banner = JXBanner()
        //: banner.backgroundColor = .clear
        banner.backgroundColor = .clear
        //: banner.placeholderImgView.image = UIImage.placeImgBanner()
        banner.placeholderImgView.image = UIImage.nearDelay()
        //: banner.delegate = self
        banner.delegate = self
        //: banner.dataSource = self
        banner.dataSource = self
        //: return banner
        return banner
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_chats_banner_subtract"), for: .normal)
        btn.setImage(UIImage.parentSet(name: (String(userReportUrl) + String(noti_nearbyEquityKey.prefix(3)) + appExceptionName.replacingOccurrences(of: "asset", with: "n") + "_sub" + noti_ofPath.replacingOccurrences(of: "man", with: "t"))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_chats_banner_subtract_pre"), for: .selected)
        btn.setImage(UIImage.parentSet(name: (String(show_footballName.prefix(5)) + "chats" + String(user_windowListenMessage.prefix(6)) + "r_su" + notiWriteUrl.replacingOccurrences(of: "extended", with: "t") + "ct_pre")), for: .selected)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(minimize), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Data

//: extension TalkingPrivateBannerView {
extension RecoverThen {
    /// banner
    //: func reqBanner() {
    func multiRoute() {
        //: SocialRequestManager.init().req_adBanner(position: 3) { [weak self] succeed, result, errorModel in
        RequestManager().inclusion(position: 3) { [weak self] _, result, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: let array = JSON(result["bannerList"] ?? []).arrayValue
            let array = JSON(result[(main_currencyText.lowercased() + String(const_moveDistrictTitle))] ?? []).arrayValue
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
            //: if self.bannerListData.count > 0 {
            if self.bannerListData.count > 0 {
                //: self.isHidden = false
                self.isHidden = false
                //: bannerView.reloadView()
                bannerView.reloadView()
                //: } else {
            } else {
                //: self.isHidden = true
                self.isHidden = true
            }
        }
    }
}

// MARK: - Event

//: extension TalkingPrivateBannerView {
extension RecoverThen {
    //: @objc private func closeBtnClick() {
    @objc private func minimize() {
        //: closeBtn.isSelected = !closeBtn.isSelected
        closeBtn.isSelected = !closeBtn.isSelected
        //: isMiniView = closeBtn.isSelected
        isMiniView = closeBtn.isSelected
        //: bannerView.reloadView()
        bannerView.reloadView()
        //: self.delegate?.changeBannerViewFream(isMiniView: isMiniView)
        self.delegate?.single(isMiniView: isMiniView)
    }

    //: func resetView(isMiniView: Bool) {
    func homeView(isMiniView: Bool) {
        //: if isMiniView {
        if isMiniView {
            //: bannerView.snp.remakeConstraints { make in
            bannerView.snp.remakeConstraints { make in
                //: make.leading.bottom.equalToSuperview()
                make.leading.bottom.equalToSuperview()
                //: make.top.equalTo(6)
                make.top.equalTo(6)
                //: make.trailing.equalTo(-6)
                make.trailing.equalTo(-6)
            }
            //: closeBtn.snp.remakeConstraints { make in
            closeBtn.snp.remakeConstraints { make in
                //: make.top.trailing.equalToSuperview()
                make.top.trailing.equalToSuperview()
                //: make.size.equalTo(16)
                make.size.equalTo(16)
            }
            //: } else {
        } else {
            //: bannerView.snp.remakeConstraints { make in
            bannerView.snp.remakeConstraints { make in
                //: make.leading.equalToSuperview()
                make.leading.equalToSuperview()
                //: make.top.equalTo(6)
                make.top.equalTo(6)
                //: make.size.equalTo(83)
                make.size.equalTo(83)
            }
            //: closeBtn.snp.remakeConstraints { make in
            closeBtn.snp.remakeConstraints { make in
                //: make.trailing.equalTo(-4)
                make.trailing.equalTo(-4)
                //: make.top.equalTo(0)
                make.top.equalTo(0)
                //: make.size.equalTo(16)
                make.size.equalTo(16)
            }
        }
    }
}

// MARK: - Delegete

//: extension TalkingPrivateBannerView: JXBannerDelegate, JXBannerDataSource {
extension RecoverThen: JXBannerDelegate, JXBannerDataSource {
    //: func jxBanner(_ banner: JXBannerType, params: JXBannerParams) -> JXBannerParams {
    func jxBanner(_: JXBannerType, params: JXBannerParams) -> JXBannerParams {
        //: params.timeInterval = 2
        params.timeInterval = 2
        //: return params
        return params
    }

    //: func jxBanner(_ banner: JXBannerType, layoutParams: JXBannerLayoutParams) -> JXBannerLayoutParams {
    func jxBanner(_: JXBannerType, layoutParams: JXBannerLayoutParams) -> JXBannerLayoutParams {
        //: layoutParams.scrollDirection = isMiniView ? .vertical : .horizontal
        layoutParams.scrollDirection = isMiniView ? .vertical : .horizontal
        //: return layoutParams
        return layoutParams
    }

    //: func jxBanner(_ banner: JXBannerType) -> (JXBannerCellRegister) {
    func jxBanner(_: JXBannerType) -> (JXBannerCellRegister) {
        //: return JXBannerCellRegister(type: JXBannerCell.self, reuseIdentifier: "JXBannerCellID")
        return JXBannerCellRegister(type: JXBannerCell.self, reuseIdentifier: (String(appArrowDebateStr.suffix(5)) + String(dataEngageBeautyUrl) + String(kBugReceiveId.suffix(6))))
    }

    //: func jxBanner(numberOfItems banner: JXBannerType) -> Int {
    func jxBanner(numberOfItems _: JXBannerType) -> Int {
        //: return self.bannerListData.count
        return self.bannerListData.count
    }

    //: func jxBanner(_ banner: JXBannerType, cellForItemAt index: Int, cell: UICollectionViewCell) -> UICollectionViewCell {
    func jxBanner(_: JXBannerType, cellForItemAt index: Int, cell: UICollectionViewCell) -> UICollectionViewCell {
        //: let tempCell: JXBannerCell = cell as! JXBannerCell
        let tempCell: JXBannerCell = cell as! JXBannerCell
        //: let model = self.bannerListData[index]
        let model = self.bannerListData[index]
        //: tempCell.backgroundColor = .clear
        tempCell.backgroundColor = .clear
        //: tempCell.msgBgView.backgroundColor = .clear
        tempCell.msgBgView.backgroundColor = .clear
        //: let url = self.isMiniView ? model.thumbnail:model.pic
        let url = self.isMiniView ? model.thumbnail : model.pic
        //: tempCell.imageView.setUrlImage(urlStr: url, placeImg: UIImage.placeImgSquare())
        tempCell.imageView.funReply(urlStr: url, placeImg: UIImage.ground())
        //: tempCell.imageView.contentMode = .scaleAspectFill
        tempCell.imageView.contentMode = .scaleAspectFill
        //: tempCell.imageView.layer.cornerRadius = 6
        tempCell.imageView.layer.cornerRadius = 6
        //: tempCell.imageView.layer.masksToBounds = true
        tempCell.imageView.layer.masksToBounds = true
        //: return cell
        return cell
    }

    //: func jxBanner(pageControl banner: JXBannerType,
    func jxBanner(pageControl _: JXBannerType,
                  //: numberOfPages: Int,
                  numberOfPages _: Int,
                  //: coverView: UIView,
                  coverView _: UIView,
                  //: builder: JXBannerPageControlBuilder) -> JXBannerPageControlBuilder {
                  builder: JXBannerPageControlBuilder) -> JXBannerPageControlBuilder
    {
        //: let pageControl = JXPageControlScale()
        let pageControl = JXPageControlScale()
        //: pageControl.contentMode = .bottom
        pageControl.contentMode = .bottom
        //: pageControl.activeSize = CGSize(width: 4, height: 4)
        pageControl.activeSize = CGSize(width: 4, height: 4)
        //: pageControl.activeColor = UIColor(hex: "#FFFFFF")!
        pageControl.activeColor = UIColor(hex: (String(noti_reportMessage.prefix(7))))!
        //: pageControl.inactiveSize = CGSize(width: 4, height: 4)
        pageControl.inactiveSize = CGSize(width: 4, height: 4)
        //: pageControl.inactiveColor = UIColor.init(white: 1, alpha: 0.4)
        pageControl.inactiveColor = UIColor(white: 1, alpha: 0.4)
        //: pageControl.columnSpacing = 6
        pageControl.columnSpacing = 6
        //: pageControl.isAnimation = true
        pageControl.isAnimation = true
        //: pageControl.isHidden = self.isMiniView
        pageControl.isHidden = self.isMiniView
        //: builder.pageControl = pageControl
        builder.pageControl = pageControl
        //: builder.layout = {
        builder.layout = {
            //: pageControl.snp.makeConstraints { make in
            pageControl.snp.makeConstraints { make in
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.bottom.equalToSuperview().offset(10)
                make.bottom.equalToSuperview().offset(10)
            }
        }
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ReadingLanguageManager.shared.direction == .rightToLeft {
            //: pageControl.transform = CGAffineTransform(scaleX: -1, y: 1)
            pageControl.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return builder
        return builder
    }

    // MARK: - JXBannerDelegate

    //: public func jxBanner(_ banner: JXBannerType,
    public func jxBanner(_: JXBannerType,
                         //: didSelectItemAt index: Int) {
                         didSelectItemAt index: Int)
    {
        //: let model = self.bannerListData[index]
        let model = self.bannerListData[index]
        //: SocialAdBannerModel.jumpEvent(model: model)
        HostBannerModel.bubble(model: model)
    }
}

// MARK: - LAyout

//: extension TalkingPrivateBannerView {
extension RecoverThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func shShape() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: self.addSubview(bannerView)
        self.addSubview(bannerView)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func stack() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: bannerView.snp.makeConstraints { make in
        bannerView.snp.makeConstraints { make in
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.top.equalTo(6)
            make.top.equalTo(6)
            //: make.size.equalTo(83)
            make.size.equalTo(83)
        }
        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-4)
            make.trailing.equalTo(-4)
            //: make.top.equalTo(0)
            make.top.equalTo(0)
            //: make.size.equalTo(16)
            make.size.equalTo(16)
        }
    }
}

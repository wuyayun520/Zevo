
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let noti_limitData:[UInt8] = [0x6,0x1,0x6,0x1b,0x47,0xc,0x0,0xb,0xa,0x1d,0x55,0x46,0x4f,0x7,0xe,0x1c,0x4f,0x1,0x0,0x1b,0x4f,0xd,0xa,0xa,0x1,0x4f,0x6,0x2,0x1f,0x3,0xa,0x2,0xa,0x1,0x1b,0xa,0xb]

/*: "icon_me_wallet" :*/
fileprivate let appStatementTitle:String = "representationo"
fileprivate let userUpUrl:String = "through match calculate move superiorn_me_w"

/*: "icon_me_dgc" :*/
fileprivate let user_pickTitle:String = "picturec"
fileprivate let appWomanContent:String = "on_mbound only procedure"

/*: "icon_me_friends" :*/
fileprivate let userPreserveMessage:[Character] = ["i","c","o","n","_","m","e","_","f","r","i","e","n","d"]
fileprivate let kGestureMessage:[Character] = ["s"]

/*: "xicon_me_posts" :*/
fileprivate let noti_alongPath:[Character] = ["x","i","c","o","n"]
fileprivate let appFloorUrl:[Character] = ["_","m","e","_","p","o","s","t","s"]

/*: "icon_me_Service" :*/
fileprivate let kScaleStr:[Character] = ["i","c","o","n","_","m","e","_","S","e","r","v","i","c","e"]

/*: "icon_me_game" :*/
fileprivate let const_welcomeValue:[Character] = ["i","c","o","n","_","m","e"]
fileprivate let app_increaseQuantityoFormMsg:String = "detailed addition rank level television_game"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PromiseCompartmentView.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeThreeColumnsCell: UITableViewCell {
class PromiseCompartmentView: UITableViewCell {
    //: private var tupleData = [(CenterItemType, String)]()
    private var tupleData = [(ShadeTextConvertible, String)]()
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        canSubviews()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: noti_limitData.map{$0^111}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.minimumLineSpacing = 0
        layout.minimumLineSpacing = 0
        //: layout.minimumInteritemSpacing = 0
        layout.minimumInteritemSpacing = 0
        //: layout.scrollDirection = .vertical
        layout.scrollDirection = .vertical
        //: let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        //: collectionView.backgroundColor = .white
        collectionView.backgroundColor = .white
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        //: collectionView.layer.cornerRadius = 6
        collectionView.layer.cornerRadius = 6
        //: collectionView.layer.masksToBounds = true
        collectionView.layer.masksToBounds = true
        //: collectionView.register(TalkingMeItemCell.self, forCellWithReuseIdentifier: TalkingMeItemCell.className())
        collectionView.register(AuthorViewCell.self, forCellWithReuseIdentifier: AuthorViewCell.className())
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: collectionView.contentInsetAdjustmentBehavior = .never
            collectionView.contentInsetAdjustmentBehavior = .never
        }
        //: return collectionView
        return collectionView
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeThreeColumnsCell {
extension PromiseCompartmentView {
    //: func setViewData() {
    func randomSample() {
        //: if CompositionReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue {
        if CompositionReactiveCompatible.share.appStatus == ColumnExInsetTarget.normal.rawValue { // 默认模式
            //: if CompositionReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue {
            if CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.female.rawValue { // 女性
                //: tupleData = [(.My_Wallet, "icon_me_wallet"),
                tupleData = [(.My_Wallet, (appStatementTitle.replacingOccurrences(of: "representation", with: "ic") + String(userUpUrl.suffix(6)) + "allet")),
                             //: (.Daily_Gold_Coins, "icon_me_dgc"),
                             (.Daily_Gold_Coins, (user_pickTitle.replacingOccurrences(of: "picture", with: "i") + String(appWomanContent.prefix(4)) + "e_dgc")),
                             //: (.Invite_Friends, "icon_me_friends"),
                             (.Invite_Friends, (String(userPreserveMessage) + String(kGestureMessage))),
                             //: (.My_Posts, "xicon_me_posts"),
                             (.My_Posts, (String(noti_alongPath) + String(appFloorUrl))),
                             //: (.My_Assistant, "icon_me_Service")]
                             (.My_Assistant, (String(kScaleStr)))]

                //: } else {
            } else {
                //: tupleData = [(.Daily_Gold_Coins, "icon_me_dgc"),
                tupleData = [(.Daily_Gold_Coins, (user_pickTitle.replacingOccurrences(of: "picture", with: "i") + String(appWomanContent.prefix(4)) + "e_dgc")),
                             //: (.Invite_Friends, "icon_me_friends"),
                             (.Invite_Friends, (String(userPreserveMessage) + String(kGestureMessage))),
                             //: (.My_Posts, "xicon_me_posts"),
                             (.My_Posts, (String(noti_alongPath) + String(appFloorUrl))),
                             //: (.My_Assistant, "icon_me_Service")]
                             (.My_Assistant, (String(kScaleStr)))]
            }
            // 游戏入口
            //: if CompositionReactiveCompatible.share.appUserConfigMode.gameShowBit == 1 ||
            if CompositionReactiveCompatible.share.appUserConfigMode.gameShowBit == 1 ||
                //: CompositionReactiveCompatible.share.appUserConfigMode.gameShowBit == 3 {
                CompositionReactiveCompatible.share.appUserConfigMode.gameShowBit == 3
            {
                //: tupleData.append((.My_Slots, "icon_me_game"))
                tupleData.append((.My_Slots, (String(const_welcomeValue) + String(app_increaseQuantityoFormMsg.suffix(5)))))
            }

            //: } else {
        } else { // 审核模式
            //: tupleData = [(.Daily_Gold_Coins, "icon_me_dgc"),
            tupleData = [(.Daily_Gold_Coins, (user_pickTitle.replacingOccurrences(of: "picture", with: "i") + String(appWomanContent.prefix(4)) + "e_dgc")),
                         //: (.My_Posts, "xicon_me_posts"),
                         (.My_Posts, (String(noti_alongPath) + String(appFloorUrl))),
                         //: (.My_Assistant, "icon_me_Service")]
                         (.My_Assistant, (String(kScaleStr)))]
        }

        //: self.collectionView.reloadData()
        self.collectionView.reloadData()
        //: setupSubViewsConstraint()
        factorIn()
    }
}

// MARK: - Delegate

//: extension TalkingMeThreeColumnsCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension PromiseCompartmentView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 1
        return 1
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return self.tupleData.count
        return self.tupleData.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingMeItemCell.className(), for: indexPath) as! TalkingMeItemCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AuthorViewCell.className(), for: indexPath) as! AuthorViewCell
        //: cell.refreshItem(tupleData[indexPath.row])
        cell.stopPublish(tupleData[indexPath.row])
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: let data = tupleData[indexPath.row]
        let data = tupleData[indexPath.row]
        //: switch data.0 {
        switch data.0 {
        //: case .My_Wallet:
        case .My_Wallet:
            //: SightReactiveCompatible.share.func__pushToWebVC(webViewType: .RechargeFullPage)
            SightReactiveCompatible.share.elementOfResume(webViewType: .RechargeFullPage)

        //: case .Daily_Gold_Coins:
        case .Daily_Gold_Coins:
            //: SightReactiveCompatible.share.func__pushToSubscribePageWebVC()
            SightReactiveCompatible.share.stripe()

        //: case .Invite_Friends:
        case .Invite_Friends:
            //: SightReactiveCompatible.share.func__pushToWebVC(webViewType: .InviteFriends)
            SightReactiveCompatible.share.elementOfResume(webViewType: .InviteFriends)

        //: case .My_Posts:
        case .My_Posts:
            //: let vc = TalkingUserMomentVC.init(uid: CompositionReactiveCompatible.share.loginUserMode.userID)
            let vc = BenchViewController(uid: CompositionReactiveCompatible.share.loginUserMode.userID)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.mediumSave()?.navigationController?.pushViewController(vc, animated: true)

        //: case .My_Assistant:
        case .My_Assistant:
            //: SightReactiveCompatible.share.func__pushToWebVC(webViewType: .FAQ)
            SightReactiveCompatible.share.elementOfResume(webViewType: .FAQ)

        //: case .My_Slots:
        case .My_Slots:
            //: let vc = TalkingGameListViewController()
            let vc = PercentageAgainFlowLayout()
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.mediumSave()?.navigationController?.pushViewController(vc, animated: true)

        //: default: break
        default: break
        }
    }

    // MARK: - UICollectionViewDelegateFlowLayout

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        //: return CGSize(width: (ScreenWidth-30)/3, height: 84.0)
        return CGSize(width: (user_needValue - 30) / 3, height: 84.0)
    }
}

// MARK: - Layout

//: extension TalkingMeThreeColumnsCell {
extension PromiseCompartmentView {
    /// 添加视图
    //: private func setupSubviews() {
    private func canSubviews() {
        //: self.contentView.addSubview(collectionView)
        self.contentView.addSubview(collectionView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func factorIn() {
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalToSuperview().offset(15)
            make.leading.equalToSuperview().offset(15)
            //: make.trailing.equalToSuperview().offset(-15)
            make.trailing.equalToSuperview().offset(-15)
            //: let height = ceil(Double(self.tupleData.count)/Double(3))*84+15
            let height = ceil(Double(self.tupleData.count) / Double(3)) * 84 + 15
            //: make.height.equalTo(height)
            make.height.equalTo(height)
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
    }
}

// MARK: - AuthorViewCell

//: class TalkingMeItemCell: UICollectionViewCell {
class AuthorViewCell: UICollectionViewCell {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: noti_limitData.map{$0^111}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: self.contentView.addSubview(icon)
        self.contentView.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(18)
            make.top.equalToSuperview().offset(18)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 38, height: 38))
            make.size.equalTo(CGSize(width: 38, height: 38))
        }

        //: self.contentView.addSubview(nameLab)
        self.contentView.addSubview(nameLab)
        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(8)
            make.top.equalTo(icon.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalToSuperview()
            make.width.equalToSuperview()
        }
    }

    /// 刷新
    //: func refreshItem(_ data: (CenterItemType, String)) {
    func stopPublish(_ data: (ShadeTextConvertible, String)) {
        //: nameLab.text = data.0.rawValue.localized
        nameLab.text = data.0.rawValue.localized
        //: icon.image = UIImage.BundleImageNamed(name: data.1)
        icon.image = UIImage.parentSet(name: data.1)
    }

    // MARK: - Lazy Laod

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: return icon
        return icon
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.antiquityColor()
        //: lab.font = .pingfangFont(type: .Regular, fontSize: 14)
        lab.font = .processAcross(type: .Regular, fontSize: 14)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}

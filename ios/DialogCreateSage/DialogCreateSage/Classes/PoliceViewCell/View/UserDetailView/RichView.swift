
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let dataRecordStr:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_userdetail_header_shadow" :*/
fileprivate let user_againstFormat:String = "motivation giant frank givenicon_u"
fileprivate let notiFormatTitle:String = "ail_heaaccelerate property"
fileprivate let constQuitTitle:String = "character half character register spyder_"

/*: "icon_lounge" :*/
fileprivate let user_progressPath:String = "promotion province manageicon_l"
fileprivate let noti_saleUrl:[Character] = ["o","u","n","g","e"]

/*: "Official" :*/
fileprivate let appTurkeyInjuryButtonMessage:String = "analysis"
fileprivate let showUpperValue:[Character] = ["f","f","i","c","i","a","l"]

/*: "Reviewing" :*/
fileprivate let show_starAtRecognizeKey:String = "bag promptReview"
fileprivate let constReaderText:String = "icalculation"

/*: "#FF506D" :*/
fileprivate let kHomeData:String = "#FF506however row"
fileprivate let noti_workMessage:[Character] = ["D"]

/*: "icon_user_detail_intimate_header" :*/
fileprivate let constStreetFormat:[UInt8] = [0xae,0xa4,0xa8,0xa9,0x98,0xb2,0xb4,0xa2,0xb5,0x98,0xa3,0xa2,0xb3,0xa6,0xae,0xab,0x98,0xae,0xa9,0xb3,0xae,0xaa,0xa6,0xb3,0xa2,0x98,0xaf,0xa2,0xa6,0xa3,0xa2,0xb5]

private func firstAble(sea num: UInt8) -> UInt8 {
    return num ^ 199
}

/*: "?toUid= :*/
fileprivate let noti_memberMsg:String = "?toUiexport than copy reason"
fileprivate let notiEstateName:[Character] = ["d","="]

/*: "StripeReactiveCompatible" :*/
fileprivate let data_profitTitle:String = "warning bigTUse"
fileprivate let noti_rangeNaturalId:String = "po commit via acceleratelHead"
fileprivate let kWorkFailMsg:[Character] = ["e","r","I","t","e","m","C","e","l","l"]

/*: "#FFFFFF" :*/
fileprivate let showScaleSecretName:String = "#Fweather copy"
fileprivate let mainSuccessPath:String = "picturepicturepicturepicturepicture"

/*: "#BDB8B5" :*/
fileprivate let dataBounceRateValue:String = "fatal deny#BDB8B5"

/*: "head_detail_bottom" :*/
fileprivate let showEstablishKey:[Character] = ["h","e","a","d","_","d"]
fileprivate let data_badStr:String = "sign transitionetail_"

/*: "#2DF2FF" :*/
fileprivate let userBubbleName:[Character] = ["#","2","D","F","2"]
fileprivate let constPowData:[Character] = ["F","F"]

/*: "Live" :*/
fileprivate let main_allowPath:String = "Liveeh capture super truth drown"

/*: "#48FF1E" :*/
fileprivate let app_modifyName:[Character] = ["#","4","8","F","F","1","E"]

/*: "Online" :*/
fileprivate let main_totMessage:[Character] = ["O"]
fileprivate let constSuccessfullyValue:String = "NLINE"

/*: "#FF4B7F" :*/
fileprivate let k_provideStr:String = "#FF4B7Fprovince police script"

/*: "busy" :*/
fileprivate let constProjectMessage:String = "buhappyy"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RichView.swift
//  AbroadTalking
//
//  Created by young on 2023/5/22.
//

//: import JXBanner
import JXBanner
//: import JXPageControl
import JXPageControl
//: import UIKit
import UIKit

//: let UserDetailHeaderView_H = (302.0+StatusBarHeight)
let constInviteValue = (302.0 + noti_guideRequestId)

//: class TalkingUserDetailHeaderView: UIView {
class RichView: UIView {
    //: var VideoCallBlock: (() -> Void)?
    var VideoCallBlock: (() -> Void)?
    //: private var userInfoModel = TalkingUserInfoModel()
    private var userInfoModel = ExecMeasurable()
    //: private var isPlaying = false
    private var isPlaying = false // 是否已经播放过视频封面

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: setupSubviews()
        laborParty()
        //: setupSubViewsConstraint()
        effective()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: dataRecordStr.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bannerView: JXBanner = {
    private lazy var bannerView: JXBanner = {
        //: let frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: UserDetailHeaderView_H)
        let frame = CGRect(x: 0, y: 0, width: user_needValue, height: constInviteValue)
        //: let view = JXBanner.init(frame: frame)
        let view = JXBanner(frame: frame)
        //: view.dataSource = self
        view.dataSource = self
        //: view.delegate = self
        view.delegate = self
        //: view.placeholderImgView.image = UIImage.placeImgBanner()
        view.placeholderImgView.image = UIImage.nearDelay()
        //: view.placeholderImgView.contentMode = .scaleAspectFill
        view.placeholderImgView.contentMode = .scaleAspectFill
        //: return view
        return view
        //: }()
    }()

    //: private lazy var dataArray: [String] = {
    private lazy var dataArray: [String] = //: return Array<String>()
        .init()
    //: }()

    //: private lazy var shadowBgView: UIImageView = {
    private lazy var shadowBgView: UIImageView = {
        //: let v = UIImageView(image: UIImage.BundleImageNamed(name: "icon_userdetail_header_shadow"))
        let v = UIImageView(image: UIImage.parentSet(name: (String(user_againstFormat.suffix(6)) + "serdet" + String(notiFormatTitle.prefix(7)) + String(constQuitTitle.suffix(4)) + "shadow")))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var vipBgView: UIImageView = {
    private lazy var vipBgView: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.frame = CGRect(x: 0, y: UserDetailHeaderView_H-15, width: ScreenWidth, height: 15)
        v.frame = CGRect(x: 0, y: constInviteValue - 15, width: user_needValue, height: 15)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var nicknameLab: UILabel = {
    private lazy var nicknameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 19)
        lab.font = UIFont.processAcross(type: .Medium, fontSize: 19)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ReadingLanguageManager.shared.direction == .rightToLeft {
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var loungeImgV: UIImageView = {
    private lazy var loungeImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_lounge")
        img.image = UIImage.parentSet(name: (String(user_progressPath.suffix(6)) + String(noti_saleUrl)))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var officalImgV: UIButton = {
    private lazy var officalImgV: UIButton = {
        //: let img = UIButton()
        let img = UIButton()
        //: img.setBackgroundColor(color: UIColor.msgTipsColor(), forState: .normal)
        img.mottle(color: UIColor.spendColor(), forState: .normal)
        //: img.setTitle("Official".localized, for: .normal)
        img.setTitle((appTurkeyInjuryButtonMessage.replacingOccurrences(of: "analysis", with: "O") + String(showUpperValue)).localized, for: .normal)
        //: img.setTitleColor(.white, for: .normal)
        img.setTitleColor(.white, for: .normal)
        //: img.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 11)
        img.titleLabel?.font = UIFont.joinSize(fontSize: 11)
        //: img.layer.cornerRadius = 8
        img.layer.cornerRadius = 8
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var onlineImgV: TalkingButton = {
    private lazy var onlineImgV: AfterView = {
        //: let img = TalkingButton()
        let img = AfterView()
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: img.spaceBetweenTitleAndImage = 2
        img.spaceBetweenTitleAndImage = 2
        //: img.setBackgroundImage(UIImage.imageFillColor(color: UIColor.init(red: 9/255.0 , green: 9/255.0 , blue: 9/255.0 , alpha: 0.3)), for: .normal)
        img.setBackgroundImage(UIImage.strengthOffRequest(color: UIColor(red: 9 / 255.0, green: 9 / 255.0, blue: 9 / 255.0, alpha: 0.3)), for: .normal)
        //: img.layer.cornerRadius = 8
        img.layer.cornerRadius = 8
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: img.setTitleColor(.white, for: .normal)
        img.setTitleColor(.white, for: .normal)
        //: img.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 12)
        img.titleLabel?.font = UIFont.counteraction(fontSize: 12)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var liveView: UserLivePullStreamsView = {
    private lazy var liveView: AgainMiniView = {
        //: let v = UserLivePullStreamsView()
        let v = AgainMiniView()
        //: v.isHidden = true
        v.isHidden = true
        //: v.playEndBlock = {
        v.playEndBlock = {
            //: v.isHidden = true
            v.isHidden = true
        }
        // 跳转到直播间
        //: v.tapGestureBlock = { [weak self] in
        v.tapGestureBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: SightReactiveCompatible.share.func_audiencePushToLiveRoomVC(uid: self.userInfoModel.uid, enterType: .userDetail)
            SightReactiveCompatible.share.qualityLevel(uid: self.userInfoModel.uid, enterType: .userDetail)
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var reViewingLB: UILabel = {
    private lazy var reViewingLB: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Reviewing".localized
        lb.text = (String(show_starAtRecognizeKey.suffix(6)) + constReaderText.replacingOccurrences(of: "calculation", with: "ng")).localized
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.backgroundColor = UIColor.init(hex: "#FF506D")
        lb.backgroundColor = UIColor(hex: (String(kHomeData.prefix(6)) + String(noti_workMessage)))
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.font = UIFont.pingfangMediumFont(fontSize: 12)
        lb.font = UIFont.counteraction(fontSize: 12)
        //: lb.layer.cornerRadius = 8
        lb.layer.cornerRadius = 8
        //: lb.layer.masksToBounds = true
        lb.layer.masksToBounds = true
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var lastLoginLab: UILabel = {
    lazy var lastLoginLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .pingfangFont(type: .Medium, fontSize: 12)
        lb.font = .processAcross(type: .Medium, fontSize: 12)
        //: lb.textColor = .white
        lb.textColor = .white
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var intimateImgV: UIImageView = {
    private lazy var intimateImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.layer.cornerRadius = 36
        img.layer.cornerRadius = 36
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: img.isHidden = true
        img.isHidden = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var intimateBtn: TalkingButton = {
    private lazy var intimateBtn: AfterView = {
        //: let btn = TalkingButton()
        let btn = AfterView()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_user_detail_intimate_header"), for: .normal)
        btn.setImage(UIImage.parentSet(name: String(bytes: constStreetFormat.map{firstAble(sea: $0)}, encoding: .utf8)!), for: .normal)
        //: btn.isHidden = true
        btn.isHidden = true
        //: btn.addTarget(self, action: #selector(intimateBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(nonetheless), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingUserDetailHeaderView {
extension RichView {
    /// 查看视频
    //: private func goToVideo() {
    private func positionClose() {
        //: let vc = TalkingMomentVideoVC.init(videoPath: self.userInfoModel.videoUrl)
        let vc = HostViewController(videoPath: self.userInfoModel.videoUrl)
        //: if CompositionReactiveCompatible.share.loginUid != self.userInfoModel.uid {
        if CompositionReactiveCompatible.share.loginUid != self.userInfoModel.uid {
            //: vc.videoCallBlock = { [weak self] in
            vc.videoCallBlock = { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: if self.VideoCallBlock != nil {
                if self.VideoCallBlock != nil {
                    //: self.VideoCallBlock!()
                    self.VideoCallBlock!()
                }
            }
        }
        //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
        self.mediumSave()?.navigationController?.pushViewController(vc, animated: true)
    }

    /// 查看相册
    //: private func goToPhoto(_ index: Int) {
    private func methodDigitiser(_ index: Int) {
        //: var tempArr: [TalkingMomentPhotoModel] = []
        var tempArr: [HostEvenPhotoModel] = []
        //: var model = TalkingMomentPhotoModel.init()
        var model = HostEvenPhotoModel()

        //: guard let tempArray = self.userInfoModel.gallery else { return }
        guard let tempArray = self.userInfoModel.gallery else { return }
        //: if !self.userInfoModel.headPic.isEmptyString {
        if !self.userInfoModel.headPic.isEmptyString {
            //: model.imgUrl = self.userInfoModel.headPic
            model.imgUrl = self.userInfoModel.headPic
            //: tempArr.append(model)
            tempArr.append(model)
        }
        //: for x in tempArray {
        for x in tempArray {
            //: model.imgUrl = x.url
            model.imgUrl = x.url
            //: model.imagePic = x.imagePic
            model.imagePic = x.imagePic
            //: tempArr.append(model)
            tempArr.append(model)
        }

        //: var currenModel = TalkingMomentModel.init()
        var currenModel = LivingMomentModel()
        //: currenModel.pic = tempArr
        currenModel.pic = tempArr
        //: currenModel.uid = self.userInfoModel.uid
        currenModel.uid = self.userInfoModel.uid
        //: currenModel.sex = self.userInfoModel.sex
        currenModel.sex = self.userInfoModel.sex
        //: let vc =  TalkingMomentPhotosVC.init(momentModel: currenModel, index: index, type: .normal)
        let vc = CompositionViewController(momentModel: currenModel, index: index, type: .normal)
        //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
        self.mediumSave()?.navigationController?.pushViewController(vc, animated: true)
    }

    //: @objc func intimateBtnClick() {
    @objc func nonetheless() {
        //: let url = TalkingWebManager.getFullUrl(urlType: .Intimate) + "?toUid=\(self.userInfoModel.uid)"
        let url = SceneManager.dropWith(urlType: .Intimate) + (String(noti_memberMsg.prefix(5)) + String(notiEstateName)) + "\(self.userInfoModel.uid)"
        //: SightReactiveCompatible.share.func__pushToWebVC(urlStr: url)
        SightReactiveCompatible.share.getConfig(urlStr: url)
    }
}

// MARK: - JXBannerDataSource

//: extension TalkingUserDetailHeaderView: JXBannerDataSource {
extension RichView: JXBannerDataSource {
    //: func jxBanner(numberOfItems banner: JXBannerType) -> Int {
    func jxBanner(numberOfItems _: JXBannerType) -> Int {
        //: return dataArray.count
        return dataArray.count
    }

    //: func jxBanner(_ banner: JXBannerType, params: JXBannerParams) -> JXBannerParams {
    func jxBanner(_: JXBannerType, params: JXBannerParams) -> JXBannerParams {
        //: return params.isAutoPlay(false)
        return params.isAutoPlay(false)
    }

    //: func jxBanner(_ banner: JXBannerType) -> (JXBannerCellRegister) {
    func jxBanner(_: JXBannerType) -> (JXBannerCellRegister) {
        //: return JXBannerCellRegister(type: TUserDetailHeaderItemCell.self, reuseIdentifier: "TUserDetailHeaderItemCell")
        return JXBannerCellRegister(type: StripeReactiveCompatible.self, reuseIdentifier: (String(data_profitTitle.suffix(4)) + "rDetai" + String(noti_rangeNaturalId.suffix(5)) + String(kWorkFailMsg)))
    }

    //: func jxBanner(_ banner: JXBannerType, cellForItemAt index: Int, cell: UICollectionViewCell) -> UICollectionViewCell {
    func jxBanner(_: JXBannerType, cellForItemAt index: Int, cell: UICollectionViewCell) -> UICollectionViewCell {
        //: let bannerCell = cell as! TUserDetailHeaderItemCell
        let bannerCell = cell as! StripeReactiveCompatible
        //: let urlStr = self.dataArray[index]
        let urlStr = self.dataArray[index]

        //: if index == 0 && userInfoModel.sex == Gender.female.rawValue && userInfoModel.videoUrl.count>1 {
        if index == 0 && userInfoModel.sex == ArrowGender.female.rawValue && userInfoModel.videoUrl.count > 1 { // 视频
            //: bannerCell.setVideoView()
            bannerCell.enablece()
            //: bannerCell.configModel(videoUrl: userInfoModel.videoUrl, imgUrl: userInfoModel.cover)
            bannerCell.textTheoryAcross(videoUrl: userInfoModel.videoUrl, imgUrl: userInfoModel.cover)
            //: if self.liveView.isHidden && isPlaying == false {
            if self.liveView.isHidden && isPlaying == false { // 没有直播画面 && 自动播放完视频后滑动到下一个
                //: bannerCell.setupPlayer()
                bannerCell.cap()
                //: bannerCell.playFinishBlock = { [weak self] in
                bannerCell.playFinishBlock = { [weak self] in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: self.isPlaying = true
                    self.isPlaying = true
                    //: if self.dataArray.count > 1 {
                    if self.dataArray.count > 1 {
                        //: self.bannerView.scrollToIndex(1, animated: true)
                        self.bannerView.scrollToIndex(1, animated: true)
                    }
                }
            }

            //: } else {
        } else { // 图片
            //: bannerCell.setImageView()
            bannerCell.file()
            //: bannerCell.bgImgView.setUrlImage(urlStr: urlStr, placeImg: UIImage.placeSquareBigImgBanner())
            bannerCell.bgImgView.funReply(urlStr: urlStr, placeImg: UIImage.constituent())
        }

        //: return bannerCell
        return bannerCell
    }

    //: func jxBanner(_ banner: JXBannerType, centerIndex: Int, centerCell: UICollectionViewCell) {
    func jxBanner(_: JXBannerType, centerIndex: Int, centerCell _: UICollectionViewCell) {
        //: guard userInfoModel.uid == CompositionReactiveCompatible.share.loginUid else {
        guard userInfoModel.uid == CompositionReactiveCompatible.share.loginUid else {
            //: return
            return
        }
        //: let urlStr = self.dataArray[centerIndex]
        let urlStr = self.dataArray[centerIndex]
        //: if centerIndex == 0 && userInfoModel.videoUrl.count>1 {
        if centerIndex == 0 && userInfoModel.videoUrl.count > 1 { // 视频
            //: reViewingLB.isHidden = !userInfoModel.coverVideoReviewing
            reViewingLB.isHidden = !userInfoModel.coverVideoReviewing
            //: } else {
        } else { // 图片
            // 头像
            //: if userInfoModel.videoUrl.count > 1 && centerIndex == 1 && !userInfoModel.headPic.isEmptyString {
            if userInfoModel.videoUrl.count > 1 && centerIndex == 1 && !userInfoModel.headPic.isEmptyString {
                //: reViewingLB.isHidden = !userInfoModel.headPicReviewing
                reViewingLB.isHidden = !userInfoModel.headPicReviewing
                //: } else if centerIndex == 0 && !userInfoModel.headPic.isEmptyString {
            } else if centerIndex == 0 && !userInfoModel.headPic.isEmptyString {
                //: reViewingLB.isHidden = !userInfoModel.headPicReviewing
                reViewingLB.isHidden = !userInfoModel.headPicReviewing
                //: } else {
            } else {
                // 相册
                //: let tempArray = userInfoModel.gallery
                let tempArray = userInfoModel.gallery
                //: if tempArray?.count ?? 0 > 0 {
                if tempArray?.count ?? 0 > 0 {
                    //: for model in tempArray! {
                    for model in tempArray! {
                        //: if model.url == urlStr {
                        if model.url == urlStr {
                            //: reViewingLB.isHidden = !(model.status == 1)
                            reViewingLB.isHidden = !(model.status == 1)
                            //: break
                            break
                        }
                    }
                }
            }
        }
    }

    //: func jxBanner(pageControl banner: JXBannerType, numberOfPages: Int, coverView: UIView, builder: JXBannerPageControlBuilder) -> JXBannerPageControlBuilder {
    func jxBanner(pageControl _: JXBannerType, numberOfPages _: Int, coverView: UIView, builder: JXBannerPageControlBuilder) -> JXBannerPageControlBuilder {
        //: let pageControl = JXPageControlFill()
        let pageControl = JXPageControlFill()
        //: pageControl.contentMode = .bottom
        pageControl.contentMode = .bottom
        //: pageControl.activeColor = UIColor(hex: "#FFFFFF")!
        pageControl.activeColor = UIColor(hex: (String(showScaleSecretName.prefix(2)) + mainSuccessPath.replacingOccurrences(of: "picture", with: "F")))!
        //: pageControl.inactiveColor = UIColor(hex: "#BDB8B5")!
        pageControl.inactiveColor = UIColor(hex: (String(dataBounceRateValue.suffix(7))))!
        //: pageControl.columnSpacing = 8
        pageControl.columnSpacing = 8
        //: builder.pageControl = pageControl
        builder.pageControl = pageControl
        //: builder.layout = {
        builder.layout = {
            //: pageControl.snp.makeConstraints { (maker) in
            pageControl.snp.makeConstraints { maker in
                //: maker.leading.trailing.equalTo(coverView)
                maker.leading.trailing.equalTo(coverView)
                //: maker.top.equalTo(coverView.snp.bottom).offset(-80)
                maker.top.equalTo(coverView.snp.bottom).offset(-80)
                //: maker.height.equalTo(10)
                maker.height.equalTo(10)
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
}

// MARK: - JXBannerDelegate

//: extension TalkingUserDetailHeaderView: JXBannerDelegate {
extension RichView: JXBannerDelegate {
    //: public func jxBanner(_ banner: JXBannerType, didSelectItemAt index: Int) {
    public func jxBanner(_: JXBannerType, didSelectItemAt index: Int) {
        //: if index == 0 && userInfoModel.sex == Gender.female.rawValue && userInfoModel.videoUrl.count>1 {
        if index == 0 && userInfoModel.sex == ArrowGender.female.rawValue && userInfoModel.videoUrl.count > 1 {
            //: goToVideo()
            positionClose()

            //: } else {
        } else {
            //: var curren = index
            var curren = index
            //: if userInfoModel.sex == Gender.female.rawValue && userInfoModel.videoUrl.count>1 && curren > 0 {
            if userInfoModel.sex == ArrowGender.female.rawValue && userInfoModel.videoUrl.count > 1 && curren > 0 {
                //: curren -= 1
                curren -= 1
            }
            //: goToPhoto(curren)
            methodDigitiser(curren)
        }
    }

    //: func jxBanner(_ banner: JXBannerType, center index: Int) {
    func jxBanner(_: JXBannerType, center _: Int) {}
}

// MARK: - Layout

//: extension TalkingUserDetailHeaderView {
extension RichView {
    /// 刷新
    //: func refreshView(_ userModel: TalkingUserInfoModel) {
    func nearRefresh(_ userModel: ExecMeasurable) {
        //: userInfoModel = userModel
        userInfoModel = userModel
        //: dataArray.removeAll()
        dataArray.removeAll()
        //: if !userInfoModel.headPic.isEmptyString {
        if !userInfoModel.headPic.isEmptyString {
            //: dataArray.append(userInfoModel.headPic)
            dataArray.append(userInfoModel.headPic)
        }
        //: guard let tempArray = userModel.gallery else { return }
        guard let tempArray = userModel.gallery else { return }
        //: for model in tempArray {
        for model in tempArray {
            //: self.dataArray.append(model.url)
            self.dataArray.append(model.url)
        }
        //: if self.dataArray.isEmpty == true {
        if self.dataArray.isEmpty == true {
            //: self.dataArray.append(userModel.headPic)
            self.dataArray.append(userModel.headPic)
        }
        //: if userModel.sex == Gender.female.rawValue && userModel.videoUrl.count>1 {
        if userModel.sex == ArrowGender.female.rawValue && userModel.videoUrl.count > 1 {
            //: self.dataArray.insert(userModel.videoUrl, at: 0)
            self.dataArray.insert(userModel.videoUrl, at: 0)
        }
        //: bannerView.reloadView()
        bannerView.reloadView()
        // vip
        //: let normalImg = UIImage.BundleImageNamed(name: "head_detail_bottom").withTintColor(.white)
        let normalImg = UIImage.parentSet(name: (String(showEstablishKey) + String(data_badStr.suffix(6)) + "bottom")).withTintColor(.white)
        //: if userModel.loungePlus {
        if userModel.loungePlus {
            //: if let vipModel = CompositionReactiveCompatible.share.appUserConfigMode.vipSetting.filter({$0.vipSkinId == userModel.vipSkinId}).first {
            if let vipModel = CompositionReactiveCompatible.share.appUserConfigMode.vipSetting.filter({ $0.vipSkinId == userModel.vipSkinId }).first {
                //: vipBgView.setUrlImage(urlStr: vipModel.vipSkinTop, placeImg: normalImg)
                vipBgView.funReply(urlStr: vipModel.vipSkinTop, placeImg: normalImg)
            }
            //: } else {
        } else {
            //: self.vipBgView.image = normalImg
            self.vipBgView.image = normalImg
        }

        //: self.nicknameLab.textColor = userModel.loungePlus ? .userVipColor():.white
        self.nicknameLab.textColor = userModel.loungePlus ? .colorful() : .white
        //: self.nicknameLab.text = userModel.nickname
        self.nicknameLab.text = userModel.nickname
        //: self.loungeImgV.isHidden = !userModel.loungePlus
        self.loungeImgV.isHidden = !userModel.loungePlus
        //: self.officalImgV.isHidden = !userModel.isOfficial
        self.officalImgV.isHidden = !userModel.isOfficial
        //: self.lastLoginLab.text = userModel.lastOnlineTime
        self.lastLoginLab.text = userModel.lastOnlineTime
        //: self.lastLoginLab.isHidden = userModel.lastOnlineTime.isEmptyString == true || userModel.onlineStatus != 0
        self.lastLoginLab.isHidden = userModel.lastOnlineTime.isEmptyString == true || userModel.onlineStatus != 0
        //: self.loungeImgV.snp.updateConstraints { make in
        self.loungeImgV.snp.updateConstraints { make in
            //: make.leading.equalTo(nicknameLab.snp.trailing).offset(self.loungeImgV.isHidden == true ? 0:2)
            make.leading.equalTo(nicknameLab.snp.trailing).offset(self.loungeImgV.isHidden == true ? 0 : 2)
            //: make.width.equalTo(self.loungeImgV.isHidden == true ? 0:20)
            make.width.equalTo(self.loungeImgV.isHidden == true ? 0 : 20)
        }
        //: self.officalImgV.snp.remakeConstraints { make in
        self.officalImgV.snp.remakeConstraints { make in
            //: make.centerY.equalTo(nicknameLab)
            make.centerY.equalTo(nicknameLab)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.leading.equalTo(loungeImgV.snp.trailing).offset(self.officalImgV.isHidden == true ? 0:4)
            make.leading.equalTo(loungeImgV.snp.trailing).offset(self.officalImgV.isHidden == true ? 0 : 4)
            //: if self.officalImgV.isHidden {
            if self.officalImgV.isHidden {
                //: make.width.equalTo(0)
                make.width.equalTo(0)
                //: } else {
            } else {
                //: make.width.greaterThanOrEqualTo(50)
                make.width.greaterThanOrEqualTo(50)
            }
        }

        //: if userModel.intimateUrl.count > 0 {
        if userModel.intimateUrl.count > 0 {
            //: intimateImgV.isHidden = false
            intimateImgV.isHidden = false
            //: intimateBtn.isHidden = false
            intimateBtn.isHidden = false
            //: intimateImgV.setUrlImage(urlStr: userModel.intimateUrl)
            intimateImgV.agreeFinish(urlStr: userModel.intimateUrl)
        }
        // 在线状态
        //: if userModel.livePlayUrl.count > 0 {
        if userModel.livePlayUrl.count > 0 {
            //: onlineImgV.isHidden = false
            onlineImgV.isHidden = false
            //: let image = UIImage.imageFillColor(color: UIColor.init(hex: "#2DF2FF")!, size: CGSize.init(width: 8, height: 8))
            let image = UIImage.plough(color: UIColor(hex: (String(userBubbleName) + String(constPowData)))!, size: CGSize(width: 8, height: 8))
            //: onlineImgV.setImage(image.draw(), for: .normal)
            onlineImgV.setImage(image.draw(), for: .normal)
            //: onlineImgV.setTitle("Live".localized, for: .normal)
            onlineImgV.setTitle((String(main_allowPath.prefix(4))).localized, for: .normal)

            //: } else if userModel.onlineStatus == 1 {
        } else if userModel.onlineStatus == 1 {
            //: onlineImgV.isHidden = false
            onlineImgV.isHidden = false
            //: let image = UIImage.imageFillColor(color: UIColor.init(hex: "#48FF1E")!, size: CGSize.init(width: 8, height: 8))
            let image = UIImage.plough(color: UIColor(hex: (String(app_modifyName)))!, size: CGSize(width: 8, height: 8))
            //: onlineImgV.setImage(image.draw(), for: .normal)
            onlineImgV.setImage(image.draw(), for: .normal)
            //: onlineImgV.setTitle("Online".localized, for: .normal)
            onlineImgV.setTitle((String(main_totMessage) + constSuccessfullyValue.lowercased()).localized, for: .normal)

            //: } else if userModel.onlineStatus == 2 {
        } else if userModel.onlineStatus == 2 {
            //: onlineImgV.isHidden = false
            onlineImgV.isHidden = false
            //: let image = UIImage.imageFillColor(color: UIColor.init(hex: "#FF4B7F")!, size: CGSize.init(width: 8, height: 8))
            let image = UIImage.plough(color: UIColor(hex: (String(k_provideStr.prefix(7))))!, size: CGSize(width: 8, height: 8))
            //: onlineImgV.setImage(image.draw(), for: .normal)
            onlineImgV.setImage(image.draw(), for: .normal)
            //: onlineImgV.setTitle("busy".localized, for: .normal)
            onlineImgV.setTitle((constProjectMessage.replacingOccurrences(of: "happy", with: "s")).localized, for: .normal)
            //: } else {
        } else {
            //: onlineImgV.isHidden = true
            onlineImgV.isHidden = true
        }

        //: let text: NSString = onlineImgV.titleLabel?.text as? NSString ?? ""
        let text: NSString = onlineImgV.titleLabel?.text as? NSString ?? ""
        //: let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.pingfangMediumFont(fontSize: 12)], context: nil)
        let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.counteraction(fontSize: 12)], context: nil)
        //: onlineImgV.snp.remakeConstraints { make in
        onlineImgV.snp.remakeConstraints { make in
            //: make.leading.equalTo(officalImgV.snp.trailing).offset(4)
            make.leading.equalTo(officalImgV.snp.trailing).offset(4)
            //: make.centerY.equalTo(nicknameLab)
            make.centerY.equalTo(nicknameLab)
            //: make.width.equalTo(rect.width + 20)
            make.width.equalTo(rect.width + 20)
        }

        // 直播
        //: if CompositionReactiveCompatible.share.loginUid != userModel.uid &&
        if CompositionReactiveCompatible.share.loginUid != userModel.uid,
           //: userModel.livePlayUrl.count > 0 {
           userModel.livePlayUrl.count > 0
        {
            //: liveView.isHidden = false
            liveView.isHidden = false
            //: } else {
        } else {
            //: liveView.isHidden = true
            liveView.isHidden = true
        }
        //: if liveView.isHidden == false {
        if liveView.isHidden == false {
            //: liveView.setupPlayer(liveUrl: userModel.livePlayUrl)
            liveView.topNorth(liveUrl: userModel.livePlayUrl)
        }
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func laborParty() {
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: self.addSubview(bannerView)
        self.addSubview(bannerView)
        //: self.addSubview(shadowBgView)
        self.addSubview(shadowBgView)
        //: self.addSubview(liveView)
        self.addSubview(liveView)
        //: bannerView.addSubview(reViewingLB)
        bannerView.addSubview(reViewingLB)
        //: shadowBgView.addSubview(nicknameLab)
        shadowBgView.addSubview(nicknameLab)
        //: shadowBgView.addSubview(loungeImgV)
        shadowBgView.addSubview(loungeImgV)
        //: shadowBgView.addSubview(officalImgV)
        shadowBgView.addSubview(officalImgV)
        //: shadowBgView.addSubview(onlineImgV)
        shadowBgView.addSubview(onlineImgV)
        //: shadowBgView.addSubview(lastLoginLab)
        shadowBgView.addSubview(lastLoginLab)
        //: self.addSubview(vipBgView)
        self.addSubview(vipBgView)
        //: self.addSubview(intimateImgV)
        self.addSubview(intimateImgV)
        //: self.addSubview(intimateBtn)
        self.addSubview(intimateBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func effective() {
        //: liveView.snp.makeConstraints { make in
        liveView.snp.makeConstraints { make in
            //: make.trailing.equalToSuperview()
            make.trailing.equalToSuperview()
            //: make.top.equalTo(StatusBarHeight+80)
            make.top.equalTo(noti_guideRequestId + 80)
            //: make.size.equalTo(liveView.bounds.size)
            make.size.equalTo(liveView.bounds.size)
        }
        //: shadowBgView.snp.makeConstraints { make in
        shadowBgView.snp.makeConstraints { make in
            //: make.leading.bottom.trailing.equalToSuperview()
            make.leading.bottom.trailing.equalToSuperview()
            //: make.height.equalTo(86)
            make.height.equalTo(86)
        }
        //: self.nicknameLab.snp.makeConstraints { make in
        self.nicknameLab.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.bottom.equalTo(-32)
            make.bottom.equalTo(-32)
            //: make.width.lessThanOrEqualTo(220)
            make.width.lessThanOrEqualTo(220)
        }
        //: self.loungeImgV.snp.makeConstraints { make in
        self.loungeImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(nicknameLab.snp.trailing).offset(2)
            make.leading.equalTo(nicknameLab.snp.trailing).offset(2)
            //: make.centerY.equalTo(nicknameLab)
            make.centerY.equalTo(nicknameLab)
            //: make.width.equalTo(20)
            make.width.equalTo(20)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: self.officalImgV.snp.makeConstraints { make in
        self.officalImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(loungeImgV.snp.trailing).offset(4)
            make.leading.equalTo(loungeImgV.snp.trailing).offset(4)
            //: make.centerY.equalTo(nicknameLab)
            make.centerY.equalTo(nicknameLab)
            //: make.width.greaterThanOrEqualTo(50)
            make.width.greaterThanOrEqualTo(50)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
        }
        //: self.onlineImgV.snp.makeConstraints { make in
        self.onlineImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(officalImgV.snp.trailing).offset(4)
            make.leading.equalTo(officalImgV.snp.trailing).offset(4)
            //: make.centerY.equalTo(nicknameLab)
            make.centerY.equalTo(nicknameLab)
            //: make.width.equalTo(53)
            make.width.equalTo(53)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
        }
        //: lastLoginLab.snp.makeConstraints { make in
        lastLoginLab.snp.makeConstraints { make in
            //: make.leading.equalTo(officalImgV.snp.trailing).offset(4)
            make.leading.equalTo(officalImgV.snp.trailing).offset(4)
            //: make.centerY.equalTo(onlineImgV)
            make.centerY.equalTo(onlineImgV)
            //: make.width.equalTo(200)
            make.width.equalTo(200)
        }
        //: reViewingLB.snp.makeConstraints { make in
        reViewingLB.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalToSuperview().offset(StatusBarHeight+15)
            make.top.equalToSuperview().offset(noti_guideRequestId + 15)
            //: make.size.equalTo(CGSize.init(width: 65, height: 16))
            make.size.equalTo(CGSize(width: 65, height: 16))
        }

        //: intimateBtn.snp.makeConstraints { make in
        intimateBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-4)
            make.trailing.equalTo(-4)
            //: make.bottom.equalToSuperview().offset(-6)
            make.bottom.equalToSuperview().offset(-6)
            //: make.size.equalTo(94)
            make.size.equalTo(94)
        }

        //: intimateImgV.snp.makeConstraints { make in
        intimateImgV.snp.makeConstraints { make in
            //: make.center.equalTo(intimateBtn)
            make.center.equalTo(intimateBtn)
            //: make.size.equalTo(72)
            make.size.equalTo(72)
        }
    }
}


//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let data_signalKitBoneKey:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "More attractive photo more calls" :*/
fileprivate let notiExMessage:[UInt8] = [0x73,0x6c,0x6c,0x61,0x63,0x20,0x65,0x72,0x6f,0x6d,0x20,0x6f,0x74,0x6f,0x68,0x70,0x20,0x65,0x76,0x69,0x74,0x63,0x61,0x72,0x74,0x74,0x61,0x20,0x65,0x72,0x6f,0x4d]

/*: "Upload any photo you like" :*/
fileprivate let notiSpherePath:String = "Uplodialog kind live acquisition"
fileprivate let data_componentFormat:String = "action frank lab pho"
fileprivate let k_remindTitle:String = "ikhand"

/*: "F4F4F4" :*/
fileprivate let showPriseData:String = "f4f4f4"

/*: "btn_add_head_cover_nor" :*/
fileprivate let data_compriseKey:String = "overlook very enough memberbtn_"
fileprivate let appHourSortAdviceTitle:[Character] = ["h","e","a","d","_","c"]
fileprivate let mainRangeTitle:String = "over_northeory ember"

/*: "Please upload a clear and beautiful photo of yourself" :*/
fileprivate let appAppearData:[UInt8] = [0xd1,0xed,0xe4,0xe0,0xf2,0xe4,0xa1,0xf4,0xf1,0xed,0xee,0xe0,0xe5,0xa1,0xe0,0xa1,0xe2,0xed,0xe4,0xe0,0xf3,0xa1,0xe0,0xef,0xe5,0xa1,0xe3,0xe4,0xe0,0xf4,0xf5,0xe8,0xe7,0xf4,0xed,0xa1,0xf1,0xe9,0xee,0xf5,0xee,0xa1,0xee,0xe7,0xa1,0xf8,0xee,0xf4,0xf3,0xf2,0xe4,0xed,0xe7]

private func farOther(click num: UInt8) -> UInt8 {
    return num ^ 129
}

/*: "No violence, pornography, or politics allowed" :*/
fileprivate let noti_makeSessionUrl:[UInt8] = [0x5,0x24,0x6b,0x3d,0x22,0x24,0x27,0x2e,0x25,0x28,0x2e,0x67,0x6b,0x3b,0x24,0x39,0x25,0x24,0x2c,0x39,0x2a,0x3b,0x23,0x32,0x67,0x6b,0x24,0x39,0x6b,0x3b,0x24,0x27,0x22,0x3f,0x22,0x28,0x38,0x6b,0x2a,0x27,0x27,0x24,0x3c,0x2e,0x2f]

private func stallCuteNotice(board num: UInt8) -> UInt8 {
    return num ^ 75
}

/*: "Next" :*/
fileprivate let noti_endCountoBagKey:String = "Nextfunction load tell attach"

/*: "edit_head_Image_male_ :*/
fileprivate let main_computeValue:String = "edit_haddress program"
fileprivate let notiDareFormat:String = "occur my bug domain individuale_male_"

/*: "edit_head_Image_ :*/
fileprivate let constProperlyMsg:[Character] = ["e","d","i","t","_","h","e","a","d","_","I","m","a","g","e","_"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OptPhotoView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/24.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditPhotoView: UIView {
class OptPhotoView: UIView {
    //: typealias InfoActionBlock = (_ type: EditInfoType) -> Void
    typealias InfoActionBlock = (_ type: BroadInfoType) -> Void

    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var btnBlock: InfoActionBlock?
    var btnBlock: InfoActionBlock?

    //: private var nameCount: Int = 20
    private var nameCount: Int = 20

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white

        //: self.setupSubviews()
        self.combine()
        //: self.setupSubViewsConstraint()
        self.chin()
        //: self.bindInteraction()
        self.sumerplay()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: data_signalKitBoneKey.reversed(), encoding: .utf8)!)
    }

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView.init()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var tipsLab: UILabel = {
    lazy var tipsLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .processAcross(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .antiquityColor()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: if CompositionReactiveCompatible.share.userFillInfoMode.sex == Gender.female.rawValue {
        if CompositionReactiveCompatible.share.userFillInfoMode.sex == ArrowGender.female.rawValue {
            //: label.text = "More attractive photo more calls".localized
            label.text = String(bytes: notiExMessage.reversed(), encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "Upload any photo you like".localized
            label.text = (String(notiSpherePath.prefix(4)) + "ad any" + String(data_componentFormat.suffix(4)) + "to you l" + k_remindTitle.replacingOccurrences(of: "hand", with: "e")).localized
        }
        //: return label
        return label
        //: }()
    }()

    //: lazy var addHeadButton: UIButton = {
    lazy var addHeadButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = UIColor(hex: "F4F4F4")
        btn.backgroundColor = UIColor(hex: (showPriseData.uppercased()))
        //: btn.layer.cornerRadius = 5
        btn.layer.cornerRadius = 5
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true

        //: let headImg = CompositionReactiveCompatible.share.userFillInfoMode.headImage ?? nil
        let headImg = CompositionReactiveCompatible.share.userFillInfoMode.headImage ?? nil
        //: if headImg != nil {
        if headImg != nil {
            //: btn.setImage(headImg, for: .normal)
            btn.setImage(headImg, for: .normal)
            //: } else {
        } else {
            //: btn.setImage(UIImage.BundleImageNamed(name: "btn_add_head_cover_nor"), for: .normal)
            btn.setImage(UIImage.parentSet(name: (String(data_compriseKey.suffix(4)) + "add_" + String(appHourSortAdviceTitle) + String(mainRangeTitle.prefix(8)))), for: .normal)
        }
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var msgLab: UILabel = {
    lazy var msgLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .processAcross(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueColor()
        label.textColor = .submaxilla()
        //: if CompositionReactiveCompatible.share.userFillInfoMode.sex == Gender.female.rawValue {
        if CompositionReactiveCompatible.share.userFillInfoMode.sex == ArrowGender.female.rawValue {
            //: label.text = "Please upload a clear and beautiful photo of yourself".localized
            label.text = String(bytes: appAppearData.map{farOther(click: $0)}, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "No violence, pornography, or politics allowed".localized
            label.text = String(bytes: noti_makeSessionUrl.map{stallCuteNotice(board: $0)}, encoding: .utf8)!.localized
        }
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: return label
        return label
        //: }()
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.processAcross(type: .Medium, fontSize: 17)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle((String(noti_endCountoBagKey.prefix(4))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.keyLocal(colors: UIColor.sumerpretation(), size: CGSize(width: user_needValue - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Layout

//: extension TalkingLoginEditPhotoView {
extension OptPhotoView {
    // 添加视图
    //: private func setupSubviews() {
    private func combine() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(tipsLab)
        contentView.addSubview(tipsLab)
        //: contentView.addSubview(addHeadButton)
        contentView.addSubview(addHeadButton)
        //: contentView.addSubview(commitButton)
        contentView.addSubview(commitButton)
        //: contentView.addSubview(msgLab)
        contentView.addSubview(msgLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func chin() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: tipsLab.snp.makeConstraints { make in
        tipsLab.snp.makeConstraints { make in
            //: make.leading.equalTo(24)
            make.leading.equalTo(24)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
            //: make.top.equalTo(34)
            make.top.equalTo(34)
        }

        //: addHeadButton.snp.makeConstraints { make in
        addHeadButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(159)
            make.width.height.equalTo(159)
            //: make.top.equalTo(tipsLab.snp.bottom).offset(34)
            make.top.equalTo(tipsLab.snp.bottom).offset(34)
        }

        //: let imgWidth: CGFloat = (ScreenWidth - 76) / 3.0
        let imgWidth: CGFloat = (user_needValue - 76) / 3.0
        //: let imgHeight: CGFloat = imgWidth
        let imgHeight: CGFloat = imgWidth

        //: for i in 0 ..< 3 {
        for i in 0 ..< 3 {
            //: let imageView = UIImageView.init()
            let imageView = UIImageView()
            //: if CompositionReactiveCompatible.share.userFillInfoMode.sex == "1" {
            if CompositionReactiveCompatible.share.userFillInfoMode.sex == "1" {
                //: imageView.image = UIImage.BundleImageNamed(name: "edit_head_Image_male_\(i)")
                imageView.image = UIImage.parentSet(name: (String(main_computeValue.prefix(6)) + "ead_Imag" + String(notiDareFormat.suffix(7))) + "\(i)")
                //: } else {
            } else {
                //: imageView.image = UIImage.BundleImageNamed(name: "edit_head_Image_\(i)")
                imageView.image = UIImage.parentSet(name: (String(constProperlyMsg)) + "\(i)")
            }
            //: contentView.addSubview(imageView)
            contentView.addSubview(imageView)
            //: imageView.snp.makeConstraints { make in
            imageView.snp.makeConstraints { make in
                //: make.top.equalTo(addHeadButton.snp.bottom).offset(30)
                make.top.equalTo(addHeadButton.snp.bottom).offset(30)
                //: make.leading.equalTo(30 + (imgWidth+8)*CGFloat(i))
                make.leading.equalTo(30 + (imgWidth + 8) * CGFloat(i))
                //: make.width.equalTo(imgWidth)
                make.width.equalTo(imgWidth)
                //: make.height.equalTo(imgHeight)
                make.height.equalTo(imgHeight)
            }
        }
        //: msgLab.snp.makeConstraints { make in
        msgLab.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.top.equalTo(addHeadButton.snp.bottom).offset(146)
            make.top.equalTo(addHeadButton.snp.bottom).offset(146)
        }

        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(msgLab.snp.bottom).offset(30)
            make.top.equalTo(msgLab.snp.bottom).offset(30)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func sumerplay() {
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.Finish)
                    self.btnBlock!(.Finish)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: addHeadButton.rx.tap
        addHeadButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.HeadPic)
                    self.btnBlock!(.HeadPic)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}

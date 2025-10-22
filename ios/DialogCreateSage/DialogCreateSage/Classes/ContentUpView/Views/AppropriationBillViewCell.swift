
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainSourceKey:[UInt8] = [0xea,0xed,0xea,0xf7,0xab,0xe0,0xec,0xe7,0xe6,0xf1,0xb9,0xaa,0xa3,0xeb,0xe2,0xf0,0xa3,0xed,0xec,0xf7,0xa3,0xe1,0xe6,0xe6,0xed,0xa3,0xea,0xee,0xf3,0xef,0xe6,0xee,0xe6,0xed,0xf7,0xe6,0xe7]

private func takePlaceUniform(spec num: UInt8) -> UInt8 {
    return num ^ 131
}

/*: "icon_rank_coin" :*/
fileprivate let notiChannelStr:[UInt8] = [0x73,0x79,0x75,0x74,0x45,0x68,0x7b,0x74,0x71,0x45,0x79,0x75,0x73,0x74]

private func renderSession(skirt num: UInt8) -> UInt8 {
    return num ^ 26
}

/*: "icon_lounge" :*/
fileprivate let notiTelevisionMessage:String = "tip"
fileprivate let appFourPath:String = "con_llay err"

/*: "icon_rank_coin2" :*/
fileprivate let show_beautyFormat:[Character] = ["i","c","o","n","_","r","a","n","k","_","c","o","i","n"]
fileprivate let appBankFunStr:String = "effective"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AppropriationBillViewCell.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class SocialRankListViewCell: UITableViewCell {
class AppropriationBillViewCell: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: self.contentView.backgroundColor = .white
        self.contentView.backgroundColor = .white
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear

        //: self.setupSubviews()
        self.yellowedStar()
        //: self.setupSubViewsConstraint()
        self.yearChoose()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainSourceKey.map{takePlaceUniform(spec: $0)}, encoding: .utf8)!)
    }

    // MARK: UI

    //: lazy var bgView = UIView().then {
    lazy var bgView = UIView().then {
        //: $0.backgroundColor = .white
        $0.backgroundColor = .white
        //: $0.layer.cornerRadius = 16
        $0.layer.cornerRadius = 16
        //: $0.layer.masksToBounds = true
        $0.layer.masksToBounds = true
    }

    //: lazy var rankLabel = UILabel().then {
    lazy var rankLabel = UILabel().then {
        //: $0.textColor = UIColor.appValueDetailColor()
        $0.textColor = UIColor.pointOfTotalersection()
        //: $0.font = .pingfangFont(type: .Semibold, fontSize: 20)
        $0.font = .processAcross(type: .Semibold, fontSize: 20)
    }

    //: lazy var headPic = UIImageView().then {
    lazy var headPic = UIImageView().then {
        //: $0.layer.masksToBounds = true
        $0.layer.masksToBounds = true
        //: $0.layer.cornerRadius = 25
        $0.layer.cornerRadius = 25
        //: $0.contentMode = .scaleAspectFill
        $0.contentMode = .scaleAspectFill
    }

    //: lazy var iconBorder: UIButton = {
    lazy var iconBorder: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var nickLabel = UILabel().then {
    lazy var nickLabel = UILabel().then {
        //: $0.textColor = UIColor.appTitleColor()
        $0.textColor = UIColor.antiquityColor()
        //: $0.font = .pingfangFont(type: .Medium, fontSize: 16)
        $0.font = .processAcross(type: .Medium, fontSize: 16)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ReadingLanguageManager.shared.direction == .rightToLeft {
            //: $0.lineBreakMode = .byTruncatingHead
            $0.lineBreakMode = .byTruncatingHead
        }
    }

    //: lazy var coinIconBtn = TalkingButton().then {
    lazy var coinIconBtn = AfterView().then {
        //: $0.setImage(UIImage.BundleImageNamed(name: "icon_rank_coin"), for: .normal)
        $0.setImage(UIImage.parentSet(name: String(bytes: notiChannelStr.map{renderSession(skirt: $0)}, encoding: .utf8)!), for: .normal)
        //: $0.setTitleColor(UIColor.white, for: .normal)
        $0.setTitleColor(UIColor.white, for: .normal)
        //: $0.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 15)
        $0.titleLabel?.font = .processAcross(type: .Medium, fontSize: 15)
        //: $0.imageAlignment = .left
        $0.imageAlignment = .left
        //: $0.spaceBetweenTitleAndImage = 5
        $0.spaceBetweenTitleAndImage = 5
        //: $0.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: actualWidth(w: 80), height: actualWidth(w: 33))), for: .normal)
        $0.setBackgroundImage(UIImage.keyLocal(colors: UIColor.sumerpretation(), size: CGSize(width: actualWidth(w: 80), height: actualWidth(w: 33))), for: .normal)
        //: $0.layer.cornerRadius = 16.5
        $0.layer.cornerRadius = 16.5
        //: $0.clipsToBounds = true
        $0.clipsToBounds = true
    }

    //: lazy var loungeImgV = UIImageView().then {
    lazy var loungeImgV = UIImageView().then {
        //: $0.image = UIImage.BundleImageNamed(name: "icon_lounge")
        $0.image = UIImage.parentSet(name: (notiTelevisionMessage.replacingOccurrences(of: "tip", with: "i") + String(appFourPath.prefix(5)) + "ounge"))
    }
}

// MARK: - update || fitHeight

//: extension SocialRankListViewCell {
extension AppropriationBillViewCell {
    //: func updateRankCell(model: SocialRankItemModel, index: Int) {
    func lineSmooth(model: FactorHandyJSON, index: Int) {
        //: rankLabel.text = "\(index+1)"
        rankLabel.text = "\(index + 1)"
        //: coinIconBtn.setTitle("\(model.value)", for: .normal)
        coinIconBtn.setTitle("\(model.value)", for: .normal)
        //: nickLabel.text = model.nickname
        nickLabel.text = model.nickname
        //: headPic.setUrlImage(urlStr: model.headPic)
        headPic.agreeFinish(urlStr: model.headPic)
        //: headPic.isHidden = !(model.headPic.count > 0)
        headPic.isHidden = !(model.headPic.count > 0)
        //: rankLabel.isHidden = headPic.isHidden && model.nickname.count <= 0
        rankLabel.isHidden = headPic.isHidden && model.nickname.count <= 0
        //: coinIconBtn.isHidden = !(model.value > 0)
        coinIconBtn.isHidden = !(model.value > 0)
        //: loungeImgV.isHidden = !model.loungePlus
        loungeImgV.isHidden = !model.loungePlus

        //: if !model.headPicFrame.isEmptyString {
        if !model.headPicFrame.isEmptyString {
            //: iconBorder.isHidden = false
            iconBorder.isHidden = false
            //: iconBorder.setHeadFrameUrlImage(urlStr: model.headPicFrame)
            iconBorder.broadMe(urlStr: model.headPicFrame)
            //: }else {
        } else {
            //: iconBorder.isHidden = true
            iconBorder.isHidden = true
        }
    }

    //: func updateIcon(type: Int) {
    func outTemp(type: Int) {
        //: let imageStr = type == 0 ? "icon_rank_coin":"icon_rank_coin2"
        let imageStr = type == 0 ? String(bytes: notiChannelStr.map{renderSession(skirt: $0)}, encoding: .utf8)! : (String(show_beautyFormat) + appBankFunStr.replacingOccurrences(of: "effective", with: "2"))
        //: coinIconBtn.setImage(UIImage.BundleImageNamed(name: imageStr), for: .normal)
        coinIconBtn.setImage(UIImage.parentSet(name: imageStr), for: .normal)
    }
}

// MARK: Layout

//: extension SocialRankListViewCell {
extension AppropriationBillViewCell {
    //: private func setupSubviews() {
    private func yellowedStar() {
        //: contentView.addSubview(bgView)
        contentView.addSubview(bgView)
        //: bgView.addSubview(rankLabel)
        bgView.addSubview(rankLabel)
        //: bgView.addSubview(headPic)
        bgView.addSubview(headPic)
        //: bgView.addSubview(nickLabel)
        bgView.addSubview(nickLabel)
        //: bgView.addSubview(loungeImgV)
        bgView.addSubview(loungeImgV)
        //: bgView.addSubview(coinIconBtn)
        bgView.addSubview(coinIconBtn)
        //: bgView.addSubview(iconBorder)
        bgView.addSubview(iconBorder)
    }

    //: private func setupSubViewsConstraint() {
    private func yearChoose() {
        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.top.equalTo(12)
            make.top.equalTo(12)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        //: rankLabel.snp.makeConstraints { make in
        rankLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        //: headPic.snp.makeConstraints { make in
        headPic.snp.makeConstraints { make in
            //: make.leading.equalTo(45)
            make.leading.equalTo(45)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.width.height.equalTo(50)
            make.width.height.equalTo(50)
        }
        //: iconBorder.snp.makeConstraints { make in
        iconBorder.snp.makeConstraints { make in
            //: make.leading.equalTo(37)
            make.leading.equalTo(37)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.width.height.equalTo(66)
            make.width.height.equalTo(66)
        }
        //: nickLabel.snp.makeConstraints { make in
        nickLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(headPic.snp.trailing).offset(8)
            make.leading.equalTo(headPic.snp.trailing).offset(8)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        //: loungeImgV.snp.makeConstraints { make in
        loungeImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(nickLabel.snp.trailing).offset(4)
            make.leading.equalTo(nickLabel.snp.trailing).offset(4)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.width.height.equalTo(18)
            make.width.height.equalTo(18)
            //: make.trailing.lessThanOrEqualTo(coinIconBtn.snp.leading).offset(-10)
            make.trailing.lessThanOrEqualTo(coinIconBtn.snp.leading).offset(-10)
        }
        //: coinIconBtn.snp.makeConstraints { make in
        coinIconBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(actualWidth(w: -24))
            make.trailing.equalTo(actualWidth(w: -24))
            //: make.centerY.equalTo(rankLabel.snp.centerY)
            make.centerY.equalTo(rankLabel.snp.centerY)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 80), height: actualWidth(w: 33)))
            make.size.equalTo(CGSize(width: actualWidth(w: 80), height: actualWidth(w: 33)))
        }
    }
}


//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainPageValue:[UInt8] = [0x93,0x98,0x93,0x9e,0x52,0x8d,0x99,0x8e,0x8f,0x9c,0x64,0x53,0x4a,0x92,0x8b,0x9d,0x4a,0x98,0x99,0x9e,0x4a,0x8c,0x8f,0x8f,0x98,0x4a,0x93,0x97,0x9a,0x96,0x8f,0x97,0x8f,0x98,0x9e,0x8f,0x8e]

fileprivate func promotionAll(sh num: UInt8) -> UInt8 {
    let value = Int(num) - 42
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_lounge" :*/
fileprivate let noti_iconContent:[Character] = ["i","c","o","n","_","l","o","u"]
fileprivate let user_databaseStr:[Character] = ["n","g","e"]

/*: "#777777" :*/
fileprivate let mainToMsg:String = "#taptap"
fileprivate let show_drownPresentKey:[Character] = ["7","7"]

/*: "UID: :*/
fileprivate let k_statusMessage:String = "UID:precedent texture disabled"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FindReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/1/11.
//

//: import UIKit
import UIKit

//: class TalkingSearchItemCell: UITableViewCell {
class FindReactiveCompatible: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.contentView.backgroundColor = .clear
        self.contentView.backgroundColor = .clear

        //: setupSubviews()
        underSound()
        //: setupSubViewsConstraint()
        atMessage()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainPageValue.map{promotionAll(sh: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Laod

    //: private lazy var headPicImgV: UIImageView = {
    private lazy var headPicImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.layer.cornerRadius = 60/2
        img.layer.cornerRadius = 60 / 2
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var nicknameLab: UILabel = {
    private lazy var nicknameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.processAcross(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.antiquityColor()
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var loungeImgV: UIImageView = {
    private lazy var loungeImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_lounge")
        img.image = UIImage.parentSet(name: (String(noti_iconContent) + String(user_databaseStr)))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var uidLab: UILabel = {
    private lazy var uidLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        lab.font = UIFont.processAcross(type: .Regular, fontSize: 14)
        //: lab.textColor = UIColor.appValueDetailColor()
        lab.textColor = UIColor.pointOfTotalersection()
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        lab.font = UIFont.processAcross(type: .Regular, fontSize: 15)
        //: lab.textColor = UIColor(hex: "#777777")
        lab.textColor = UIColor(hex: (mainToMsg.replacingOccurrences(of: "tap", with: "77") + String(show_drownPresentKey)))
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingSearchItemCell {
extension FindReactiveCompatible {
    /// 刷新
    //: func refreshCell(model: TalkingRecommendUserModel) {
    func total(model: ExMeasurable) {
        //: headPicImgV.setUrlImage(urlStr: model.headPic)
        headPicImgV.agreeFinish(urlStr: model.headPic)
        //: nicknameLab.textColor = model.loungePlus ? .userVipColor():.appTitleColor()
        nicknameLab.textColor = model.loungePlus ? .colorful() : .antiquityColor()
        //: nicknameLab.text = model.nickname
        nicknameLab.text = model.nickname
        //: uidLab.text = "UID:\(model.uid)"
        uidLab.text = (String(k_statusMessage.prefix(4))) + "\(model.uid)"
        //: desLab.text = model.signature
        desLab.text = model.signature
        // 是否订阅
        //: loungeImgV.isHidden = !model.loungePlus
        loungeImgV.isHidden = !model.loungePlus
        //: loungeImgV.snp.updateConstraints { make in
        loungeImgV.snp.updateConstraints { make in
            //: make.width.equalTo((loungeImgV.isHidden == false ? 20:0))
            make.width.equalTo(loungeImgV.isHidden == false ? 20 : 0)
        }
    }
}

// MARK: - Layout

//: extension TalkingSearchItemCell {
extension FindReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func underSound() {
        //: contentView.addSubview(headPicImgV)
        contentView.addSubview(headPicImgV)
        //: contentView.addSubview(nicknameLab)
        contentView.addSubview(nicknameLab)
        //: contentView.addSubview(loungeImgV)
        contentView.addSubview(loungeImgV)
        //: contentView.addSubview(uidLab)
        contentView.addSubview(uidLab)
        //: contentView.addSubview(desLab)
        contentView.addSubview(desLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func atMessage() {
        //: headPicImgV.snp.makeConstraints { make in
        headPicImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 60, height: 60))
            make.size.equalTo(CGSize(width: 60, height: 60))
        }

        //: uidLab.snp.makeConstraints { make in
        uidLab.snp.makeConstraints { make in
            //: make.top.equalTo(16)
            make.top.equalTo(16)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
        }

        //: nicknameLab.snp.makeConstraints { make in
        nicknameLab.snp.makeConstraints { make in
            //: make.leading.equalTo(headPicImgV.snp.trailing).offset(10)
            make.leading.equalTo(headPicImgV.snp.trailing).offset(10)
            //: make.centerY.equalTo(uidLab)
            make.centerY.equalTo(uidLab)
        }

        //: loungeImgV.snp.makeConstraints { make in
        loungeImgV.snp.makeConstraints { make in
            //: make.centerY.equalTo(nicknameLab)
            make.centerY.equalTo(nicknameLab)
            //: make.leading.equalTo(nicknameLab.snp.trailing).offset(3)
            make.leading.equalTo(nicknameLab.snp.trailing).offset(3)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
            //: make.width.equalTo(20)
            make.width.equalTo(20)
            //: make.trailing.lessThanOrEqualToSuperview().offset(-100)
            make.trailing.lessThanOrEqualToSuperview().offset(-100)
        }

        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.leading.equalTo(nicknameLab)
            make.leading.equalTo(nicknameLab)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
    }
}

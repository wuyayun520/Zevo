
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainStageDisplayId:[UInt8] = [0x73,0x78,0x73,0x7e,0x32,0x6d,0x79,0x6e,0x6f,0x7c,0x44,0x33,0x2a,0x72,0x6b,0x7d,0x2a,0x78,0x79,0x7e,0x2a,0x6c,0x6f,0x6f,0x78,0x2a,0x73,0x77,0x7a,0x76,0x6f,0x77,0x6f,0x78,0x7e,0x6f,0x6e]

fileprivate func latishExtent(output num: UInt8) -> UInt8 {
    let value = Int(num) - 10
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_male_default" :*/
fileprivate let mainForwardBugExistingData:[UInt8] = [0x97,0x9d,0x91,0x90,0xa1,0x93,0x9f,0x92,0x9b,0xa1,0x9a,0x9b,0x98,0x9f,0x8b,0x92,0x8a]

private func videoIdentification(challenge num: UInt8) -> UInt8 {
    return num ^ 254
}

/*: "icon_female_default" :*/
fileprivate let appViewMemoryUrl:String = "icon_fpersonal red scope total info"
fileprivate let main_leastPath:String = "robot restaurant play_default"

/*: "level_%@" :*/
fileprivate let kRowMessage:String = "lose reach hiddenlevel_%@"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BroadReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/12.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TPreviewUserInfoView: UIView {
class BroadReactiveCompatible: UIView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.space()
        //: self.setupSubViewsConstraint()
        self.seek()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainStageDisplayId.map{latishExtent(output: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var headerPic = UIImageView().then {
    lazy var headerPic = UIImageView().then {
        //: $0.image = UIImage.placeImgSquare()
        $0.image = UIImage.ground()
        //: $0.layer.masksToBounds = true
        $0.layer.masksToBounds = true
        //: $0.layer.cornerRadius = 5
        $0.layer.cornerRadius = 5
        //: $0.isUserInteractionEnabled = true
        $0.isUserInteractionEnabled = true
    }

    //: lazy var nickLabel = UILabel().then {
    lazy var nickLabel = UILabel().then {
        //: $0.font = .pingfangFont(type: .Medium, fontSize: 17)
        $0.font = .processAcross(type: .Medium, fontSize: 17)
        //: $0.textColor = .white
        $0.textColor = .white
    }

    //: lazy var cardImgView = UIImageView().then {
    lazy var cardImgView = UIImageView().then {
        //: $0.image = UIImage(named: "")
        $0.image = UIImage(named: "")
        //: $0.isHidden = true
        $0.isHidden = true
    }

    //: lazy var sexImgView = UIImageView().then {
    lazy var sexImgView = UIImageView().then {
        //: $0.image = UIImage(named: "")
        $0.image = UIImage(named: "")
    }

    //: lazy var ageLabel = UILabel().then {
    lazy var ageLabel = UILabel().then {
        //: $0.font = .pingfangFont(type: .Regular, fontSize: 10)
        $0.font = .processAcross(type: .Regular, fontSize: 10)
        //: $0.textColor = .white
        $0.textColor = .white
    }

    //: lazy var levelImgView = UIImageView().then {
    lazy var levelImgView = UIImageView().then {
        //: $0.image = UIImage(named: "")
        $0.image = UIImage(named: "")
    }
}

// MARK: - update

//: extension TPreviewUserInfoView {
extension BroadReactiveCompatible {
    //: func updateContentWithModel(model: TPreviewInfoModel) {
    func flush(model: AdminMeasurable) {
        //: headerPic.kf.setImage(with: URL(string: model.headPic), placeholder: UIImage.placeImgSquare())
        headerPic.kf.setImage(with: URL(string: model.headPic), placeholder: UIImage.ground())
        //: nickLabel.text = model.nickname
        nickLabel.text = model.nickname
        //: cardImgView.isHidden = !model.isTPAuth
        cardImgView.isHidden = !model.isTPAuth
        //: ageLabel.text = model.age
        ageLabel.text = model.age
        //: let imgStr = model.sex == Gender.male.rawValue ? "icon_male_default" : "icon_female_default"
        let imgStr = model.sex == ArrowGender.male.rawValue ? String(bytes: mainForwardBugExistingData.map{videoIdentification(challenge: $0)}, encoding: .utf8)! : (String(appViewMemoryUrl.prefix(6)) + "emale" + String(main_leastPath.suffix(8)))
        //: sexImgView.image = UIImage(named: imgStr)
        sexImgView.image = UIImage(named: imgStr)
        //: let levelStr = String(format: "level_%@", model.level)
        let levelStr = String(format: (String(kRowMessage.suffix(8))), model.level)
        //: levelImgView.image = UIImage(named: levelStr)
        levelImgView.image = UIImage(named: levelStr)
    }
}

// MARK: Layout

//: extension TPreviewUserInfoView {
extension BroadReactiveCompatible {
    //: private func setupSubviews() {
    private func space() {
        //: self.addSubview(headerPic)
        self.addSubview(headerPic)
        //: self.addSubview(nickLabel)
        self.addSubview(nickLabel)
        //: self.addSubview(cardImgView)
        self.addSubview(cardImgView)
        //: self.addSubview(sexImgView)
        self.addSubview(sexImgView)
        //: self.addSubview(ageLabel)
        self.addSubview(ageLabel)
        //: self.addSubview(levelImgView)
        self.addSubview(levelImgView)
    }

    //: private func setupSubViewsConstraint() {
    private func seek() {
        //: headerPic.snp.makeConstraints { make in
        headerPic.snp.makeConstraints { make in
            //: make.leading.bottom.equalTo(0)
            make.leading.bottom.equalTo(0)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 41), height: actualWidth(w: 41)))
            make.size.equalTo(CGSize(width: actualWidth(w: 41), height: actualWidth(w: 41)))
        }
        //: nickLabel.snp.makeConstraints { make in
        nickLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(headerPic.snp.trailing).offset(actualWidth(w: 7))
            make.leading.equalTo(headerPic.snp.trailing).offset(actualWidth(w: 7))
            //: make.top.equalTo(headerPic.snp.top)
            make.top.equalTo(headerPic.snp.top)
        }
        //: cardImgView.snp.makeConstraints { make in
        cardImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(nickLabel.snp.trailing).offset(actualWidth(w: 3))
            make.leading.equalTo(nickLabel.snp.trailing).offset(actualWidth(w: 3))
            //: make.centerY.equalTo(nickLabel.snp.centerY)
            make.centerY.equalTo(nickLabel.snp.centerY)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 20), height: actualWidth(w: 16)))
            make.size.equalTo(CGSize(width: actualWidth(w: 20), height: actualWidth(w: 16)))
        }
        //: sexImgView.snp.makeConstraints { make in
        sexImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(nickLabel.snp.leading)
            make.leading.equalTo(nickLabel.snp.leading)
            //: make.top.equalTo(nickLabel.snp.bottom).offset(actualHeight(h: 3))
            make.top.equalTo(nickLabel.snp.bottom).offset(actualHeight(h: 3))
            //: make.height.equalTo(actualHeight(h: 17))
            make.height.equalTo(actualHeight(h: 17))
        }
        //: ageLabel.snp.makeConstraints { make in
        ageLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(sexImgView.snp.leading).offset(actualWidth(w: 15))
            make.leading.equalTo(sexImgView.snp.leading).offset(actualWidth(w: 15))
            //: make.trailing.equalTo(sexImgView.snp.trailing).offset(actualWidth(w: -5))
            make.trailing.equalTo(sexImgView.snp.trailing).offset(actualWidth(w: -5))
            //: make.centerY.equalTo(sexImgView.snp.centerY)
            make.centerY.equalTo(sexImgView.snp.centerY)
        }
        //: levelImgView.snp.makeConstraints { make in
        levelImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(sexImgView.snp.trailing).offset(actualWidth(w: 4))
            make.leading.equalTo(sexImgView.snp.trailing).offset(actualWidth(w: 4))
            //: make.centerY.equalTo(sexImgView.snp.centerY)
            make.centerY.equalTo(sexImgView.snp.centerY)
            //: make.width.equalTo(actualWidth(w: 35))
            make.width.equalTo(actualWidth(w: 35))
            //: make.height.equalTo(actualHeight(h: 17))
            make.height.equalTo(actualHeight(h: 17))
        }
    }
}

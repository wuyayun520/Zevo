
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let showExistingKey:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_shouye_biaoshi_default" :*/
fileprivate let main_identificationMessage:[Character] = ["i","c","o","n","_","s","h","o","u","y","e","_"]
fileprivate let main_favoriteValue:[Character] = ["b","i","a","o","s","h","i","_","d","e","f","a","u","l","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BookmanView.swift
//  AbroadTalking
//
//  Created by young on 2022/9/9.
//

//: import UIKit
import UIKit

//: class PremiumStarListCell: UICollectionViewCell {
class BookmanView: UICollectionViewCell {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: showExistingKey.reversed(), encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.barReject()
        //: self.setupSubViewsConstraint()
        self.quantitativeRelation()
    }

    // MARK: - Lazy load

    //: private lazy var headImgView: UIImageView = {
    private lazy var headImgView: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.layer.cornerRadius = 35
        v.layer.cornerRadius = 35
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: return v
        return v
        //: }()
    }()

    //: private lazy var authImgV: UIImageView = {
    private lazy var authImgV: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage(named: "icon_shouye_biaoshi_default")
        v.image = UIImage(named: (String(main_identificationMessage) + String(main_favoriteValue)))
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.antiquityColor()
        //: lab.font = .pingfangFont(type: .Regular, fontSize: 15)
        lab.font = .processAcross(type: .Regular, fontSize: 15)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Public Event

//: extension PremiumStarListCell {
extension BookmanView {
    // MARK: - Refresh

    //: func refreshCell(_ model: PremiumStarListModel?) {
    func factor(_ model: FormatRoundModelType?) {
        //: guard let model = model else { return }
        guard let model = model else { return }
        //: headImgView.kf.setImage(with: URL(string: model.headPic), placeholder: UIImage.placeHolderImage(sex: model.sex))
        headImgView.kf.setImage(with: URL(string: model.headPic), placeholder: UIImage.province(sex: model.sex))
        //: authImgV.isHidden = !model.isTPAuth
        authImgV.isHidden = !model.isTPAuth
        //: nameLab.text = model.nickname
        nameLab.text = model.nickname
    }
}

// MARK: - Layout

//: extension PremiumStarListCell {
extension BookmanView {
    // 添加视图
    //: private func setupSubviews() {
    private func barReject() {
        //: self.contentView.addSubview(headImgView)
        self.contentView.addSubview(headImgView)
        //: self.contentView.addSubview(authImgV)
        self.contentView.addSubview(authImgV)
        //: self.contentView.addSubview(nameLab)
        self.contentView.addSubview(nameLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func quantitativeRelation() {
        //: headImgView.snp.makeConstraints { make in
        headImgView.snp.makeConstraints { make in
            //: make.leading.top.equalToSuperview()
            make.leading.top.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 70, height: 70))
            make.size.equalTo(CGSize(width: 70, height: 70))
        }
        //: authImgV.snp.makeConstraints { make in
        authImgV.snp.makeConstraints { make in
            //: make.trailing.equalTo(headImgView.snp.trailing)
            make.trailing.equalTo(headImgView.snp.trailing)
            //: make.bottom.equalTo(headImgView.snp.bottom)
            make.bottom.equalTo(headImgView.snp.bottom)
            //: make.size.equalTo(CGSize(width: 20, height: 16))
            make.size.equalTo(CGSize(width: 20, height: 16))
        }
        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.leading.width.equalToSuperview()
            make.leading.width.equalToSuperview()
            //: make.top.equalTo(75)
            make.top.equalTo(75)
            //: make.height.equalTo(17)
            make.height.equalTo(17)
        }
    }
}

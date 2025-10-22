
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let userCapacityMessage:[UInt8] = [0x41,0x46,0x41,0x4c,0x0,0x3b,0x47,0x3c,0x3d,0x4a,0x12,0x1,0xf8,0x40,0x39,0x4b,0xf8,0x46,0x47,0x4c,0xf8,0x3a,0x3d,0x3d,0x46,0xf8,0x41,0x45,0x48,0x44,0x3d,0x45,0x3d,0x46,0x4c,0x3d,0x3c]

fileprivate func spreadHead(installation num: UInt8) -> UInt8 {
    let value = Int(num) + 40
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Gifts received" :*/
fileprivate let user_dataByFormat:String = "return extraGifts rec"
fileprivate let appDisagreeKey:String = "eifastd"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MergeFlowLayout.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/6.
//

//: import SwiftUI
import SwiftUI
//: import UIKit
import UIKit

/// 获取礼物item的宽度
//: public func profileGiftItem_Width(isNew: Bool) -> CGFloat {
public func profileGiftItem_Width(isNew: Bool) -> CGFloat {
    //: if isNew {
    if isNew {
        //: return actualWidth(w: 109)
        return actualWidth(w: 109)
        //: }  else {
    } else {
        //: return actualWidth(w: 81)
        return actualWidth(w: 81)
    }
}

//: class TalkingUserDetailGiftCell: UITableViewCell {
class MergeFlowLayout: UITableViewCell {
    //: var isNewProfile = false
    var isNewProfile = false // 是否是新个人资料
    //: var tempH: CGFloat = 0
    var tempH: CGFloat = 0 // 当前视图高度
    //: var giftsDataArray: [TalkingUserReceivedGiftModel] = [] {
    var giftsDataArray: [ReceivedCosHandyJSON] = [] {
        //: didSet {
        didSet {
            //: if giftsDataArray.isEmpty {
            if giftsDataArray.isEmpty {
                //: tempH = 0
                tempH = 0
                //: } else {
            } else {
                //: let num = isNewProfile ? 3:4
                let num = isNewProfile ? 3 : 4
                //: let row = ceil(Double(giftsDataArray.count)/Double(num))
                let row = ceil(Double(giftsDataArray.count) / Double(num))
                //: let width = profileGiftItem_Width(isNew: isNewProfile)
                let width = profileGiftItem_Width(isNew: isNewProfile)
                //: tempH = actualWidth(w: 40) + (width+actualHeight(h: 40)+10) * row
                tempH = actualWidth(w: 40) + (width + actualHeight(h: 40) + 10) * row
            }
            //: self.collectionView.reloadData()
            self.collectionView.reloadData()
        }
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.contentView.backgroundColor = .clear
        self.contentView.backgroundColor = .clear

        //: self.setupSubviews()
        self.choice()
        //: self.setupSubViewsConstraint()
        self.ask()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: userCapacityMessage.map{spreadHead(installation: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Gifts received".localized
        lb.text = (String(user_dataByFormat.suffix(9)) + appDisagreeKey.replacingOccurrences(of: "fast", with: "ve")).localized
        //: lb.font = .pingfangFont(type: .Medium, fontSize: 17)
        lb.font = .processAcross(type: .Medium, fontSize: 17)
        //: lb.textColor = .appTitleColor()
        lb.textColor = .antiquityColor()
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.minimumLineSpacing = 10
        layout.minimumLineSpacing = 10
        //: layout.minimumInteritemSpacing = 0
        layout.minimumInteritemSpacing = 0
        //: layout.sectionInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)

        //: let collect = UICollectionView(frame: .zero, collectionViewLayout: layout)
        let collect = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //: collect.backgroundColor = .clear
        collect.backgroundColor = .clear
        //: collect.delegate = self
        collect.delegate = self
        //: collect.dataSource = self
        collect.dataSource = self
        //: collect.isScrollEnabled = false
        collect.isScrollEnabled = false
        //: collect.register(TalkingUserDetailGiftItemCell.self, forCellWithReuseIdentifier: TalkingUserDetailGiftItemCell.className())
        collect.register(PercentageItemCell.self, forCellWithReuseIdentifier: PercentageItemCell.className())
        //: return collect
        return collect
        //: }()
    }()
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout

//: extension TalkingUserDetailGiftCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension MergeFlowLayout: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 1
        return 1
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return self.giftsDataArray.count
        return self.giftsDataArray.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingUserDetailGiftItemCell.className(), for: indexPath) as! TalkingUserDetailGiftItemCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PercentageItemCell.className(), for: indexPath) as! PercentageItemCell
        //: let model: TalkingUserReceivedGiftModel = self.giftsDataArray[indexPath.row]
        let model: ReceivedCosHandyJSON = self.giftsDataArray[indexPath.row]
        //: cell.configGiftItemCellWithData(giftModel: model, isNewProfile)
        cell.notice(giftModel: model, isNewProfile)
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        //: let width = profileGiftItem_Width(isNew: isNewProfile)
        let width = profileGiftItem_Width(isNew: isNewProfile)
        //: return CGSize(width: width, height: width+actualHeight(h: 40))
        return CGSize(width: width, height: width + actualHeight(h: 40))
    }
}

// MARK: - Layout

//: extension TalkingUserDetailGiftCell {
extension MergeFlowLayout {
    //: private func setupSubviews() {
    private func choice() {
        //: contentView.addSubview(titleLab)
        contentView.addSubview(titleLab)
        //: contentView.addSubview(collectionView)
        contentView.addSubview(collectionView)
    }

    //: private func setupSubViewsConstraint() {
    private func ask() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(0)
            make.top.equalTo(0)
        }

        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalTo(0)
            make.leading.trailing.bottom.equalTo(0)
            //: make.top.equalTo(titleLab.snp.bottom).offset(15)
            make.top.equalTo(titleLab.snp.bottom).offset(15)
        }
    }
}


//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let data_routeDraftKey:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "featureCell" :*/
fileprivate let kSomebodyStr:String = "feaadu"
fileprivate let constJoinName:String = "away uniform description angle thenreCell"

/*: "placeholder" :*/
fileprivate let app_strategyText:String = "pbagaceh"
fileprivate let userCaptureMessage:[Character] = ["o","l","d","e","r"]

/*: "suiteCell" :*/
fileprivate let user_actionId:String = "suitmerge"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FreezingMixtureThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/31.
//

//: import UIKit
import UIKit

//: typealias DidSelectHandler = (_ featureItem: AgainLooksModel) -> Void
typealias DidSelectHandler = (_ featureItem: AgainLooksModel) -> Void

//: class STBeautyCollectionView: UICollectionView {
class FreezingMixtureThen: UICollectionView {
    //: var curSuiteType = BeautyItemType.Face
    var curSuiteType = MidAdditiveArithmetic.Face
    //: var featureItems = Array<Any>()
    var featureItems = [Any]()
    //: var curItem: AgainLooksModel?
    var curItem: AgainLooksModel?
    //: var selectBeautyBlock: SelectFilterBlock?
    var selectBeautyBlock: SelectFilterBlock?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: data_routeDraftKey.reversed(), encoding: .utf8)!)
    }

    //: override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
    override init(frame: CGRect, collectionViewLayout _: UICollectionViewLayout) {
        //: let layout = STBeautyLayout.init()
        let layout = TensionFormatFlowLayout()
        //: layout.scrollDirection = .horizontal
        layout.scrollDirection = .horizontal

        //: super.init(frame: frame, collectionViewLayout: layout)
        super.init(frame: frame, collectionViewLayout: layout)

        //: setupSubviews()
        willAcquire()
    }

    //: deinit {
    deinit {}
}

//: extension STBeautyCollectionView {
extension FreezingMixtureThen {
    //: func setupData() {
    func pagePlay() {
        //: let tmp = NSMutableArray.init()
        let tmp = NSMutableArray()
        //: switch (self.curSuiteType) {
        switch self.curSuiteType {
        //: case .Face:
        case .Face:
            //: let faceArr  = AgainLooksModel.init().arrayOfFeatureModelWith(categoryType: .Base)
            let faceArr = AgainLooksModel().rowShapeType(categoryType: .Base)
            //: tmp.addObjects(from: faceArr)
            tmp.addObjects(from: faceArr)

        //: case .Eyes:
        case .Eyes:
            //: let faceArr  = AgainLooksModel.init().arrayOfFeatureModelWith(categoryType: .Shape)
            let faceArr = AgainLooksModel().rowShapeType(categoryType: .Shape)
            //: tmp.addObjects(from: faceArr)
            tmp.addObjects(from: faceArr)

        //: case .Nose:
        case .Nose:
            //: let faceArr  = AgainLooksModel.init().arrayOfFeatureModelWith(categoryType: .MicroSurgery)
            let faceArr = AgainLooksModel().rowShapeType(categoryType: .MicroSurgery)
            //: tmp.addObjects(from: faceArr)
            tmp.addObjects(from: faceArr)

        //: case .Lip:
        case .Lip:
            //: let faceArr  = AgainLooksModel.init().arrayOfFeatureModelWith(categoryType: .MakeUp)
            let faceArr = AgainLooksModel().rowShapeType(categoryType: .MakeUp)
            //: tmp.addObjects(from: faceArr)
            tmp.addObjects(from: faceArr)

        //: default:
        default:
            //: featureItems = Array()
            featureItems = Array()
            //: break
        }

        //: featureItems = tmp as! [Any]
        featureItems = tmp as! [Any]
        //: configDefaultSelectItem()
        visualItem()

        //: let layout: STBeautyLayout = self.collectionViewLayout as! STBeautyLayout
        let layout: TensionFormatFlowLayout = self.collectionViewLayout as! TensionFormatFlowLayout
        //: layout.dataArr = featureItems
        layout.dataArr = featureItems
        //: self.reloadData()
        self.reloadData()
    }

    //: func configDefaultSelectItem() {
    func visualItem() {
        /*!
         * 1、找到当前featureType对应的item
         * 2、没有找到，就使用数组firstObject
         */
        //: var curFeature = FilterOutFormalCacheCost.share.curFeature
        var curFeature = FilterOutFormalCacheCost.share.curFeature
        //: self.curItem?.isSelected = false
        self.curItem?.isSelected = false
        //: curFeature = self.curItem?.featureType
        curFeature = self.curItem?.featureType

        // 1
        //: for aFeature in featureItems {
        for aFeature in featureItems {
            //: let tfeature = aFeature as! AgainLooksModel
            let tfeature = aFeature as! AgainLooksModel
            //: if (curFeature == tfeature.featureType) {
            if curFeature == tfeature.featureType {
                //: tfeature.isSelected = true
                tfeature.isSelected = true
                //: self.curItem = tfeature
                self.curItem = tfeature
                //: break
                break
            }
        }

        // 2
        //: if (self.curItem == nil) {
        if self.curItem == nil {
            //: let aFeature: AgainLooksModel = featureItems.first as! AgainLooksModel
            let aFeature: AgainLooksModel = featureItems.first as! AgainLooksModel
            //: aFeature.isSelected = true
            aFeature.isSelected = true
            //: self.curItem = aFeature
            self.curItem = aFeature
        }
    }

    //: func setCurSuiteType(curSuiteType: BeautyItemType) {
    func labType(curSuiteType: MidAdditiveArithmetic) {
        //: self.curSuiteType = curSuiteType
        self.curSuiteType = curSuiteType
        //: setupData()
        pagePlay()
    }

    //: func resetDefaultBeautySuite() {
    func angleSuite() {
        //: self.curSuiteType = .Face
        self.curSuiteType = .Face
        //: setupData()
        pagePlay()
        //: let aFeature: AgainLooksModel = featureItems.first as! AgainLooksModel
        let aFeature: AgainLooksModel = featureItems.first as! AgainLooksModel
        //: aFeature.isSelected = true
        aFeature.isSelected = true
        //: self.curItem = aFeature
        self.curItem = aFeature
    }
}

//: extension STBeautyCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
extension FreezingMixtureThen: UICollectionViewDelegate, UICollectionViewDataSource {
    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return featureItems.count
        return featureItems.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell: STBeautyIconTitleCell = collectionView.dequeueReusableCell(withReuseIdentifier: "featureCell", for: indexPath) as! STBeautyIconTitleCell
        let cell: WarningReactiveCompatible = collectionView.dequeueReusableCell(withReuseIdentifier: (kSomebodyStr.replacingOccurrences(of: "ad", with: "t") + String(constJoinName.suffix(6))), for: indexPath) as! WarningReactiveCompatible

        //: let item: AgainLooksModel = featureItems[indexPath.row] as! AgainLooksModel
        let item: AgainLooksModel = featureItems[indexPath.row] as! AgainLooksModel
        //: item.isSelected  = (item.featureType == self.curItem?.featureType)
        item.isSelected = (item.featureType == self.curItem?.featureType)
        //: cell.setFeatureItem(featureItem: item)
        cell.bagTableTotalerval(featureItem: item)
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: if (indexPath.row < featureItems.count) {
        if indexPath.row < featureItems.count {
            //: let item: AgainLooksModel = featureItems[indexPath.row] as! AgainLooksModel
            let item: AgainLooksModel = featureItems[indexPath.row] as! AgainLooksModel
            //: self.curItem?.isSelected = false
            self.curItem?.isSelected = false
            //: item.isSelected = true
            item.isSelected = true

            //: self.curItem = item
            self.curItem = item // setter
            //: if self.selectBeautyBlock != nil {
            if self.selectBeautyBlock != nil {
                //: self.selectBeautyBlock!(self.curItem ?? AgainLooksModel.init())
                self.selectBeautyBlock!(self.curItem ?? AgainLooksModel())
            }
            //: self.reloadData()
            self.reloadData()
        }
    }
}

//: extension STBeautyCollectionView {
extension FreezingMixtureThen {
    //: func setupSubviews() {
    func willAcquire() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.isPagingEnabled = true
        self.isPagingEnabled = true
        //: self.showsHorizontalScrollIndicator = false
        self.showsHorizontalScrollIndicator = false
        //: self.showsVerticalScrollIndicator = false
        self.showsVerticalScrollIndicator = false
        //: self.delegate = self
        self.delegate = self
        //: self.dataSource = self
        self.dataSource = self
//        self.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 0)
        //: self.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "placeholder")
        self.register(UICollectionViewCell.self, forCellWithReuseIdentifier: (app_strategyText.replacingOccurrences(of: "bag", with: "l") + String(userCaptureMessage)))
        //: self.register(STBeautyIconTitleCell.self, forCellWithReuseIdentifier: "featureCell")
        self.register(WarningReactiveCompatible.self, forCellWithReuseIdentifier: (kSomebodyStr.replacingOccurrences(of: "ad", with: "t") + String(constJoinName.suffix(6))))
        //: self.register(STBeautyIconTitleCell.self, forCellWithReuseIdentifier: "suiteCell")
        self.register(WarningReactiveCompatible.self, forCellWithReuseIdentifier: (user_actionId.replacingOccurrences(of: "merge", with: "e") + "Cell"))
    }
}

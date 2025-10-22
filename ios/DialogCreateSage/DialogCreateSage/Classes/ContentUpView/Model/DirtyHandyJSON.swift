// __DEBUG__
// __CLOSE_PRINT__
//
//  DirtyHandyJSON.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import HandyJSON
import HandyJSON
//: import UIKit
import UIKit

//: struct SocialRankModel: HandyJSON {
struct DirtyHandyJSON: HandyJSON {
    //: var activity: SocialPeriodModel?
    var activity: HappenPeriodModel?
    //: var charm: SocialPeriodModel?
    var charm: HappenPeriodModel?
}

//: struct SocialPeriodModel: HandyJSON {
struct HappenPeriodModel: HandyJSON {
    //: var yesterday: SocialResModel?
    var yesterday: SocialSiblingSolarThermalSystemResModel?
    //: var today: SocialResModel?
    var today: SocialSiblingSolarThermalSystemResModel?
    //: var weekly: SocialResModel?
    var weekly: SocialSiblingSolarThermalSystemResModel?
}

// 毫无意义的一层，等后端后期调整
//: struct SocialResModel: HandyJSON {
struct SocialSiblingSolarThermalSystemResModel: HandyJSON {
    //: var res: [SocialRankItemModel] = []
    var res: [FactorHandyJSON] = []
}

//: struct SocialRankItemModel: HandyJSON {
struct FactorHandyJSON: HandyJSON {
    //: var uid = 0
    var uid = 0
    //: var value = 0
    var value = 0
    //: var nickname: String = ""
    var nickname: String = ""
    //: var headPic: String = ""
    var headPic: String = ""
    //: var sex: String = ""
    var sex: String = ""
    //: var loungePlus: Bool = false
    var loungePlus: Bool = false // 是否订阅
    //: var headPicFrame: String = ""      // 首充头像框
    var headPicFrame: String = "" // 首充头像框

    // MARK: - 自定义字段

    /// 占位字段，表示数据是否为空
    //: var isEmpty: Bool = false
    var isEmpty: Bool = false
}

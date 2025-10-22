
//: Declare String Begin

/*: "TodayIsShowRatingViewKey" :*/
fileprivate let userAccountingUrl:[Character] = ["T","o","d","a","y","I","s","S","h","o","w","R","a","t","i","n","g"]
fileprivate let user_ceaseUrl:[Character] = ["V","i","e","w","K","e","y"]

/*: "IsShowAppStoreRatingGuideViewKey" :*/
fileprivate let k_pinWriteName:[UInt8] = [0x9e,0xc8,0xa8,0xbd,0xc4,0xcc,0x96,0xc5,0xc5,0xa8,0xc9,0xc4,0xc7,0xba,0xa7,0xb6,0xc9,0xbe,0xc3,0xbc,0x9c,0xca,0xbe,0xb9,0xba,0xab,0xbe,0xba,0xcc,0xa0,0xba,0xce]

fileprivate func linguisticContextHave(extra num: UInt8) -> UInt8 {
    let value = Int(num) - 85
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "yyyy-MM-dd" :*/
fileprivate let appMultiplePath:[Character] = ["y","y","y","y","-","M","M","-","d","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//: import Foundation
import Foundation
//: import StoreKit
import StoreKit
//: import UIKit
import UIKit

//: class AppStoreRatingManager {
class MergeRatingManager {
    /// 今日是否展示评分的Key
    //: private let TodayIsShowRatingViewKey = "TodayIsShowRatingViewKey"
    private let TodayIsShowRatingViewKey = (String(userAccountingUrl) + String(user_ceaseUrl))
    /// 是否已经展示评分引导弹窗的Key
    //: private let IsShowAppStoreRatingGuideViewKey = "IsShowAppStoreRatingGuideViewKey"
    private let IsShowAppStoreRatingGuideViewKey = String(bytes: k_pinWriteName.map{linguisticContextHave(extra: $0)}, encoding: .utf8)!
    /// 单例类
    //: static let shared = AppStoreRatingManager()
    static let shared = MergeRatingManager()

    // MARK: - 公共方法

    /// 快速评分 - 应用内评分（仅评分，无评论）
    //: func requestQuickRating() {
    func enabled() {
        // 每日只调用一次
        //: let date = Defaults.object(forKey: TodayIsShowRatingViewKey)
        let date = user_liveMsg.object(forKey: TodayIsShowRatingViewKey)
        //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
        let today = NSDate.viewPress(date: Date(), dateFormat: (String(appMultiplePath)))
        //: guard date == nil || (date as? String) != today else { return }
        guard date == nil || (date as? String) != today else { return }
        //: Defaults.set(today, forKey: TodayIsShowRatingViewKey)
        user_liveMsg.set(today, forKey: TodayIsShowRatingViewKey)
        // 如果展示过引导弹窗，直接展示评分
        //: let isShowGuideView = Defaults.bool(forKey: IsShowAppStoreRatingGuideViewKey)
        let isShowGuideView = user_liveMsg.bool(forKey: IsShowAppStoreRatingGuideViewKey)
        //: if isShowGuideView || CompositionReactiveCompatible.share.appUserConfigMode.ratingReward <= 0 {
        if isShowGuideView || CompositionReactiveCompatible.share.appUserConfigMode.ratingReward <= 0 {
            //: requestInAppRating()
            perpendicularSave()
            //: return
            return
        }
        // 展示引导弹窗
        //: Defaults.set(true, forKey: IsShowAppStoreRatingGuideViewKey)
        user_liveMsg.set(true, forKey: IsShowAppStoreRatingGuideViewKey)
        //: let guideView = AppStoreRatingGuideView()
        let guideView = BlockYellowThen()
        //: guideView.show()
        guideView.superpose()
        //: guideView.rightBlcok = {
        guideView.rightBlcok = {
            //: AppStoreRatingManager.shared.requestInAppRating()
            MergeRatingManager.shared.perpendicularSave()
        }
    }
}

// MARK: - 私有方法

//: private extension AppStoreRatingManager {
private extension MergeRatingManager {
    /// 请求应用内评分 - iOS 13+ 优化版本
    //: func requestInAppRating() {
    func perpendicularSave() {
        //: if #available(iOS 14.0, *) {
        if #available(iOS 14.0, *) {
            // iOS 14+ 使用新的 WindowScene API（推荐）
            //: if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                //: SKStoreReviewController.requestReview(in: windowScene)
                SKStoreReviewController.requestReview(in: windowScene)
            }
            //: } else {
        } else {
            // iOS 13.x 使用传统 API
            //: SKStoreReviewController.requestReview()
            SKStoreReviewController.requestReview()
        }
    }
}

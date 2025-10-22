
//: Declare String Begin

/*: "Drop down to refresh" :*/
fileprivate let mainFactorContent:[Character] = ["D","r","o","p"," ","d","o","w","n"," ","t","o"," ","r","e"]
fileprivate let noti_basicKey:String = "freslite"

/*: "Release Refresh" :*/
fileprivate let showStepMsg:String = "length"
fileprivate let const_finishBlanketStr:[Character] = ["e","l","e","a","s","e"," ","R","e","f","r","e","s","h"]

/*: "Refreshing" :*/
fileprivate let userRealmId:String = "moment balanceRe"
fileprivate let k_letterKey:String = "errres"

/*: "Pull up to load more" :*/
fileprivate let k_balanceMessage:[Character] = ["P","u","l","l"," ","u","p"," ","t","o"," ","l","o","a","d"," ","m"]
fileprivate let noti_versionStr:[Character] = ["o","r","e"]

/*: "No more data." :*/
fileprivate let constTwoData:String = "early"
fileprivate let k_aspectName:String = "o mortwenty occur force"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ScrollViewExtension.swift
//  AbroadTalking
//
//  Created by young on 2022/9/8.
//

//: import UIKit
import UIKit

//: extension UIScrollView {
extension UIScrollView {
    //: typealias CompletionBlock = () -> Void
    typealias CompletionBlock = () -> Void

    /// 下拉刷新
    //: func addHeaderRefresh(complection: @escaping CompletionBlock) {
    func downComplection(complection: @escaping CompletionBlock) {
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ReadingLanguageManager.shared.direction == .rightToLeft {
            //: let header = MJRefreshNormalHeader()
            let header = MJRefreshNormalHeader()
            //: header.setTitle("Drop down to refresh".localized, for: .idle)
            header.setTitle((String(mainFactorContent) + noti_basicKey.replacingOccurrences(of: "lite", with: "h")).localized, for: .idle)
            //: header.setTitle("Release Refresh".localized, for: .pulling)
            header.setTitle((showStepMsg.replacingOccurrences(of: "length", with: "R") + String(const_finishBlanketStr)).localized, for: .pulling)
            //: header.setTitle("Refreshing".localized, for: .refreshing)
            header.setTitle((String(userRealmId.suffix(2)) + k_letterKey.replacingOccurrences(of: "err", with: "f") + "hing").localized, for: .refreshing)
            //: header.lastUpdatedTimeLabel?.isHidden = true
            header.lastUpdatedTimeLabel?.isHidden = true

            //: self.mj_header = header
            self.mj_header = header
            //: self.mj_header?.refreshingBlock = {
            self.mj_header?.refreshingBlock = {
                //: complection()
                complection()
            }
            //: } else {
        } else {
            //: self.mj_header = MJRefreshNormalHeader {
            self.mj_header = MJRefreshNormalHeader {
                //: complection()
                complection()
            }
        }
    }

    /// 上拉加载
    //: func addFooterRefresh(complection: @escaping CompletionBlock) {
    func pickUp(complection: @escaping CompletionBlock) {
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ReadingLanguageManager.shared.direction == .rightToLeft {
            //: let footer = MJRefreshAutoNormalFooter()
            let footer = MJRefreshAutoNormalFooter()
            //: footer.setTitle("Pull up to load more".localized, for: .idle)
            footer.setTitle((String(k_balanceMessage) + String(noti_versionStr)).localized, for: .idle)
            //: footer.setTitle("Release Refresh".localized, for: .pulling)
            footer.setTitle((showStepMsg.replacingOccurrences(of: "length", with: "R") + String(const_finishBlanketStr)).localized, for: .pulling)
            //: footer.setTitle("Refreshing".localized, for: .refreshing)
            footer.setTitle((String(userRealmId.suffix(2)) + k_letterKey.replacingOccurrences(of: "err", with: "f") + "hing").localized, for: .refreshing)
            //: footer.setTitle("No more data.".localized, for: .noMoreData)
            footer.setTitle((constTwoData.replacingOccurrences(of: "early", with: "N") + String(k_aspectName.prefix(5)) + "e data.").localized, for: .noMoreData)
            //: self.mj_footer = footer
            self.mj_footer = footer
            //: self.mj_footer?.refreshingBlock = {
            self.mj_footer?.refreshingBlock = {
                //: complection()
                complection()
            }
            //: } else {
        } else {
            //: self.mj_footer = MJRefreshAutoNormalFooter {
            self.mj_footer = MJRefreshAutoNormalFooter {
                //: complection()
                complection()
            }
        }
    }

    /// 结束刷新
    //: func endRefresh() {
    func tooCustomer() {
        //: if (self.mj_header?.isRefreshing) != nil {
        if (self.mj_header?.isRefreshing) != nil {
            //: self.mj_header?.endRefreshing()
            self.mj_header?.endRefreshing()
        }
        //: if (self.mj_footer?.isRefreshing) != nil {
        if (self.mj_footer?.isRefreshing) != nil {
            //: self.mj_footer?.endRefreshing()
            self.mj_footer?.endRefreshing()
        }
    }
}

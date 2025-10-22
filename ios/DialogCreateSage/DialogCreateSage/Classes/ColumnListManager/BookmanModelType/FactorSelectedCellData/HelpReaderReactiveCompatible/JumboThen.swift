
//: Declare String Begin

/*: "WCDB数据库打开失败：userId为空。" :*/
fileprivate let showHisId:[Character] = ["W"]
fileprivate let data_brushFormat:String = "size active recent cornerCDB数"
fileprivate let notiUtilityContent:String = "败\u{ff1a}use"

/*: "WCDB/ :*/
fileprivate let kApplyKey:String = "WCDB/present successfully weight scheme should"

/*: "WCDB数据库打开失败： :*/
fileprivate let dataUnitDetailOpTitle:String = "WCDB数据库打import pause quality extend"
fileprivate let showStateStepWithoutStr:String = "\u{5f00}失败："

/*: "WCDB数据库成功打开： :*/
fileprivate let notiPresentName:String = "heart throw printWCDB数"

/*: "WCDB数据库成功关闭。" :*/
fileprivate let main_tradeFundValue:[Character] = ["W","C","D","B","数","据","库","成","功","关","闭"]
fileprivate let mainCropStr:[Character] = ["。"]

/*: "WCDB数据库：创建表失败。error： :*/
fileprivate let noti_lovelyFormat:String = "WCDB数\u{636e}"
fileprivate let userEnablelyId:String = "库\u{ff1a}创建表"
fileprivate let data_tapUrl:[Character] = ["r","r","o","r","："]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  JumboThen.swift
//  DialogCreateSage
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit
//: import WCDBSwift
import WCDBSwift

//: class WCDBManager: NSObject {
class JumboThen: NSObject {
    //: static let shared = WCDBManager()
    static let shared = JumboThen()
    /// 数据库
    //: var database: Database?
    var database: Database?
    /// 数据库名称
    //: private var wcdbName: String {
    private var wcdbName: String {
        //: return CompositionReactiveCompatible.share.loginUserMode.userID + ".db"
        return CompositionReactiveCompatible.share.loginUserMode.userID + ".db"
    }

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: self.connectDatabase()
        self.databaseHitch()
    }

    /// 连接数据库
    //: func connectDatabase() {
    func databaseHitch() {
        //: closeDatabase()
        dirigible()

        //: guard !CompositionReactiveCompatible.share.loginUserMode.userID.isEmpty else {
        guard !CompositionReactiveCompatible.share.loginUserMode.userID.isEmpty else {
            //: UploadLogTool.writeLog(msg: "WCDB数据库打开失败：userId为空。")
            FinishThen.onicial(msg: (String(showHisId) + String(data_brushFormat.suffix(4)) + "\u{636e}库打开失" + notiUtilityContent + "rId为空。"))
            //: return
            return
        }
        //: guard let fileURL = try? FileManager.default
        guard let fileURL = try? FileManager.default
            //: .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            //: .appendingPathComponent("WCDB/\(wcdbName)") else { return }
            .appendingPathComponent((String(kApplyKey.prefix(5))) + "\(wcdbName)") else { return }
        //: database = Database(at: fileURL)
        database = Database(at: fileURL)
        //: guard database?.canOpen == true else {
        guard database?.canOpen == true else {
            //: UploadLogTool.writeLog(msg: "WCDB数据库打开失败：\(fileURL.path)")
            FinishThen.onicial(msg: (String(dataUnitDetailOpTitle.prefix(8)) + showStateStepWithoutStr) + "\(fileURL.path)")
            //: return
            return
        }
        //: printLog(message: "WCDB数据库成功打开：\(fileURL.path)")
        printLog(message: (String(notiPresentName.suffix(5)) + "据库成功\u{6253}开：") + "\(fileURL.path)")
        //: createTables()
        relieveEstablish()
    }

    /// 关闭数据库
    //: private func closeDatabase() {
    private func dirigible() {
        //: guard database != nil else { return }
        guard database != nil else { return }
        //: database?.close()
        database?.close()
        //: try? database?.close(onClosed: { [weak self] in
        try? database?.close(onClosed: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.database = nil
            self.database = nil
            //: printLog(message: "WCDB数据库成功关闭。")
            printLog(message: (String(main_tradeFundValue) + String(mainCropStr)))
            //: })
        })
    }
}

// MARK: - 创建表

//: extension WCDBManager {
extension JumboThen {
    /// 创建表
    //: private func createTables() {
    private func relieveEstablish() {
        //: do {
        do {
            // 用户信息表
            //: try database?.create(table: WCDBUserInfoTableName, of: WCDBUserInfoTable.self)
            try database?.create(table: notiAgeFormat, of: PercentageInfoTable.self)
            // 语音消息表
            //: try database?.create(table: WCDBVoiceMsgTableName, of: WCDBVoiceMsgTable.self)
            try database?.create(table: constPlayQuantityPath, of: HelpReaderReactiveCompatible.self)
            //: } catch {
        } catch {
            //: UploadLogTool.writeLog(msg: "WCDB数据库：创建表失败。error：\(error).")
            FinishThen.onicial(msg: (noti_lovelyFormat + userEnablelyId + "\u{5931}败。e" + String(data_tapUrl)) + "\(error).")
        }
    }
}

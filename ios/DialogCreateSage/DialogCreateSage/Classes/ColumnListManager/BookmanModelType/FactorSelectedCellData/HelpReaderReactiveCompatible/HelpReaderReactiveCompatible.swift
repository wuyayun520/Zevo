
//: Declare String Begin

/*: "DBUserVoiceTable" :*/
fileprivate let dataBlindName:String = "processor toward hodDBUs"
fileprivate let app_loseUrl:String = "eTablesomeone publicity ping suit bound"

/*: "msgId" :*/
fileprivate let app_relatedValue:[Character] = ["m","s","g","I","d"]

/*: "toUid" :*/
fileprivate let app_expressionAssistValue:[Character] = ["t","o","U","i","d"]

/*: "senderId" :*/
fileprivate let user_wedAssertId:String = "senderIdcarve customer warn"

/*: "audioSandbox" :*/
fileprivate let k_herFormat:String = "audconsento"

/*: "audioLength" :*/
fileprivate let userActiveTopicMsg:[Character] = ["a","u","d","i","o","L","e","n"]
fileprivate let user_yaCurrentPath:String = "gthanksh"

/*: "audioData" :*/
fileprivate let notiWhoMessage:String = "persondi"
fileprivate let userPanText:String = "bridge"

/*: "audioUri" :*/
fileprivate let app_exerciseTitle:[Character] = ["a","u","d","i","o"]
fileprivate let notiGloryId:[Character] = ["U","r","i"]

/*: "isRead" :*/
fileprivate let userCaptureLifePath:String = "isReadvalid come"

/*: "WCDB表 :*/
fileprivate let user_statementOnlyTitle:[Character] = ["W","C","D","B","表"]

/*: : 批量插入数据失败。error： :*/
fileprivate let dataCutId:String = ": 批\u{91cf}插"
fileprivate let kInsertPath:String = "败。error\u{ff1a}"

/*: : 更新数据失败。error： :*/
fileprivate let data_reportTitle:String = ": 更新数据失败。"
fileprivate let user_richTitle:String = "remaining living guard showerror："

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HelpReaderReactiveCompatible.swift
//  DialogCreateSage
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit
//: import WCDBSwift
import WCDBSwift

/// 表名
//: let WCDBVoiceMsgTableName = "DBUserVoiceTable"
let constPlayQuantityPath = (String(dataBlindName.suffix(4)) + "erVoic" + String(app_loseUrl.prefix(6)))
//: @objcMembers
@objcMembers
//: public final class WCDBVoiceMsgTable: NSObject, TableCodable {
public final class HelpReaderReactiveCompatible: NSObject, TableCodable {
    /// 消息Id【主键】
    //: public var msgId: String = ""
    public var msgId: String = ""
    /// 语音长度
    //: public var db_audioLength: String = ""
    public var db_audioLength: String = ""
    /// 缓存路径
    //: public var db_filePath: String = ""
    public var db_filePath: String = ""
    /// 下载路径
    //: var db_voiceUri: String = ""
    var db_voiceUri: String = ""
    /// 发送方
    //: var db_senduid: String = ""
    var db_senduid: String = ""
    /// 接收方
    //: var db_touid: String = ""
    var db_touid: String = ""
    /// 是否已读; 0未读，1已读
    //: var db_isRead: String = ""
    var db_isRead: String = ""
    /// 下载状态
    //: var downloadStatus: String = ""
    var downloadStatus: String = ""

    //: public enum CodingKeys: String, CodingTableKey {
    public enum CodingKeys: String, CodingTableKey {
        //: public typealias Root = WCDBVoiceMsgTable
        public typealias Root = HelpReaderReactiveCompatible
        //: case msgId
        case msgId
        //: case db_voiceUri
        case db_voiceUri
        //: case db_filePath
        case db_filePath
        //: case db_senduid
        case db_senduid
        //: case db_touid
        case db_touid
        //: case db_isRead
        case db_isRead
        //: case db_audioLength
        case db_audioLength
        //: case downloadStatus
        case downloadStatus

        //: public static let objectRelationalMapping = TableBinding(CodingKeys.self) {
        public static let objectRelationalMapping = TableBinding(CodingKeys.self) {
            //: BindColumnConstraint(msgId, isPrimary: true)
            BindColumnConstraint(msgId, isPrimary: true)
        }
    }
}

// MARK: - 增、删、改、查

//: extension WCDBVoiceMsgTable {
extension HelpReaderReactiveCompatible {
    /// 插入单条数据
    /// - Parameter dic: 字典
    /// - Returns: 模型
    //: @discardableResult
    @discardableResult
    //: public class func db_inserVoiceMsgToDB(_ dic: [AnyHashable: Any]) -> WCDBVoiceMsgTable {
    public class func burn(_ dic: [AnyHashable: Any]) -> HelpReaderReactiveCompatible {
        //: let cache = WCDBVoiceMsgTable()
        let cache = HelpReaderReactiveCompatible()
        //: cache.msgId = dic["msgId"] as? String ?? ""
        cache.msgId = dic[(String(app_relatedValue))] as? String ?? ""
        //: cache.db_touid = String(dic["toUid"] as? Int ?? 0)
        cache.db_touid = String(dic[(String(app_expressionAssistValue))] as? Int ?? 0)
        //: cache.db_senduid = dic["senderId"] as? String ?? ""
        cache.db_senduid = dic[(String(user_wedAssertId.prefix(8)))] as? String ?? ""
        //: cache.db_filePath = dic["audioSandbox"] as? String ?? ""
        cache.db_filePath = dic[(k_herFormat.replacingOccurrences(of: "consent", with: "i") + "Sandbox")] as? String ?? ""
        //: cache.db_audioLength = dic["audioLength"] as? String ?? ""
        cache.db_audioLength = dic[(String(userActiveTopicMsg) + user_yaCurrentPath.replacingOccurrences(of: "thanks", with: "t"))] as? String ?? ""
        //: if dic.keys.contains("audioData") {
        if dic.keys.contains((notiWhoMessage.replacingOccurrences(of: "person", with: "au") + "oDat" + userPanText.replacingOccurrences(of: "bridge", with: "a"))) {
            //: cache.db_voiceUri = dic["audioData"] as? String ?? ""
            cache.db_voiceUri = dic[(notiWhoMessage.replacingOccurrences(of: "person", with: "au") + "oDat" + userPanText.replacingOccurrences(of: "bridge", with: "a"))] as? String ?? ""
        }
        //: if cache.db_voiceUri.isEmpty {
        if cache.db_voiceUri.isEmpty {
            //: if dic.keys.contains("audioUri") {
            if dic.keys.contains((String(app_exerciseTitle) + String(notiGloryId))) {
                //: cache.db_voiceUri = dic["audioUri"] as? String ?? ""
                cache.db_voiceUri = dic[(String(app_exerciseTitle) + String(notiGloryId))] as? String ?? ""
            }
        }
        //: cache.db_isRead = dic["isRead"] as? String ?? ""
        cache.db_isRead = dic[(String(userCaptureLifePath.prefix(6)))] as? String ?? ""
        //: cache.downloadStatus = "0"
        cache.downloadStatus = "0"
        //: db_updateVoiceMsg(cache)
        atALowerPlace(cache)
        //: return cache
        return cache
    }

    /// 插入单条数据
    /// - Parameter voiceMsg: 数据模型
    //: class func db_insertVoiceMsg(_ voiceMsg: WCDBVoiceMsgTable) {
    class func vocalism(_ voiceMsg: HelpReaderReactiveCompatible) {
        //: WCDBVoiceMsgTable.db_insertVoiceMsgs([voiceMsg])
        HelpReaderReactiveCompatible.barAcross([voiceMsg])
    }

    /// 插入多条数据
    /// - Parameter voiceMsgs: 数据数组
    //: class func db_insertVoiceMsgs(_ voiceMsgs: [WCDBVoiceMsgTable]) {
    class func barAcross(_ voiceMsgs: [HelpReaderReactiveCompatible]) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? JumboThen.shared.database?.run(transaction: { _ in
            //: do {
            do {
                //: try WCDBManager.shared.database?.insert(voiceMsgs, intoTable: WCDBVoiceMsgTableName)
                try JumboThen.shared.database?.insert(voiceMsgs, intoTable: constPlayQuantityPath)
                //: } catch {
            } catch {
                //: UploadLogTool.writeLog(msg: "WCDB表\(WCDBVoiceMsgTableName): 批量插入数据失败。error：\(error).")
                FinishThen.onicial(msg: (String(user_statementOnlyTitle)) + "\(constPlayQuantityPath)" + (dataCutId + "\u{5165}\u{6570}据失" + kInsertPath) + "\(error).")
            }
            //: })
        })
    }

    /// 查询单个数据
    /// - Parameter msgId: 消息id
    /// - Returns: 模型
    //: public class func db_getVoiceMsg(with msgId: String) -> WCDBVoiceMsgTable? {
    public class func aboveServer(with msgId: String) -> HelpReaderReactiveCompatible? {
        //: if let voiceMsgs = WCDBVoiceMsgTable.db_getVoiceMsgs(with: [msgId]) {
        if let voiceMsgs = HelpReaderReactiveCompatible.income(with: [msgId]) {
            //: return voiceMsgs.first
            return voiceMsgs.first
        }
        //: return nil
        return nil
    }

    /// 查询多条数据
    /// - Parameter msgIds: id数据
    /// - Returns: 数据数组
    //: class func db_getVoiceMsgs(with msgIds: [String]) -> [WCDBVoiceMsgTable]? {
    class func income(with msgIds: [String]) -> [HelpReaderReactiveCompatible]? {
        //: do {
        do {
            //: let condition = WCDBVoiceMsgTable.Properties.msgId.in(msgIds)
            let condition = HelpReaderReactiveCompatible.Properties.msgId.in(msgIds)
            //: let voiceMsgs: [WCDBVoiceMsgTable]? = try WCDBManager.shared.database?.getObjects(on: WCDBVoiceMsgTable.Properties.all, fromTable: WCDBVoiceMsgTableName, where: condition)
            let voiceMsgs: [HelpReaderReactiveCompatible]? = try JumboThen.shared.database?.getObjects(on: HelpReaderReactiveCompatible.Properties.all, fromTable: constPlayQuantityPath, where: condition)
            //: return voiceMsgs
            return voiceMsgs
            //: } catch {
        } catch {
            //: return nil
            return nil
        }
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameter voiceMsg: 数据模型
    //: class func db_updateVoiceMsg(_ voiceMsg: WCDBVoiceMsgTable) {
    class func atALowerPlace(_ voiceMsg: HelpReaderReactiveCompatible) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? JumboThen.shared.database?.run(transaction: { _ in
            // 数据库中已存在，则更新数据
            //: if WCDBVoiceMsgTable.db_getVoiceMsg(with: voiceMsg.msgId) != nil {
            if HelpReaderReactiveCompatible.aboveServer(with: voiceMsg.msgId) != nil {
                //: do {
                do {
                    //: let condition = WCDBVoiceMsgTable.Properties.msgId == voiceMsg.msgId
                    let condition = HelpReaderReactiveCompatible.Properties.msgId == voiceMsg.msgId
                    //: try WCDBManager.shared.database?.update(table: WCDBVoiceMsgTableName,
                    try JumboThen.shared.database?.update(table: constPlayQuantityPath,
                                                            //: on: WCDBVoiceMsgTable.Properties.all,
                                                            on: HelpReaderReactiveCompatible.Properties.all,
                                                            //: with: voiceMsg,
                                                            with: voiceMsg,
                                                            //: where: condition)
                                                            where: condition)
                    //: } catch {
                } catch {
                    //: UploadLogTool.writeLog(msg: "WCDB表\(WCDBVoiceMsgTableName): 更新数据失败。error：\(error).")
                    FinishThen.onicial(msg: (String(user_statementOnlyTitle)) + "\(constPlayQuantityPath)" + (data_reportTitle.capitalized + String(user_richTitle.suffix(6))) + "\(error).")
                }

                //: } else {
            } else {
                // 数据库中不存在，则插入数据
                //: WCDBVoiceMsgTable.db_insertVoiceMsg(voiceMsg)
                HelpReaderReactiveCompatible.vocalism(voiceMsg)
            }
            //: })
        })
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameters:
    ///   - msgId: 消息Id
    ///   - status: 状态
    ///   - filePath: 路径
    //: class func db_updateVoiceMsg(msgId: String, status: String = "", filePath: String = "") {
    class func strippedDown(msgId: String, status: String = "", filePath: String = "") {
        //: guard let dbModel = WCDBVoiceMsgTable.db_getVoiceMsg(with: msgId) else { return }
        guard let dbModel = HelpReaderReactiveCompatible.aboveServer(with: msgId) else { return }
        //: if status.isEmpty == false {
        if status.isEmpty == false {
            //: dbModel.downloadStatus = status
            dbModel.downloadStatus = status
        }
        //: if filePath.isEmpty == false {
        if filePath.isEmpty == false {
            //: dbModel.db_filePath = filePath
            dbModel.db_filePath = filePath
        }
        //: WCDBVoiceMsgTable.db_updateVoiceMsg(dbModel)
        HelpReaderReactiveCompatible.atALowerPlace(dbModel)
    }

    /// 根据消息Id删除数据
    /// - Parameter msgId: 消息Id
    //: class func db_deleteVoiceMsg(msgId: String) {
    class func routeId(msgId: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? JumboThen.shared.database?.run(transaction: { _ in
            //: let condition = WCDBVoiceMsgTable.Properties.msgId == msgId
            let condition = HelpReaderReactiveCompatible.Properties.msgId == msgId
            //: try? WCDBManager.shared.database?.delete(fromTable: WCDBVoiceMsgTableName,
            try? JumboThen.shared.database?.delete(fromTable: constPlayQuantityPath,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }

    /// 根据userId、toUid删除数据
    /// - Parameters:
    ///   - userId: 用户id
    ///   - toUid: 对方id
    //: class func db_deleteVoiceMsg(_ userId: String, toUid: String) {
    class func voiceDrown(_ userId: String, toUid: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? JumboThen.shared.database?.run(transaction: { _ in
            //: let condition = WCDBVoiceMsgTable.Properties.db_senduid == userId && WCDBVoiceMsgTable.Properties.db_touid == toUid
            let condition = HelpReaderReactiveCompatible.Properties.db_senduid == userId && HelpReaderReactiveCompatible.Properties.db_touid == toUid
            //: try? WCDBManager.shared.database?.delete(fromTable: WCDBVoiceMsgTableName,
            try? JumboThen.shared.database?.delete(fromTable: constPlayQuantityPath,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }
}

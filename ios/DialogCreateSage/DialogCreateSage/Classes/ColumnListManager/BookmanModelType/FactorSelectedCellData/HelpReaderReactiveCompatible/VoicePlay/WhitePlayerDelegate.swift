
//: Declare String Begin

/*: ".wav" :*/
fileprivate let mainStorageStr:String = "clothes topic.wav"

/*: "Documents/User/voice/" :*/
fileprivate let show_prepareMessage:[Character] = ["D","o","c","u","m","e","n","t","s","/","U","s","e","r","/","v"]
fileprivate let main_normalBringName:[Character] = ["o","i","c","e","/"]

/*: "Documents/User/record/" :*/
fileprivate let main_remainUrl:String = "Documdisk group false province"
fileprivate let dataReplacementOwnerOfMsg:String = "name incidentser/"
fileprivate let k_submitName:[Character] = ["r","e","c","o","r","d","/"]

/*: "voice dataTaskDownloadFinish" :*/
fileprivate let showConversationInviteMessage:String = "shot allvoice da"
fileprivate let constStorageLabelValue:String = "taTassphere blind unless"
fileprivate let dataSearchPath:String = "oadFdoc comprise native administrative"

/*: "voice dataTaskDownloadCancel" :*/
fileprivate let app_overText:[Character] = ["v","o","i","c","e"," ","d","a","t","a","T","a","s","k","D","o","w","n","l"]
fileprivate let k_disabledName:String = "bright white messageoadC"

/*: "voice dataTaskDownloadExpired" :*/
fileprivate let app_tabGalleryId:[Character] = ["v","o","i","c","e"," ","d"]
fileprivate let noti_modelActorIonValue:String = "ataTasturn group"
fileprivate let constDeliveryFormat:String = "press outer heavyoadE"

/*: "voice dataTaskDownloadErro" :*/
fileprivate let noti_ageMessage:String = "vwarn"
fileprivate let noti_mailName:String = "ice dabad change"
fileprivate let notiServerTitle:String = "skDothen cram increase"
fileprivate let k_bookMessage:String = "Erroremark computer lab world orange"

/*: "Play Error,File does not exist" :*/
fileprivate let showEarlyMsg:[Character] = ["P","l","a","y"," ","E","r","r","o","r",",","F","i","l","e"," ","d","o","e","s"," ","n","o"]
fileprivate let appWhyTitle:String = "detail inner inputt exist"

/*: "Play Error,File expired" :*/
fileprivate let constCancelFairMsg:String = "Play Elet skilled pull"
fileprivate let kRouteGivingFormat:String = "foundation item boyFile"

/*: "Play Error，Net error" :*/
fileprivate let show_proximatePrimaryValue:String = "principal robotPlay "
fileprivate let userLocationMessage:String = "include onr，Ne"
fileprivate let data_rejectFormat:[Character] = ["t"," ","e","r","r","o","r"]

/*: "Currently in mute mode" :*/
fileprivate let showAcquisitionTitle:String = "computer standard proximate charmCurr"
fileprivate let notiSideFormat:String = "y in hour window superior zone"
fileprivate let data_lipTitle:[Character] = ["m","u","t","e"," ","m","o","d","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WhitePlayerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/10.
//

//: import UIKit
import UIKit

/// 播放器状态
//: enum AudioMsgPlayStatus {
enum ToolPlayStatus {
    //: case Unknown
    case Unknown // 未开始
    //: case Waiting
    case Waiting // 等待中
    //: case Playing
    case Playing // 播放中
}

//: enum AudioPlayingErrorStatus: Int {
enum RoundingTitleConvertible: Int {
    //: case AudioPlayerNil = 0
    case AudioPlayerNil = 0 // audioPlayer初始化失败，多半是路径下文件的问题
    //: case FileExpired = 1
    case FileExpired = 1 // 文件过期
    //: case TaskError = 2
    case TaskError = 2 // 下载报错
    //: case NotFileAtPath = 3
    case NotFileAtPath = 3 // 路径下文件不存在
    //: case FirstMuteTip = 100
    case FirstMuteTip = 100 // 静音提醒
}

//: class TalkingVoiceMsgPlayManager: NSObject {
class WhitePlayerDelegate: NSObject {
    //: static let shared = TalkingVoiceMsgPlayManager()
    static let shared = WhitePlayerDelegate()

    //: var  voiceDataList: [TalkingVoiceMsgPlayModel] = []
    var voiceDataList: [MidPlayModel] = []

    //: var playItemDic: Dictionary<String, TalkingVoiceMsgPlayModel> = [:]
    var playItemDic: [String: MidPlayModel] = [:]

    //: var audioPlayer: AVAudioPlayer?
    var audioPlayer: AVAudioPlayer?
    //: var playStatus: AudioMsgPlayStatus = .Unknown
    var playStatus: ToolPlayStatus = .Unknown
    //: var playIndex = 0
    var playIndex = 0 // 当前播放的下标
    //: var waitPlayID = ""   // 将要播放的主键id
    var waitPlayID = "" // 将要播放的主键id
    //: var clickCellId = ""   // 记录点击的
    var clickCellId = "" // 记录点击的
    //: var isMute = false
    var isMute = false // 是否静音，默认否

    //: private let multiDelegate: NSHashTable<AnyObject> = NSHashTable.weakObjects()
    private let multiDelegate: NSHashTable<AnyObject> = NSHashTable.weakObjects()

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: initialization()
        delineation()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    //: func initialization() {
    func delineation() {
        //: self.voiceDataList.removeAll()
        self.voiceDataList.removeAll()
        //: self.playItemDic.removeAll()
        self.playItemDic.removeAll()
        //: self.playIndex = 0
        self.playIndex = 0
    }
}

//: extension TalkingVoiceMsgPlayManager {
extension WhitePlayerDelegate {
    //: func stopAudioPlayer() {
    func commitPending() {
        //: if playStatus != .Unknown {
        if playStatus != .Unknown {
            //: for  model in voiceDataList {
            for model in voiceDataList {
                //: model.isPlayingStatus = 2
                model.isPlayingStatus = 2
                //: model.activityShowStatus = 2
                model.activityShowStatus = 2
            }
        }
        //: if self.audioPlayer != nil {
        if self.audioPlayer != nil {
            //: self.audioPlayer?.stop()
            self.audioPlayer?.stop()
            //: self.audioPlayer = nil
            self.audioPlayer = nil
        }
    }

    /// 播放引用消息
    //: func starPlayReplyMsg(playModel: TalkingVoiceMsgPlayModel) {
    func actionCalendar(playModel: MidPlayModel) {
        //: stopAudioPlayer()
        commitPending()
        //: initialization()
        delineation()
        //: voiceDataList.append(playModel)
        voiceDataList.append(playModel)
        //: let status = Int(playModel.db_voiceCacheWrap.downloadStatus)
        let status = Int(playModel.db_voiceCacheWrap.downloadStatus)
        //: waitPlayID = playModel.db_voiceCacheWrap.msgId
        waitPlayID = playModel.db_voiceCacheWrap.msgId
        //: self.playItemDic[playModel.db_voiceCacheWrap.msgId] = playModel
        self.playItemDic[playModel.db_voiceCacheWrap.msgId] = playModel
        //: let dbFilePath = playModel.db_voiceCacheWrap.db_filePath
        let dbFilePath = playModel.db_voiceCacheWrap.db_filePath
        //: if status == DownloadTaskStatus.finish.rawValue ||
        if status == DutyStatusDownloadHashable.finish.rawValue ||
            //: !dbFilePath.isEmpty && dbFilePath.hasSuffix(".wav")  {
            !dbFilePath.isEmpty && dbFilePath.hasSuffix((String(mainStorageStr.suffix(4))))
        {
            //: starPlayVoiceMsg(filePath: playModel.db_voiceCacheWrap.db_filePath, msgID: playModel.db_voiceCacheWrap.msgId)
            star(filePath: playModel.db_voiceCacheWrap.db_filePath, msgID: playModel.db_voiceCacheWrap.msgId)
            //: } else {
        } else {
            //: let taskModel = VoiceDownloadTaskModel.getVoiceModel(playModel.db_voiceCacheWrap)
            let taskModel = DownloadRouteTaskModel.cookieEngage(playModel.db_voiceCacheWrap)
            //: VoiceDownloadTaskManager.shared.addDownloadTasks([taskModel])
            ManagerReactiveCompatible.shared.gildTheLily([taskModel])
        }
    }

    //: func starPlayMsg(msgArr: [TalkingVoiceMsgPlayModel]) {
    func terminal(msgArr: [MidPlayModel]) {
        //: if msgArr.count == 0 {
        if msgArr.count == 0 {
            //: return
            return
        }
        //: stopAudioPlayer()
        commitPending()
        //: initialization()
        delineation()
        //: voiceDataList += msgArr
        voiceDataList += msgArr
        //: var index = 0
        var index = 0
        //: var tempArray: [VoiceDownloadTaskModel] = []
        var tempArray: [DownloadRouteTaskModel] = []
        //: var firstModel: TalkingVoiceMsgPlayModel?
        var firstModel: MidPlayModel?
        //: for model in msgArr {
        for model in msgArr {
            //: let bindWrap = WCDBVoiceMsgTable.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
            let bindWrap = HelpReaderReactiveCompatible.aboveServer(with: model.db_voiceCacheWrap.msgId)
            //: if bindWrap != nil {
            if bindWrap != nil {
                //: model.db_voiceCacheWrap = bindWrap!
                model.db_voiceCacheWrap = bindWrap!
            }
            //: let isMySend = (model.db_voiceCacheWrap.db_senduid == CompositionReactiveCompatible.share.loginUserMode.userID)
            let isMySend = (model.db_voiceCacheWrap.db_senduid == CompositionReactiveCompatible.share.loginUserMode.userID)
            //: self.playItemDic[model.db_voiceCacheWrap.msgId] = model
            self.playItemDic[model.db_voiceCacheWrap.msgId] = model
            //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
            let status = Int(model.db_voiceCacheWrap.downloadStatus)
            //: if index == 0 {
            if index == 0 {
                //: waitPlayID = model.db_voiceCacheWrap.msgId
                waitPlayID = model.db_voiceCacheWrap.msgId
                //: if status == DownloadTaskStatus.finish.rawValue || isMySend {
                if status == DutyStatusDownloadHashable.finish.rawValue || isMySend {
                    //: firstModel = model
                    firstModel = model
                }
                //: if (status != DownloadTaskStatus.finish.rawValue) {
                if status != DutyStatusDownloadHashable.finish.rawValue {
                    //: if playStatus != .Unknown {
                    if playStatus != .Unknown {
                        //: model.activityShowStatus = 1
                        model.activityShowStatus = 1
                    }
                }
            }
            //: if status != DownloadTaskStatus.finish.rawValue && !isMySend {
            if status != DutyStatusDownloadHashable.finish.rawValue, !isMySend {
                //: let taskModel = VoiceDownloadTaskModel.getVoiceModel(model.db_voiceCacheWrap)
                let taskModel = DownloadRouteTaskModel.cookieEngage(model.db_voiceCacheWrap)
                //: tempArray.append(taskModel)
                tempArray.append(taskModel)
            }
            //: index += 1
            index += 1
        }

        //: if firstModel != nil {
        if firstModel != nil {
            //: firstModel?.isPlayingStatus = 1
            firstModel?.isPlayingStatus = 1
            //: starPlayVoiceMsg(filePath: (firstModel?.db_voiceCacheWrap.db_filePath)!, msgID: (firstModel?.db_voiceCacheWrap.msgId)!)
            star(filePath: (firstModel?.db_voiceCacheWrap.db_filePath)!, msgID: (firstModel?.db_voiceCacheWrap.msgId)!)
        }
        //: VoiceDownloadTaskManager.shared.addDownloadTasks(tempArray)
        ManagerReactiveCompatible.shared.gildTheLily(tempArray)
    }

    //: func starPlayVoiceMsg(filePath: String, msgID: String) {
    func star(filePath: String, msgID: String) {
        //: if self.audioPlayer != nil {
        if self.audioPlayer != nil {
            //: self.audioPlayer?.stop()
            self.audioPlayer?.stop()
            //: self.audioPlayer = nil
            self.audioPlayer = nil
        }
        //: let model = self.playItemDic[msgID]
        let model = self.playItemDic[msgID]
        //: if model == nil {
        if model == nil {
            //: return
            return
        }
        //: var temfilePath = filePath
        var temfilePath = filePath
        //: let theFileName = (temfilePath as NSString).lastPathComponent
        let theFileName = (temfilePath as NSString).lastPathComponent

        // 重编译，相对路径会变
        //: if filePath.contains("Documents/User/voice/") {
        if filePath.contains((String(show_prepareMessage) + String(main_normalBringName))) {
            //: temfilePath = Talking_Chat_voice_SandboxPath + theFileName
            temfilePath = user_explainPath + theFileName
        }
        //: if filePath.contains("Documents/User/record/") {
        if filePath.contains((String(main_remainUrl.prefix(5)) + "ents/U" + String(dataReplacementOwnerOfMsg.suffix(4)) + String(k_submitName))) {
            //: temfilePath = Talking_Chat_record_SandboxPath + theFileName
            temfilePath = kCleanMsg + theFileName
        }
        //: if !FileManager.fileManager.fileExists(atPath: temfilePath) {
        if !FileManager.fileManager.fileExists(atPath: temfilePath) {
            //: model?.isPlayingStatus = 2
            model?.isPlayingStatus = 2
            //: showToast(status: .NotFileAtPath)
            reply(status: .NotFileAtPath)
            //: return
            return
        }
        //: model?.db_voiceCacheWrap.db_isRead = "1"
        model?.db_voiceCacheWrap.db_isRead = "1"
        //: WCDBVoiceMsgTable.db_updateVoiceMsg(model!.db_voiceCacheWrap)
        HelpReaderReactiveCompatible.atALowerPlace(model!.db_voiceCacheWrap)
        //: let session = AVAudioSession.sharedInstance()
        let session = AVAudioSession.sharedInstance()
        //: do {
        do {
            //: try session.setCategory(AVAudioSession.Category.ambient)
            try session.setCategory(AVAudioSession.Category.ambient)
            //: } catch {
        } catch {}
        //: let url = URL.init(fileURLWithPath: temfilePath)
        let url = URL(fileURLWithPath: temfilePath)
        //: do {
        do {
            //: try audioPlayer = AVAudioPlayer.init(contentsOf: url)
            try audioPlayer = AVAudioPlayer(contentsOf: url)
            //: } catch {
        } catch {}
        //: audioPlayer?.delegate = self
        audioPlayer?.delegate = self
        //: audioPlayer?.prepareToPlay()
        audioPlayer?.prepareToPlay()
        //: audioPlayer?.play()
        audioPlayer?.play()
        //: self.playStatus = .Playing
        self.playStatus = .Playing
        //: setMutedDetection()
        indicatorDetection()
    }

    //: func addDaskManagerDelegate() {
    func modeDaskDelegate() {
        //: stopAudioPlayer()
        commitPending()
        //: VoiceDownloadTaskManager.shared.delegate = self
        ManagerReactiveCompatible.shared.delegate = self
    }

    //: func removeDaskManagerDelegate() {
    func product() {
        //: stopAudioPlayer()
        commitPending()
        //: VoiceDownloadTaskManager.shared.delegate = nil
        ManagerReactiveCompatible.shared.delegate = nil
    }
}

//: extension TalkingVoiceMsgPlayManager: AVAudioPlayerDelegate {
extension WhitePlayerDelegate: AVAudioPlayerDelegate {
    //: func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
    func audioPlayerDidFinishPlaying(_: AVAudioPlayer, successfully flag: Bool) {
        //: let lastModel = voiceDataList[playIndex]
        let lastModel = voiceDataList[playIndex]
        //: lastModel.isPlayingStatus = 2
        lastModel.isPlayingStatus = 2
        //: if flag {
        if flag {
            //: if playIndex < voiceDataList.count - 1 {
            if playIndex < voiceDataList.count - 1 {
                //: playIndex += 1
                playIndex += 1
                //: let model = voiceDataList[playIndex]
                let model = voiceDataList[playIndex]
                //: let bindWrap = WCDBVoiceMsgTable.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
                let bindWrap = HelpReaderReactiveCompatible.aboveServer(with: model.db_voiceCacheWrap.msgId)
                //: if bindWrap != nil {
                if bindWrap != nil {
                    //: model.db_voiceCacheWrap = bindWrap!
                    model.db_voiceCacheWrap = bindWrap!
                    //: self.waitPlayID = bindWrap!.msgId
                    self.waitPlayID = bindWrap!.msgId
                }
                //: voiceDataList[playIndex] = model
                voiceDataList[playIndex] = model
                //: self.playItemDic[model.db_voiceCacheWrap.msgId] = model
                self.playItemDic[model.db_voiceCacheWrap.msgId] = model

                //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
                let status = Int(model.db_voiceCacheWrap.downloadStatus)
                //: if status == DownloadTaskStatus.finish.rawValue {
                if status == DutyStatusDownloadHashable.finish.rawValue {
                    //: model.isPlayingStatus = 1
                    model.isPlayingStatus = 1
                    //: starPlayVoiceMsg(filePath: model.db_voiceCacheWrap.db_filePath, msgID: model.db_voiceCacheWrap.msgId)
                    star(filePath: model.db_voiceCacheWrap.db_filePath, msgID: model.db_voiceCacheWrap.msgId)
                    //: playStatus = .Waiting
                    playStatus = .Waiting
                    //: } else if (status == DownloadTaskStatus.error.rawValue) {
                } else if status == DutyStatusDownloadHashable.error.rawValue {
                    //: self.showToast(status: .TaskError)
                    self.reply(status: .TaskError)
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                    //: } else if (status == DownloadTaskStatus.expired.rawValue) {
                } else if status == DutyStatusDownloadHashable.expired.rawValue {
                    //: self.showToast(status: .FileExpired)
                    self.reply(status: .FileExpired)
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                    //: } else if (status == DownloadTaskStatus.cancel.rawValue) {
                } else if status == DutyStatusDownloadHashable.cancel.rawValue {
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                }

                //: } else {
            } else {
                //: playStatus = .Unknown
                playStatus = .Unknown
                //: stopAudioPlayer()
                commitPending()
            }
        }
    }

    //: func audioPlayerDecodeErrorDidOccur(_ player: AVAudioPlayer, error: Error?) {
    func audioPlayerDecodeErrorDidOccur(_: AVAudioPlayer, error: Error?) {
        //: printLog(message: error)
        printLog(message: error)
    }
}

// MARK: - AssistObjectProtocol

//: extension TalkingVoiceMsgPlayManager: VoiceDownloadTaskManagerDelegate {
extension WhitePlayerDelegate: AssistObjectProtocol {
    //: func voiceDownloadFinish(model: VoiceDownloadTaskModel) {
    func start(model: DownloadRouteTaskModel) {
        //: printLog(message: "voice dataTaskDownloadFinish")
        printLog(message: (String(showConversationInviteMessage.suffix(8)) + String(constStorageLabelValue.prefix(5)) + "kDownl" + String(dataSearchPath.prefix(4)) + "inish"))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        self.taskModel(taskModel: model)
    }

    //: func voiceDownloadCancel(model: VoiceDownloadTaskModel) {
    func shouldTo(model: DownloadRouteTaskModel) {
        //: printLog(message: "voice dataTaskDownloadCancel")
        printLog(message: (String(app_overText) + String(k_disabledName.suffix(4)) + "ancel"))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        self.taskModel(taskModel: model)
    }

    //: func voiceDownloadExpired(model: VoiceDownloadTaskModel) {
    func brightFeedback(model: DownloadRouteTaskModel) {
        //: printLog(message: "voice dataTaskDownloadExpired")
        printLog(message: (String(app_tabGalleryId) + String(noti_modelActorIonValue.prefix(6)) + "kDownl" + String(constDeliveryFormat.suffix(4)) + "xpired"))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        self.taskModel(taskModel: model)
    }

    //: func voiceDownloading(model: VoiceDownloadTaskModel) {
    func asCharm(model _: DownloadRouteTaskModel) {}

    //: func voiceDownloadError(model: VoiceDownloadTaskModel) {
    func club(model: DownloadRouteTaskModel) {
        //: printLog(message: "voice dataTaskDownloadErro")
        printLog(message: (noti_ageMessage.replacingOccurrences(of: "warn", with: "o") + String(noti_mailName.prefix(6)) + "taTa" + String(notiServerTitle.prefix(4)) + "wnload" + String(k_bookMessage.prefix(4))))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        self.taskModel(taskModel: model)
    }

    //: func handleDataTaskDownloadDelegate(taskModel: VoiceDownloadTaskModel) {
    func taskModel(taskModel: DownloadRouteTaskModel) {
        //: if voiceDataList.count  == 0 {
        if voiceDataList.count == 0 {
            //: return
            return
        }

        //: if self.waitPlayID == taskModel.taskId {
        if self.waitPlayID == taskModel.taskId {
            //: let model = self.voiceDataList[playIndex]
            let model = self.voiceDataList[playIndex]
            //: let warp = WCDBVoiceMsgTable.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
            let warp = HelpReaderReactiveCompatible.aboveServer(with: model.db_voiceCacheWrap.msgId)
            //: if warp != nil {
            if warp != nil {
                //: model.db_voiceCacheWrap = warp!
                model.db_voiceCacheWrap = warp!
            }
            //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
            let status = Int(model.db_voiceCacheWrap.downloadStatus)
            //: if status == DownloadTaskStatus.finish.rawValue {
            if status == DutyStatusDownloadHashable.finish.rawValue {
                //: model.isPlayingStatus = 1
                model.isPlayingStatus = 1
                //: starPlayVoiceMsg(filePath: taskModel.unZipFilePath, msgID: model.db_voiceCacheWrap.msgId)
                star(filePath: taskModel.unZipFilePath, msgID: model.db_voiceCacheWrap.msgId)

                //: } else if status == DownloadTaskStatus.error.rawValue ||
            } else if status == DutyStatusDownloadHashable.error.rawValue ||
                //: status == DownloadTaskStatus.expired.rawValue ||
                status == DutyStatusDownloadHashable.expired.rawValue ||
                //: status == DownloadTaskStatus.cancel.rawValue {
                status == DutyStatusDownloadHashable.cancel.rawValue
            {
                //: playStatus = .Unknown
                playStatus = .Unknown
                //: model.isPlayingStatus = 2
                model.isPlayingStatus = 2
                //: model.activityShowStatus = 2
                model.activityShowStatus = 2
                //: if status == DownloadTaskStatus.expired.rawValue {
                if status == DutyStatusDownloadHashable.expired.rawValue {
                    //: self.showToast(status: .FileExpired)
                    self.reply(status: .FileExpired)
                    //: } else {
                } else {
                    //: self.showToast(status: .TaskError)
                    self.reply(status: .TaskError)
                }
            }
            //: } else {
        } else {
            //: let warp = WCDBVoiceMsgTable.db_getVoiceMsg(with: taskModel.taskId)
            let warp = HelpReaderReactiveCompatible.aboveServer(with: taskModel.taskId)
            //: let model = self.playItemDic[taskModel.taskId]
            let model = self.playItemDic[taskModel.taskId]
            //: if warp != nil {
            if warp != nil {
                //: model?.db_voiceCacheWrap = warp!
                model?.db_voiceCacheWrap = warp!
            }
        }
    }

    //: func showToast(status: AudioPlayingErrorStatus) {
    func reply(status: RoundingTitleConvertible) {
        //: var toastStr = ""
        var toastStr = ""
        //: switch status {
        switch status {
        //: case .NotFileAtPath, .AudioPlayerNil:
        case .NotFileAtPath, .AudioPlayerNil:
            //: toastStr = "Play Error,File does not exist".localized
            toastStr = (String(showEarlyMsg) + String(appWhyTitle.suffix(7))).localized
        //: break
        //: case .FileExpired:
        case .FileExpired:
            //: toastStr = "Play Error,File expired".localized
            toastStr = (String(constCancelFairMsg.prefix(6)) + "rror," + String(kRouteGivingFormat.suffix(4)) + " expired").localized
        //: break
        //: case .TaskError:
        case .TaskError:
            //: toastStr = "Play Error，Net error".localized
            toastStr = (String(show_proximatePrimaryValue.suffix(5)) + "Erro" + String(userLocationMessage.suffix(4)) + String(data_rejectFormat)).localized
        //: break
        //: case .FirstMuteTip:
        case .FirstMuteTip:
            //: toastStr = "Currently in mute mode".localized
            toastStr = (String(showAcquisitionTitle.suffix(4)) + "entl" + String(notiSideFormat.prefix(5)) + String(data_lipTitle)).localized
            //: break
        }

        //: if toastStr.isEmptyString == false {
        if toastStr.isEmptyString == false {
            //: self.func__showStatusBarErrorMsg(showMsg: toastStr)
            self.foolishness(showMsg: toastStr)
        }
        //: if status.rawValue < 100 {
        if status.rawValue < 100 {
            //: stopAudioPlayer()
            commitPending()
        }
    }
}

//: extension TalkingVoiceMsgPlayManager {
extension WhitePlayerDelegate {
    //: func setMutedDetection() {
    func indicatorDetection() {
        //: RBDMuteSwitch.shared.detectMuteSwitch()
        Inserting.shared.foreRefuse()
        //: RBDMuteSwitch.shared.isMutedBlock = { [weak self] mute in
        Inserting.shared.isMutedBlock = { [weak self] mute in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.isMute = mute
            self.isMute = mute
            //: if self.isMute {
            if self.isMute {
                //: self.showToast(status: .FirstMuteTip)
                self.reply(status: .FirstMuteTip)
            }
        }
    }
}

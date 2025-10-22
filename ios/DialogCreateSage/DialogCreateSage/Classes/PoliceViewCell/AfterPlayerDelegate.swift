
//: Declare String Begin

/*: "This feature is not available during a call" :*/
fileprivate let constOthersTitle:[UInt8] = [0x7a,0x46,0x47,0x5d,0xe,0x48,0x4b,0x4f,0x5a,0x5b,0x5c,0x4b,0xe,0x47,0x5d,0xe,0x40,0x41,0x5a,0xe,0x4f,0x58,0x4f,0x47,0x42,0x4f,0x4c,0x42,0x4b,0xe,0x4a,0x5b,0x5c,0x47,0x40,0x49,0xe,0x4f,0xe,0x4d,0x4f,0x42,0x42]

private func seaAccessEmpty(main num: UInt8) -> UInt8 {
    return num ^ 46
}

/*: "wav" :*/
fileprivate let notiNextMessage:String = "wacoordinator"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AfterPlayerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/13.
//

//: import UIKit
import UIKit

//: protocol TalkingAudioToolDelegate: NSObject {
protocol RelevantReactiveCompatible: NSObject {
    /// 录音时间
    //: func func__recordTime(currentTime: Double)
    func contain(currentTime: Double)

    /// 播放时间
    //: func func__playTime(currentTime: Double)
    func smart(currentTime: Double)

    /// 录音完毕的回调
    //: func func__recordFinishWithFile(filePath: String)
    func skipIn(filePath: String)

    /// 播放完毕的回调
    //: func playerStatusChange(status: AudioPlayerStatus)
    func change(status: FinishStickDefaultsSerializable)
}

//: enum AudioPlayerStatus: Int {
enum FinishStickDefaultsSerializable: Int {
    //: case PlayerFinish = 0
    case PlayerFinish = 0 // 播放完成
    //: case PlayerInterruption
    case PlayerInterruption // 系统导致播放中断
}

//: class TalkingAudioTool: NSObject {
class AfterPlayerDelegate: NSObject {
    //: open weak var delegate: TalkingAudioToolDelegate?
    open weak var delegate: RelevantReactiveCompatible?

    //: let fm = FileManager.default
    let fm = FileManager.default
    //: var filePath = ""
    var filePath = ""
    //: var recordTimer: Timer?
    var recordTimer: Timer?
    //: var playTimer: Timer?
    var playTimer: Timer?
    //: var isRecording = false
    var isRecording = false /// 是否正在录音
    //: var isFinishPlay = false
    var isFinishPlay = false /// 是否完成播放
    //: var isDeleteFile = true
    var isDeleteFile = true /// 是否录音完删掉本地音频文件
    //: var player: AVAudioPlayer?
    var player: AVAudioPlayer?

    //: var recorder: AVAudioRecorder?
    var recorder: AVAudioRecorder?

    // singleton
    //: static let shared = TalkingAudioTool()
    static let shared = AfterPlayerDelegate()
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: NotificationCenter.default.addObserver(self, selector: #selector(interruptionChange(notification:)), name: AVAudioSession.interruptionNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(requireNotification(notification:)), name: AVAudioSession.interruptionNotification, object: nil)
    }

    //: func getVoiceRecordLocalPathWithFileType(path: NSString) -> String {
    func lifeless(path: NSString) -> String {
        //: if !FileManager.default.fileExists(atPath: Talking_Chat_record_SandboxPath) {
        if !FileManager.default.fileExists(atPath: kCleanMsg) {
            //: do {
            do {
                //: try FileManager.default.createDirectory(atPath: Talking_Chat_record_SandboxPath, withIntermediateDirectories: true, attributes: nil)
                try FileManager.default.createDirectory(atPath: kCleanMsg, withIntermediateDirectories: true, attributes: nil)
                //: }catch {
            } catch {}
        }

        //: let timestr = NSDate.timeIntervalSinceReferenceDate
        let timestr = NSDate.timeIntervalSinceReferenceDate
        //: let uid = CompositionReactiveCompatible.share.loginUserMode.userID
        let uid = CompositionReactiveCompatible.share.loginUserMode.userID
        //: if uid.count == 0 { return "" }
        if uid.count == 0 { return "" }

        //: return Talking_Chat_record_SandboxPath + "_" + uid + "_" + String(Int(timestr)) + "." + (path as String)
        return kCleanMsg + "_" + uid + "_" + String(Int(timestr)) + "." + (path as String)
    }
}

//: extension TalkingAudioTool: AVAudioRecorderDelegate, AVAudioPlayerDelegate {
extension AfterPlayerDelegate: AVAudioRecorderDelegate, AVAudioPlayerDelegate {
    /// 录制、播放过程中中断
    //: @objc func interruptionChange(notification: NSNotification) -> Void {
    @objc func requireNotification(notification: NSNotification) {
        //: let dic = notification.userInfo as![String: AnyObject]
        let dic = notification.userInfo as! [String: AnyObject]

        //: let changeReason = dic[AVAudioSessionInterruptionTypeKey]
        let changeReason = dic[AVAudioSessionInterruptionTypeKey]
        //: if changeReason?.intValue ?? 0 == AVAudioSession.InterruptionType.began.rawValue {
        if changeReason?.intValue ?? 0 == AVAudioSession.InterruptionType.began.rawValue {
            //: self.func__showStatusBarErrorMsg(showMsg: "This feature is not available during a call".localized)
            self.foolishness(showMsg: String(bytes: constOthersTitle.map{seaAccessEmpty(main: $0)}, encoding: .utf8)!.localized)
            //: if self.isRecording {
            if self.isRecording {
                //: self.delegate?.func__recordFinishWithFile(filePath: self.filePath)
                self.delegate?.skipIn(filePath: self.filePath)
                //: self.isRecording = false
                self.isRecording = false
//                destroyRecordTimer()
                //: }else {
            } else {
                //: self.delegate?.playerStatusChange(status: .PlayerInterruption)
                self.delegate?.change(status: .PlayerInterruption)
            }
        }
    }

    ///  录制完成
    //: func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
    func audioRecorderDidFinishRecording(_: AVAudioRecorder, successfully _: Bool) {
        //: self.delegate?.func__recordFinishWithFile(filePath: self.filePath)
        self.delegate?.skipIn(filePath: self.filePath)
    }

    /// 播放完成
    //: func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
    func audioPlayerDidFinishPlaying(_: AVAudioPlayer, successfully _: Bool) {
        //: self.delegate?.playerStatusChange(status: .PlayerFinish)
        self.delegate?.change(status: .PlayerFinish)
    }
}

//: extension TalkingAudioTool {
extension AfterPlayerDelegate {
    //: func BeginRecord() {
    func fall() {
        //: deleteFile()
        deal()
        //: let session = AVAudioSession.sharedInstance()
        let session = AVAudioSession.sharedInstance()
        //: do {
        do {
            //: try session.setCategory(AVAudioSession.Category.playAndRecord)
            try session.setCategory(AVAudioSession.Category.playAndRecord)
            //: try session.setActive(true)
            try session.setActive(true)
            //: } catch let error {
        } catch {
            //: NSLog("Error crenting player: %@", error.localizedDescription)
        }
        //: let recordSetting  = [
        let recordSetting = [
            // 编码格式
            //: AVFormatIDKey: kAudioFormatLinearPCM,
            AVFormatIDKey: kAudioFormatLinearPCM,
            // 采样率
            //: AVSampleRateKey: NSNumber(value: 16000.00),
            AVSampleRateKey: NSNumber(value: 16000.00),
            // 通道数
            //: AVNumberOfChannelsKey: NSNumber(value: 1),
            AVNumberOfChannelsKey: NSNumber(value: 1),
            // 采样位数
            //: AVLinearPCMBitDepthKey: NSNumber(value: 16),
            AVLinearPCMBitDepthKey: NSNumber(value: 16),
            // 录音质量
            //: AVEncoderAudioQualityKey: NSNumber(value: AVAudioQuality.high.rawValue)
            AVEncoderAudioQualityKey: NSNumber(value: AVAudioQuality.high.rawValue), // 录音质量

            //: ] as [String: Any]
        ] as [String: Any]

        //: let path =  getVoiceRecordLocalPathWithFileType(path: "wav")
        let path = lifeless(path: (notiNextMessage.replacingOccurrences(of: "coordinator", with: "v")) as NSString)
        //: let url = URL.init(fileURLWithPath: path)
        let url = URL(fileURLWithPath: path)
        //: filePath = path
        filePath = path
        //: do {
        do {
            //: try  recorder = AVAudioRecorder.init(url: url, settings: recordSetting)
            try recorder = AVAudioRecorder(url: url, settings: recordSetting)
            //: recorder?.isMeteringEnabled = true
            recorder?.isMeteringEnabled = true
            //: recorder?.prepareToRecord()
            recorder?.prepareToRecord()
            //: recorder?.record()
            recorder?.record()
            //: recorder?.updateMeters()
            recorder?.updateMeters()
            //: recorder?.delegate = self
            recorder?.delegate = self

            //: } catch {
        } catch {}

        //: if self.recorder?.prepareToRecord() == true {
        if self.recorder?.prepareToRecord() == true {
            //: self.recorder?.record()
            self.recorder?.record()
            //: createRecordTimer()
            supposed()
            //: self.isRecording = true
            self.isRecording = true
            //: NSLog("开始录音 : %@", filePath)
        }

        //: self.isFinishPlay = true
        self.isFinishPlay = true
    }

    //: func stopRecord() {
    func from() {
        //: self.recorder?.stop()
        self.recorder?.stop()
        //: self.isRecording = false
        self.isRecording = false
        //: destroyRecordTimer()
        recordBy()
        //: NSLog("结束录音")
    }

    //: func createRecordTimer() {
    func supposed() {
        //: destroyRecordTimer()
        recordBy()

        //: recordTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(recordTick(time:)), userInfo: nil, repeats: true)
        recordTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(performTo(time:)), userInfo: nil, repeats: true)
        //: if let curTime: Timer = recordTimer {
        if let curTime: Timer = recordTimer {
            //: RunLoop.main.add(curTime, forMode: .common)
            RunLoop.main.add(curTime, forMode: .common)
        }
    }

    //: @objc func recordTick(time: Timer) {
    @objc func performTo(time _: Timer) {
        //: recorder?.updateMeters()
        recorder?.updateMeters()
        //: let interval = recorder?.currentTime ?? 0
        let interval = recorder?.currentTime ?? 0
        //: self.recorder?.updateMeters()
        self.recorder?.updateMeters()
        //: self.delegate?.func__recordTime(currentTime: interval)
        self.delegate?.contain(currentTime: interval)
    }

    //: func destroyRecordTimer() {
    func recordBy() {
        //: if recordTimer != nil {
        if recordTimer != nil {
            //: recordTimer?.invalidate()
            recordTimer?.invalidate()
            //: recordTimer = nil
            recordTimer = nil
        }
    }

    //: func play() {
    func premium() {
        //: if AVAudioSession.sharedInstance().category != .ambient {
        if AVAudioSession.sharedInstance().category != .ambient {
            //: let audioSession = AVAudioSession.sharedInstance()
            let audioSession = AVAudioSession.sharedInstance()
            //: do {
            do {
                //: try audioSession.setCategory(.ambient)
                try audioSession.setCategory(.ambient)
                //: } catch {
            } catch {}
        }

        //: if self.isFinishPlay {
        if self.isFinishPlay {
            //: if self.player != nil {
            if self.player != nil {
                //: self.player = nil
                self.player = nil
            }
            //: let url: NSURL? = NSURL.init(string: filePath)
            let url: NSURL? = NSURL(string: filePath)
            //: do {
            do {
                //: try self.player = AVAudioPlayer.init(contentsOf: url! as URL)
                try self.player = AVAudioPlayer(contentsOf: url! as URL)
                //: self.player?.delegate = self
                self.player?.delegate = self
                //: NSLog("开始播放")
                // 开始播放
                //: if self.player?.prepareToPlay() == true {
                if self.player?.prepareToPlay() == true {
                    //: self.player?.play()
                    self.player?.play()
                    //: self.isFinishPlay = false
                    self.isFinishPlay = false
                    //: createPlayTimer()
                    valid()
                }

                //: } catch let error {
            } catch {
                //: NSLog("Error crenting player: %@", error.localizedDescription)
            }

            //: }else {
        } else {
            // 开始播放
            //: if self.player?.prepareToPlay() == true {
            if self.player?.prepareToPlay() == true {
                //: self.player?.play()
                self.player?.play()
                //: createPlayTimer()
                valid()
            }
        }
    }

    //: func stopPlay() {
    func stop() {
        //: self.player?.pause()
        self.player?.pause()
        //: destroyPLayTimer()
        seatTimer()
    }

    //: func finishPlay() {
    func compareBig() {
        //: self.isFinishPlay = true
        self.isFinishPlay = true
        //: destroyPLayTimer()
        seatTimer()
        //: let currentTime: Double = self.player?.duration ?? 0
        let currentTime: Double = self.player?.duration ?? 0
        //: self.delegate?.func__playTime(currentTime: currentTime)
        self.delegate?.smart(currentTime: currentTime)
    }

    //: func destroy() {
    func foremost() {
        //: if self.isRecording {
        if self.isRecording {
            //: self.recorder?.stop()
            self.recorder?.stop()
        }
        //: if self.recorder != nil {
        if self.recorder != nil {
            //: self.recorder?.delegate = nil
            self.recorder?.delegate = nil
            //: self.recorder = nil
            self.recorder = nil
        }

        //: if self.player != nil {
        if self.player != nil {
            //: self.player?.delegate = nil
            self.player?.delegate = nil
            //: self.player = nil
            self.player = nil
        }

        //: let session = AVAudioSession.sharedInstance()
        let session = AVAudioSession.sharedInstance()
        //: do {
        do {
            //: try session.setActive(false)
            try session.setActive(false)
            //: } catch let error {
        } catch {
            //: NSLog("Error crenting player: %@", error.localizedDescription)
        }
        //: self.delegate = nil
        self.delegate = nil
        //: deleteFile()
        deal()
        //: destroyRecordTimer()
        recordBy()
        //: destroyPLayTimer()
        seatTimer()
    }

    //: func createPlayTimer() {
    func valid() {
        //: playTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(playTick(time:)), userInfo: nil, repeats: true)
        playTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(rootTime(time:)), userInfo: nil, repeats: true)
        //: if let curTime: Timer = recordTimer {
        if let curTime: Timer = recordTimer {
            //: RunLoop.main.add(curTime, forMode: .common)
            RunLoop.main.add(curTime, forMode: .common)
        }
    }

    //: @objc func playTick(time: Timer) {
    @objc func rootTime(time _: Timer) {
        //: if self.player != nil {
        if self.player != nil {
            //: let currentTime: Double = self.player!.duration - self.player!.currentTime
            let currentTime: Double = self.player!.duration - self.player!.currentTime
            //: self.delegate?.func__playTime(currentTime: currentTime)
            self.delegate?.smart(currentTime: currentTime)
        }
    }

    //: func destroyPLayTimer() {
    func seatTimer() {
        //: if playTimer != nil {
        if playTimer != nil {
            //: playTimer?.invalidate()
            playTimer?.invalidate()
            //: playTimer = nil
            playTimer = nil
        }
    }

    //: func deleteFile() {
    func deal() {
        //: if isDeleteFile {
        if isDeleteFile {
            //: if fm.fileExists(atPath: filePath) {
            if fm.fileExists(atPath: filePath) {
                //: try? fm.removeItem(atPath: filePath)
                try? fm.removeItem(atPath: filePath)
            }
        }
    }
}

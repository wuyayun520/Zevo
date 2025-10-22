
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let app_matchTitle:[UInt8] = [0xc1,0xc6,0xc1,0xdc,0x80,0xcb,0xc7,0xcc,0xcd,0xda,0x92,0x81,0x88,0xc0,0xc9,0xdb,0x88,0xc6,0xc7,0xdc,0x88,0xca,0xcd,0xcd,0xc6,0x88,0xc1,0xc5,0xd8,0xc4,0xcd,0xc5,0xcd,0xc6,0xdc,0xcd,0xcc]

private func scriptHalf(name num: UInt8) -> UInt8 {
    return num ^ 168
}

/*: "TRTC 视频通话向SDK发送采集的视频帧图片:  :*/
fileprivate let dataEmptyUrl:String = "TRTC publicly priority submit lay"
fileprivate let mainWaveTellData:String = "sale far purchase soundSDK发送"
fileprivate let app_fatalFlushKey:String = "activity"

/*: "LIVE 直播向SDK发送采集的视频帧图片:  :*/
fileprivate let kMediumExecuteValue:String = "LIVE 直send recommendation around route task"
fileprivate let noti_seeMessage:String = "K\u{53d1}送采集"
fileprivate let app_shadowFollowingFormat:String = " "

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WarningView.swift
//  AbroadTalking
//
//  Created by young on 2022/11/9.
//

//: import CoreMedia
import CoreMedia
//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional
//: import UIKit
import UIKit

//: class TalkingTRTCVideoView: UIView {
class WarningView: UIView {
    // 直播推流类
    //: private var livePusher: TXLivePush?
    private var livePusher: TXLivePush?
    // 日志上报间隔，每秒17帧，5s统计一次
    //: private var logReportInterval = 85
    private var logReportInterval = 85
    //: private var liveCallCount = 0
    private var liveCallCount = 0
    //: private var trtcCallCount = 0
    private var trtcCallCount = 0

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: app_matchTitle.map{scriptHalf(name: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: private lazy var captureView: STFilterView = {
    private lazy var captureView: SeparateOutView = {
        //: let v = STFilterView(wihtVideoConversation: "\(AVCaptureSession.Preset.hd1280x720.rawValue)")
        let v = SeparateOutView(produce: "\(AVCaptureSession.Preset.hd1280x720.rawValue)")
        //: v?.frame = self.bounds
        v?.frame = self.bounds
        //: v?.delegate = self
        v?.delegate = self
        //: return v!
        return v!
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingTRTCVideoView {
extension WarningView {
    /// 开启本地预览
    /// - Parameters:
    ///   - isSmallWindow: 是否自己在小窗口
    ///   - livePusher: 是否用tx推流
    //: func startPreView(isSmallWindow: Bool, livePusher: TXLivePush? = nil) {
    func pursuingPusher(isSmallWindow: Bool, livePusher: TXLivePush? = nil) {
        //: guard SenseTime_Use == true else { return }
        guard notiNetPointName == true else { return }

        //: self.livePusher = livePusher
        self.livePusher = livePusher

        //: if self.captureView.superview == nil {
        if self.captureView.superview == nil {
            //: self.addSubview(self.captureView)
            self.addSubview(self.captureView)
            //: self.captureView.snp.makeConstraints { make in
            self.captureView.snp.makeConstraints { make in
                //: make.edges.equalToSuperview()
                make.edges.equalToSuperview()
            }
            //: guard self.captureView.stCamera != nil else {
            guard self.captureView.stCamera != nil else {
                //: return
                return
            }
            //: self.captureView.stCamera.startRunning()
            self.captureView.stCamera.total()
        }
        //: self.captureView.setupVideoConversationPreviewSize(isSmallWindow)
        self.captureView.overleap(isSmallWindow)
    }

    /// 停止预览
    //: func stopPreView() {
    func goOn() {
        //: guard SenseTime_Use == true else { return }
        guard notiNetPointName == true else { return }

        //: guard self.captureView.stCamera != nil else {
        guard self.captureView.stCamera != nil else {
            //: return
            return
        }
        //: self.captureView.stCamera.stopRunning()
        self.captureView.stCamera.responseBuild()
        //: self.captureView.removeFromSuperview()
        self.captureView.removeFromSuperview()
    }

    /// 切换摄像头
    /// - Parameter isFront: 是否前置摄像头
    //: func switchTRTCCamer(isFront: Bool) {
    func imaginationImageRecover(isFront _: Bool) {
        //: guard SenseTime_Use == true else { return }
        guard notiNetPointName == true else { return }
        //: guard self.captureView.stCamera != nil else {
        guard self.captureView.stCamera != nil else {
            //: return
            return
        }
        //: if self.captureView.stCamera.devicePosition == AVCaptureDevice.Position.back {
        if self.captureView.stCamera.devicePosition == AVCaptureDevice.Position.back {
            //: self.captureView.stCamera.devicePosition = AVCaptureDevice.Position.front
            self.captureView.stCamera.devicePosition = AVCaptureDevice.Position.front
            //: } else {
        } else {
            //: self.captureView.stCamera.devicePosition = AVCaptureDevice.Position.back
            self.captureView.stCamera.devicePosition = AVCaptureDevice.Position.back
        }
    }

    /// 开启摄像头
    /// - Parameter isOpen: 是否开启
    //: func setTRTCCamera(isOpen: Bool) {
    func decideShould(isOpen: Bool) {
        //: guard SenseTime_Use == true else { return }
        guard notiNetPointName == true else { return }
        //: guard self.captureView.stCamera != nil else {
        guard self.captureView.stCamera != nil else {
            //: return
            return
        }
        //: if isOpen {
        if isOpen {
            //: self.captureView.stCamera.startRunning()
            self.captureView.stCamera.total()
            //: } else {
        } else {
            //: self.captureView.stCamera.stopRunning()
            self.captureView.stCamera.responseBuild()
        }
    }
}

// MARK: - STBeautyProcessProtocol

//: extension TalkingTRTCVideoView: STFilterViewDelegete {
extension WarningView: FilterDelete {
    // TRTC推流
    //: func stVideoBeautyView(_ beautyView: STFilterView!, didProcessVideoSampleBuffer sampleBuffer: CVPixelBuffer!) {
    func center(_: SeparateOutView!, view sampleBuffer: CVPixelBuffer!) {
        //: guard self.livePusher == nil else { return }
        guard self.livePusher == nil else { return }
        //: let videoBuffer = TRTCVideoFrame()
        let videoBuffer = TRTCVideoFrame()
        //: videoBuffer.pixelFormat = TRTCVideoPixelFormat._32BGRA
        videoBuffer.pixelFormat = TRTCVideoPixelFormat._32BGRA
        //: videoBuffer.bufferType = TRTCVideoBufferType.pixelBuffer
        videoBuffer.bufferType = TRTCVideoBufferType.pixelBuffer
        //: videoBuffer.pixelBuffer = sampleBuffer
        videoBuffer.pixelBuffer = sampleBuffer
        //: TRTCCloud.sharedInstance().sendCustomVideoData(.big, frame: videoBuffer)
        TRTCCloud.sharedInstance().sendCustomVideoData(.big, frame: videoBuffer)
        //: trtcCallCount += 1
        trtcCallCount += 1
        //: if trtcCallCount >= logReportInterval {
        if trtcCallCount >= logReportInterval {
            //: if let image = sampleBufferToImage(sampleBuffer) {
            if let image = digitiserJudge(sampleBuffer) {
                //: UploadLogTool.writeLog(msg: "TRTC 视频通话向SDK发送采集的视频帧图片: \(image.size)")
                FinishThen.onicial(msg: (String(dataEmptyUrl.prefix(5)) + "视\u{9891}\u{901a}\u{8bdd}向" + String(mainWaveTellData.suffix(5)) + "采集的\u{89c6}\u{9891}\u{5e27}图片:" + app_fatalFlushKey.replacingOccurrences(of: "activity", with: " ")) + "\(image.size)")
            }
            //: trtcCallCount = 0
            trtcCallCount = 0
        }
    }

    // TXLivePush推流
    //: func stFilterView(_ beautyView: STFilterView!, didProcessSampleBuffer sampleBuffer: CMSampleBuffer!) {
    func failure(_: SeparateOutView!, equal sampleBuffer: CMSampleBuffer!) {
        //: if livePusher != nil {
        if livePusher != nil {
            //: livePusher?.sendVideoSampleBuffer(sampleBuffer)
            livePusher?.sendVideoSampleBuffer(sampleBuffer)
            //: liveCallCount += 1
            liveCallCount += 1
            //: if liveCallCount >= logReportInterval {
            if liveCallCount >= logReportInterval {
                //: if let imageBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) {
                if let imageBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) {
                    //: if let image = sampleBufferToImage(imageBuffer) {
                    if let image = digitiserJudge(imageBuffer) {
                        //: UploadLogTool.writeLog(msg: "LIVE 直播向SDK发送采集的视频帧图片: \(image.size)")
                        FinishThen.onicial(msg: (String(kMediumExecuteValue.prefix(6)) + "播向SD" + noti_seeMessage + "\u{7684}视频帧图片:" + app_shadowFollowingFormat.capitalized) + "\(image.size)")
                    }
                }

                //: liveCallCount = 0
                liveCallCount = 0
            }
        }
    }

    //: func sampleBufferToImage(_ imageBuffer: CVImageBuffer) -> UIImage? {
    func digitiserJudge(_ imageBuffer: CVImageBuffer) -> UIImage? {
        //: CVPixelBufferLockBaseAddress(imageBuffer, CVPixelBufferLockFlags(rawValue: 0))
        CVPixelBufferLockBaseAddress(imageBuffer, CVPixelBufferLockFlags(rawValue: 0))
        //: let baseAddress = CVPixelBufferGetBaseAddress(imageBuffer)
        let baseAddress = CVPixelBufferGetBaseAddress(imageBuffer)
        //: let bytesPerRow = CVPixelBufferGetBytesPerRow(imageBuffer)
        let bytesPerRow = CVPixelBufferGetBytesPerRow(imageBuffer)
        //: let width = CVPixelBufferGetWidth(imageBuffer)
        let width = CVPixelBufferGetWidth(imageBuffer)
        //: let height = CVPixelBufferGetHeight(imageBuffer)
        let height = CVPixelBufferGetHeight(imageBuffer)
        //: let colorSpace = CGColorSpaceCreateDeviceRGB()
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        //: let bitmapInfo = CGBitmapInfo(rawValue: CGImageAlphaInfo.noneSkipFirst.rawValue | CGBitmapInfo.byteOrder32Little.rawValue)
        let bitmapInfo = CGBitmapInfo(rawValue: CGImageAlphaInfo.noneSkipFirst.rawValue | CGBitmapInfo.byteOrder32Little.rawValue)
        //: guard let context = CGContext(data: baseAddress, width: width, height: height,bitsPerComponent:8, bytesPerRow: bytesPerRow, space: colorSpace,
        guard let context = CGContext(data: baseAddress, width: width, height: height, bitsPerComponent: 8, bytesPerRow: bytesPerRow, space: colorSpace,
                                      //: bitmapInfo: bitmapInfo.rawValue) else { return nil }
                                      bitmapInfo: bitmapInfo.rawValue) else { return nil }
        //: guard let cgImage = context.makeImage() else { return nil }
        guard let cgImage = context.makeImage() else { return nil }
        //: CVPixelBufferUnlockBaseAddress(imageBuffer,CVPixelBufferLockFlags(rawValue: 0))
        CVPixelBufferUnlockBaseAddress(imageBuffer, CVPixelBufferLockFlags(rawValue: 0))
        //: return UIImage(cgImage: cgImage)
        return UIImage(cgImage: cgImage)
    }
}

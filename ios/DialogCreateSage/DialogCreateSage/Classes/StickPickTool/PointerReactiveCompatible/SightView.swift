
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let main_goTellData:[UInt8] = [0x62,0x65,0x62,0x7f,0x23,0x68,0x64,0x6f,0x6e,0x79,0x31,0x22,0x2b,0x63,0x6a,0x78,0x2b,0x65,0x64,0x7f,0x2b,0x69,0x6e,0x6e,0x65,0x2b,0x62,0x66,0x7b,0x67,0x6e,0x66,0x6e,0x65,0x7f,0x6e,0x6f]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SightView.swift
//  AbroadTalking
//
//  Created by young on 2022/10/31.
//

//: import UIKit
import UIKit

//: typealias SlidingBeginHandler = () -> Void
typealias SlidingBeginHandler = () -> Void
//: typealias SlidingHandler = ( _ direction: TalkingSlideDirection) -> Void
typealias SlidingHandler = (_ direction: BroadFactorSlideDirection) -> Void
//: typealias SlidingEndHandler = () -> Void
typealias SlidingEndHandler = () -> Void
//: typealias ContentDidScrollHandler = () -> Void
typealias ContentDidScrollHandler = () -> Void
//: typealias DragWillBeginHandler = () -> Void
typealias DragWillBeginHandler = () -> Void
//: typealias DragDidEndHandler = () -> Void
typealias DragDidEndHandler = () -> Void

//: class TalkingVideoEditSliderView: UIView {
class SightView: UIView {
    //: var cropStart: CGFloat {
    var cropStart: CGFloat {
        //: let offset = overlay.startOffset - (LeftMargin - self.contentView.contentOffset.x)
        let offset = overlay.startOffset - (app_robotPathClickId - self.contentView.contentOffset.x)
        //: let wholeTime = self.duration>self.maxDuration ? self.maxDuration:self.duration
        let wholeTime = self.duration > self.maxDuration ? self.maxDuration : self.duration
        //: let startPercent = offset/self.contentView.contentSize.width
        let startPercent = offset / self.contentView.contentSize.width
        //: let startTime = startPercent * wholeTime
        let startTime = startPercent * wholeTime
        //: return startTime
        return startTime
    }

    //: var cropDuration: CGFloat {
    var cropDuration: CGFloat {
        //: let rangeTime = self.overlay.coverlength*self.duration/self.contentView.contentSize.width
        let rangeTime = self.overlay.coverlength * self.duration / self.contentView.contentSize.width
        //: return rangeTime
        return rangeTime
    }

    //: var cropRange: CMTimeRange {
    var cropRange: CMTimeRange {
        //: let startTime = cropStart
        let startTime = cropStart
        //: let startCMTime = CMTimeMake(value: Int64(startTime)*Int64(self.timescale), timescale: self.timescale)
        let startCMTime = CMTimeMake(value: Int64(startTime) * Int64(self.timescale), timescale: self.timescale)
        //: let rangeTime = cropDuration
        let rangeTime = cropDuration
        //: let rangeCMTime = CMTimeMake(value: Int64(rangeTime)*Int64(self.timescale), timescale: self.timescale)
        let rangeCMTime = CMTimeMake(value: Int64(rangeTime) * Int64(self.timescale), timescale: self.timescale)

        //: let range = CMTimeRange(start: startCMTime, end: rangeCMTime)
        let range = CMTimeRange(start: startCMTime, end: rangeCMTime)
        //: return range
        return range
    }

    //: var framesInScreen = 0
    var framesInScreen = 0
    //: var imgHeight: CGFloat = 0.0
    var imgHeight: CGFloat = 0.0
    //: var slidingBeginBlock: SlidingBeginHandler?
    var slidingBeginBlock: SlidingBeginHandler?
    //: var slidingEndBlock: SlidingEndHandler?
    var slidingEndBlock: SlidingEndHandler?
    //: var slidingBlock: SlidingHandler?
    var slidingBlock: SlidingHandler?
    //: var contentDidScrollBlock: ContentDidScrollHandler?
    var contentDidScrollBlock: ContentDidScrollHandler?
    //: var dragWillBeginBlock: DragWillBeginHandler?
    var dragWillBeginBlock: DragWillBeginHandler?
    //: var dragDidEndBlock: DragDidEndHandler?
    var dragDidEndBlock: DragDidEndHandler?
    //: private var url: URL?
    private var url: URL?
    //: private var imgWidth: CGFloat = 0.0
    private var imgWidth: CGFloat = 0.0
    //: private var duration: CGFloat = 0.0
    private var duration: CGFloat = 0.0
    //: private var minvideoduration: CGFloat = 0.0
    private var minvideoduration: CGFloat = 0.0
    //: private var maxDuration: CGFloat = 0.0
    private var maxDuration: CGFloat = 0.0
    //: private var timescale: CMTimeScale = 0
    private var timescale: CMTimeScale = 0
    //: private var imageViewArr = [UIImageView]()
    private var imageViewArr = [UIImageView]()
    //: private var imageGenerator: AVAssetImageGenerator?
    private var imageGenerator: AVAssetImageGenerator?
    //: init(frame: CGRect, url: URL, imgWidth: CGFloat, maxDuration: CGFloat, minVideoDuration: CGFloat) {
    init(frame: CGRect, url: URL, imgWidth: CGFloat, maxDuration: CGFloat, minVideoDuration: CGFloat) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: self.url = url
        self.url = url
        //: self.duration = 0.0
        self.duration = 0.0
        //: self.timescale = 600
        self.timescale = 600
        //: self.framesInScreen = 3
        self.framesInScreen = 3
        //: self.imgHeight = 50
        self.imgHeight = 50
        //: self.imgWidth = imgWidth
        self.imgWidth = imgWidth
        //: self.maxDuration = maxDuration
        self.maxDuration = maxDuration
        //: self.minvideoduration = minVideoDuration
        self.minvideoduration = minVideoDuration

        //: let asset = AVAsset(url: self.url!)
        let asset = AVAsset(url: self.url!)
        //: self.imageGenerator = AVAssetImageGenerator(asset: asset)
        self.imageGenerator = AVAssetImageGenerator(asset: asset)
        //: imageGenerator?.appliesPreferredTrackTransform = true
        imageGenerator?.appliesPreferredTrackTransform = true
        //: imageGenerator?.maximumSize = CGSize(width: 200, height: 200)
        imageGenerator?.maximumSize = CGSize(width: 200, height: 200)
        //: imageGenerator?.apertureMode = .encodedPixels
        imageGenerator?.apertureMode = .encodedPixels
        //: imageGenerator?.requestedTimeToleranceAfter = .zero
        imageGenerator?.requestedTimeToleranceAfter = .zero
        //: imageGenerator?.requestedTimeToleranceBefore = .zero
        imageGenerator?.requestedTimeToleranceBefore = .zero

        //: let assetDuration = asset.duration
        let assetDuration = asset.duration
        //: self.timescale = assetDuration.timescale
        self.timescale = assetDuration.timescale
        //: self.duration = CGFloat(CMTimeGetSeconds(assetDuration))
        self.duration = CGFloat(CMTimeGetSeconds(assetDuration))

        //: setupSubviews()
        fragmentPress()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: main_goTellData.map{$0^11}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: private lazy var contentView: UIScrollView = {
    private lazy var contentView: UIScrollView = {
        //: let v = UIScrollView()
        let v = UIScrollView()
        //: v.decelerationRate = .fast
        v.decelerationRate = .fast
        //: v.showsHorizontalScrollIndicator = false
        v.showsHorizontalScrollIndicator = false
        //: v.delegate = self
        v.delegate = self
        //: v.clipsToBounds = false
        v.clipsToBounds = false
        //: self.clipsToBounds = false
        self.clipsToBounds = false

        //: let timegap = CGFloat(framesInScreen)
        let timegap = CGFloat(framesInScreen)
        //: var i = 0
        var i = 0
        //: var time: CGFloat = 0.0
        var time: CGFloat = 0.0
        //: var totalWidth: CGFloat = 0.0
        var totalWidth: CGFloat = 0.0

        //: while time <= self.duration {
        while time <= self.duration {
            //: let imv = UIImageView()
            let imv = UIImageView()
            //: imv.contentMode = .scaleAspectFill
            imv.contentMode = .scaleAspectFill
            //: imv.clipsToBounds = true
            imv.clipsToBounds = true
            //: v.addSubview(imv)
            v.addSubview(imv)

            //: var width: CGFloat = self.imgWidth
            var width: CGFloat = self.imgWidth
            //: if (time + timegap > self.duration) {
            if time + timegap > self.duration {
                //: width = (self.duration - time) / timegap * self.imgWidth
                width = (self.duration - time) / timegap * self.imgWidth
            }

            //: imv.snp.makeConstraints { make in
            imv.snp.makeConstraints { make in
                //: make.left.equalToSuperview().offset(CGFloat(i) * self.imgWidth)
                make.left.equalToSuperview().offset(CGFloat(i) * self.imgWidth)
                //: make.top.equalToSuperview()
                make.top.equalToSuperview()
                //: make.size.equalTo(CGSize(width: width, height: self.imgHeight))
                make.size.equalTo(CGSize(width: width, height: self.imgHeight))
            }

            //: let image = self.imageFromVideo(point: time)
            let image = self.pickOut(point: time)
            //: imv.image = image
            imv.image = image
            //: self.imageViewArr.append(imv)
            self.imageViewArr.append(imv)

            //: time += timegap
            time += timegap
            //: i += 1
            i += 1
            //: totalWidth += width
            totalWidth += width
        }

        //: v.contentSize = CGSize(width: totalWidth, height: self.imgHeight)
        v.contentSize = CGSize(width: totalWidth, height: self.imgHeight)

        //: return v
        return v
        //: }()
    }()

    //: lazy var overlay: TalkingVideoCropOverlay = {
    lazy var overlay: PremonitionReactiveCompatible = {
        //: let sliderDuration = min(self.maxDuration, self.duration)
        let sliderDuration = min(self.maxDuration, self.duration)
        //: let sliderW = self.contentView.contentSize.width
        let sliderW = self.contentView.contentSize.width
        //: let minWidth = self.minvideoduration / self.duration * sliderW
        let minWidth = self.minvideoduration / self.duration * sliderW
        //: let maxWidth = (self.maxDuration / self.duration * sliderW)
        let maxWidth = (self.maxDuration / self.duration * sliderW)

        //: let overlay = TalkingVideoCropOverlay(frame: self.bounds, maxCropLen: maxWidth, minCropLen: minWidth)
        let overlay = PremonitionReactiveCompatible(frame: self.bounds, maxCropLen: maxWidth, minCropLen: minWidth)
        //: overlay.minWidth = minWidth
        overlay.minWidth = minWidth
        //: overlay.defaultWidth = minWidth
        overlay.defaultWidth = minWidth
        //: return overlay
        return overlay
        //: }()
    }()

    //: lazy var coverView: UIView = {
    lazy var coverView: UIView = {
        //: let coverView = UIView()
        let coverView = UIView()
        //: coverView.backgroundColor = .clear
        coverView.backgroundColor = .clear
        //: coverView.isHidden = true
        coverView.isHidden = true
        //: return coverView
        return coverView
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVideoEditSliderView {
extension SightView {
    /// 重置位置
    //: func resetPostion() {
    func old() {
        //: self.contentView.setContentOffset(CGPoint.zero, animated: false)
        self.contentView.setContentOffset(CGPoint.zero, animated: false)
        //: self.overlay.resetOriginalState()
        self.overlay.sendState()

        //: let x = self.contentView.contentOffset.x
        let x = self.contentView.contentOffset.x
        //: self.overlay.refreshSliderValidScope(startX: LeftMargin-x)
        self.overlay.assessmentForLaunch(startX: app_robotPathClickId - x)
    }

    /// 根据时间帧获取图片
    /// - Parameter point: 时间帧
    /// - Returns: 图片
    //: private func imageFromVideo(point: CGFloat) -> UIImage {
    private func pickOut(point: CGFloat) -> UIImage {
        //: let videoTime = CMTimeMakeWithSeconds(point, preferredTimescale: self.timescale)
        let videoTime = CMTimeMakeWithSeconds(point, preferredTimescale: self.timescale)
        //: var cgImg: CGImage?
        var cgImg: CGImage?
        //: do {
        do {
            //: cgImg = try self.imageGenerator?.copyCGImage(at: videoTime, actualTime: nil)
            cgImg = try self.imageGenerator?.copyCGImage(at: videoTime, actualTime: nil)
            //: } catch {
        } catch {}
        //: CMTimeShow(videoTime)
        CMTimeShow(videoTime)

        //: var image = UIImage()
        var image = UIImage()
        //: if cgImg != nil {
        if cgImg != nil {
            //: image = UIImage(cgImage: cgImg!)
            image = UIImage(cgImage: cgImg!)
        }

        //: return image
        return image
    }
}

// MARK: - UIScrollViewDelegate

//: extension TalkingVideoEditSliderView: UIScrollViewDelegate {
extension SightView: UIScrollViewDelegate {
    //: func scrollViewDidScroll(_ scrollView: UIScrollView) {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //: var offset = scrollView.contentOffset
        var offset = scrollView.contentOffset
        //: let minx = LeftMargin - overlay.startOffset
        let minx = app_robotPathClickId - overlay.startOffset

        //: if offset.x < minx {
        if offset.x < minx {
            //: offset.x = minx
            offset.x = minx
            //: scrollView.setContentOffset(offset, animated: false)
            scrollView.setContentOffset(offset, animated: false)
        }

        //: guard self.contentDidScrollBlock != nil else { return }
        guard self.contentDidScrollBlock != nil else { return }
        //: self.contentDidScrollBlock!()
        self.contentDidScrollBlock!()
    }

    //: func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
    func scrollViewWillBeginDragging(_: UIScrollView) {
        //: guard self.dragWillBeginBlock != nil else { return }
        guard self.dragWillBeginBlock != nil else { return }
        //: self.dragWillBeginBlock!()
        self.dragWillBeginBlock!()
        //: self.overlay.needShowIndicator(isShow: false)
        self.overlay.requireShowBusinessIndexExhibit(isShow: false)
    }

    //: func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        //: if decelerate { return }
        if decelerate { return }

        //: let x = scrollView.contentOffset.x
        let x = scrollView.contentOffset.x
        //: self.overlay.refreshSliderValidScope(startX: LeftMargin-x)
        self.overlay.assessmentForLaunch(startX: app_robotPathClickId - x)

        //: guard self.dragDidEndBlock != nil else { return }
        guard self.dragDidEndBlock != nil else { return }
        //: self.dragDidEndBlock!()
        self.dragDidEndBlock!()
        //: self.overlay.needShowIndicator(isShow: true)
        self.overlay.requireShowBusinessIndexExhibit(isShow: true)
    }

    //: func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        //: let x = scrollView.contentOffset.x
        let x = scrollView.contentOffset.x
        //: self.overlay.refreshSliderValidScope(startX: LeftMargin-x)
        self.overlay.assessmentForLaunch(startX: app_robotPathClickId - x)

        //: guard self.dragDidEndBlock != nil else { return }
        guard self.dragDidEndBlock != nil else { return }
        //: self.dragDidEndBlock!()
        self.dragDidEndBlock!()
        //: self.overlay.needShowIndicator(isShow: true)
        self.overlay.requireShowBusinessIndexExhibit(isShow: true)
    }
}

// MARK: - Layout

//: extension TalkingVideoEditSliderView {
extension SightView {
    /// 添加视图
    //: private func setupSubviews() {
    private func fragmentPress() {
        //: self.backgroundColor = UIColor.init(white: 0, alpha: 0.7)
        self.backgroundColor = UIColor(white: 0, alpha: 0.7)

        //: self.addSubview(self.contentView)
        self.addSubview(self.contentView)
        //: self.contentView.snp.makeConstraints({ make in
        self.contentView.snp.makeConstraints { make in
            //: make.leading.equalToSuperview().offset(LeftMargin)
            make.leading.equalToSuperview().offset(app_robotPathClickId)
            //: make.trailing.top.equalToSuperview()
            make.trailing.top.equalToSuperview()
            //: make.height.equalTo(self.imgHeight)
            make.height.equalTo(self.imgHeight)
            //: })
        }

        //: self.addSubview(self.overlay)
        self.addSubview(self.overlay)
        //: self.overlay.cropSlidingBeginBlock = { [weak self] in
        self.overlay.cropSlidingBeginBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard self.slidingBeginBlock != nil else { return }
            guard self.slidingBeginBlock != nil else { return }
            //: self.slidingBeginBlock!()
            self.slidingBeginBlock!()
        }
        //: self.overlay.cropSlidingBlock = { [weak self] (direction) in
        self.overlay.cropSlidingBlock = { [weak self] direction in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard self.slidingBlock != nil else { return }
            guard self.slidingBlock != nil else { return }
            //: self.slidingBlock!(direction)
            self.slidingBlock!(direction)
        }
        //: self.overlay.cropSlidingEndBlock = { [weak self] in
        self.overlay.cropSlidingEndBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard self.slidingEndBlock != nil else { return }
            guard self.slidingEndBlock != nil else { return }
            //: self.slidingEndBlock!()
            self.slidingEndBlock!()
        }

        //: self.addSubview(self.coverView)
        self.addSubview(self.coverView)
        //: self.coverView.snp.makeConstraints({ make in
        self.coverView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
            //: })
        }

        //: resetPostion()
        old()
    }
}

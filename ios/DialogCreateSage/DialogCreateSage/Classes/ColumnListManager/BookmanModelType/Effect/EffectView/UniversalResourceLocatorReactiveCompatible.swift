
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let user_trailName:[UInt8] = [0x27,0x20,0x27,0x3a,0x66,0x2d,0x21,0x2a,0x2b,0x3c,0x74,0x67,0x6e,0x26,0x2f,0x3d,0x6e,0x20,0x21,0x3a,0x6e,0x2c,0x2b,0x2b,0x20,0x6e,0x27,0x23,0x3e,0x22,0x2b,0x23,0x2b,0x20,0x3a,0x2b,0x2a]

private func anonymousScan(still num: UInt8) -> UInt8 {
    return num ^ 78
}

/*: "%@.mp4" :*/
fileprivate let dataAttentionFormat:[Character] = ["%","@",".","m","p"]
fileprivate let k_parentData:String = "4"

/*: "http" :*/
fileprivate let constEgoId:String = "httpresentation"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UniversalResourceLocatorReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/7.
//

//: import QGVAPlayer
import QGVAPlayer
//: import UIKit
import UIKit

//: class TalkingVapAnimationView: TalkingGiftAnimatItemView {
class UniversalResourceLocatorReactiveCompatible: FinishReactiveCompatible {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: user_trailName.map{anonymousScan(still: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化

    //: public lazy var vapPlayerView: UIView? = {
    public lazy var vapPlayerView: UIView? = {
        //: let view = UIView.init(frame: self.bounds)
        let view = UIView(frame: self.bounds)
        //: view.center = self.center
        view.center = self.center
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: view.hwd_enterBackgroundOP = .stop
        view.hwd_enterBackgroundOP = .stop
        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: view.hwd_enterBackgroundOP = .pauseAndResume
            view.hwd_enterBackgroundOP = .pauseAndResume
        }
        //: self.addSubview(view)
        self.addSubview(view)
        //: let tap = UITapGestureRecognizer.init(target: self, action: #selector(onImageviewTap))
        let tap = UITapGestureRecognizer(target: self, action: #selector(removeTap))
        //: view.addGestureRecognizer(tap)
        view.addGestureRecognizer(tap)
        //: return view
        return view
        //: }()
    }()

    //: override func startAnimating() {
    override func animating() {
        //: super.startAnimating()
        super.animating()

        //: let path = TalkingGiftAnimatTool.shared.filePathOfNameWithAnimatMsgModel(fileName: self.giftEffectModel?.mainFile ?? "", model: self.effectMsgModel ?? TalkingAnimatMsgModel.init())
        let path = StrategyMovieThen.shared.setAnimat(fileName: self.giftEffectModel?.mainFile ?? "", model: self.effectMsgModel ?? BookmanModelType())

        //: if  path.count > 0 {
        if path.count > 0 {
            //: let mp4Path = String.init(format: "%@.mp4", path)
            let mp4Path = String(format: (String(dataAttentionFormat) + k_parentData.capitalized), path)
            //: self.vapPlayerView?.playHWDMP4(mp4Path, repeatCount: 0, delegate: self)
            self.vapPlayerView?.playHWDMP4(mp4Path, repeatCount: 0, delegate: self)
            //: } else {
        } else {
            //: self.delegate?.didFinishAnimationOfGift(effectItemView: self)
            self.delegate?.roundSign(effectItemView: self)
        }
    }

    //: override func stopAnimating() {
    override func sinceNameure() {
        //: self.vapPlayerView?.stopHWDMP4()
        self.vapPlayerView?.stopHWDMP4()
    }

    //: override func cleanAnimating() {
    override func factorFinishAnimating() {
        //: self.vapPlayerView?.removeFromSuperview()
        self.vapPlayerView?.removeFromSuperview()
        //: self.vapPlayerView = nil
        self.vapPlayerView = nil
    }

    //: @objc func onImageviewTap() {
    @objc func removeTap() {}
}

///  --- HWDMP4PlayDelegate

//: extension TalkingVapAnimationView: HWDMP4PlayDelegate {
extension UniversalResourceLocatorReactiveCompatible: HWDMP4PlayDelegate {
    //: func shouldStartPlayMP4(_ container: UIView!, config: QGVAPConfigModel!) -> Bool {
    func shouldStartPlayMP4(_: UIView!, config _: QGVAPConfigModel!) -> Bool {
        //: return true
        return true
    }

    //: func viewDidStartPlayMP4(_ container: UIView!) {
    func viewDidStartPlayMP4(_: UIView!) {}

    //: func viewDidFinishPlayMP4(_ totalFrameCount: Int, view container: UIView!) {
    func viewDidFinishPlayMP4(_: Int, view _: UIView!) {}

    //: func viewDidPlayMP4(at frame: QGMP4AnimatedImageFrame!, view container: UIView!) {
    func viewDidPlayMP4(at _: QGMP4AnimatedImageFrame!, view _: UIView!) {}

    //: func viewDidStopPlayMP4(_ lastFrameIndex: Int, view container: UIView!) {
    func viewDidStopPlayMP4(_: Int, view container: UIView!) {
        // note:在子线程被调用
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: container.removeFromSuperview()
            container.removeFromSuperview()
            //: self.delegate?.didFinishAnimationOfGift(effectItemView: self)
            self.delegate?.roundSign(effectItemView: self)
        }
    }

    //: func viewDidFailPlayMP4(_ error: Error!) {
    func viewDidFailPlayMP4(_: Error!) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: self.delegate?.didFinishAnimationOfGift(effectItemView: self)
            self.delegate?.roundSign(effectItemView: self)
        }
    }

    /// 替换配置中的资源占位符（不处理直接返回tag）
    //: func content(forVapTag tag: String!, resource info: QGVAPSourceInfo!) -> String! {
    func content(forVapTag tag: String!, resource _: QGVAPSourceInfo!) -> String! {
        //: return tag
        return tag
    }

    // 由于组件内不包含网络图片加载的模块，因此需要外部支持图片加载。
    //: func loadVapImage(withURL urlStr: String!, context: [AnyHashable: Any]!, completion completionBlock: VAPImageCompletionBlock!) {
    func loadVapImage(withURL urlStr: String!, context _: [AnyHashable: Any]!, completion completionBlock: VAPImageCompletionBlock!) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if urlStr.hasPrefix("http") {
            if urlStr.hasPrefix((constEgoId.replacingOccurrences(of: "presentation", with: "p"))) {
                //: let data = NSData.init(contentsOf: NSURL.init(string: urlStr)! as URL)
                let data = NSData(contentsOf: NSURL(string: urlStr)! as URL)
                //: let image = UIImage.init(data: data! as Data)
                let image = UIImage(data: data! as Data)
                //: completionBlock(image, nil, urlStr)
                completionBlock(image, nil, urlStr)
                //: } else {
            } else {
                //: completionBlock(nil, nil, urlStr)
                completionBlock(nil, nil, urlStr)
            }
        }
    }
}

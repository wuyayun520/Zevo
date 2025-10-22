
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let appExceptionPath:[UInt8] = [0x33,0x38,0x33,0x3e,0xf2,0x2d,0x39,0x2e,0x2f,0x3c,0x4,0xf3,0xea,0x32,0x2b,0x3d,0xea,0x38,0x39,0x3e,0xea,0x2c,0x2f,0x2f,0x38,0xea,0x33,0x37,0x3a,0x36,0x2f,0x37,0x2f,0x38,0x3e,0x2f,0x2e]

fileprivate func putOver(error num: UInt8) -> UInt8 {
    let value = Int(num) - 202
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OriginalThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/3/15.
//

//: import UIKit
import UIKit

//: class TalkingAdvertisingBaseView: UIView {
class OriginalThen: UIView {
//    var tapGestureBlock: (() -> Void)?   // 点击手势Block

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: appExceptionPath.map{putOver(error: $0)}, encoding: .utf8)!)
    }

    // addSubview是调用
    //: override func willMove(toSuperview newSuperview: UIView?) {
    override func willMove(toSuperview _: UIView?) {
        //: TalkingAdvertisingManager.shared.advSuperView?.isHidden = false
        FormalSuccessAdvertisingManager.shared.advSuperView?.isHidden = false
    }

    /// 移除视图
    //: func dismissWhenCallEnd() {
    func belowAppearanceEnd() {
        //: removeAllGestures()
        every()
        //: if self.superview != nil {
        if self.superview != nil {
            //: self.removeFromSuperview()
            self.removeFromSuperview()
        }
    }
}

// MARK: - 添加手势

//: extension TalkingAdvertisingBaseView {
extension OriginalThen {
    /// 添加点击手势
//    @discardableResult
//    func addTapGesture() -> UITapGestureRecognizer {
//        let tap = UITapGestureRecognizer(target: self, action: #selector(tapGestureEvent(sender:)))
//        tap.numberOfTapsRequired = 1
//        self.addGestureRecognizer(tap)
//        return tap
//    }

    /// 添加点击和拖拽手势
    //: func addTapAndPanGestures() {
    func omeletPanGestures() {
        //: let pan = UIPanGestureRecognizer(target: self, action: #selector(panGestureEvent(sender:)))
        let pan = UIPanGestureRecognizer(target: self, action: #selector(senderSecure(sender:)))
//        let tap = addTapGesture()
//        pan.shouldBeRequiredToFail(by: tap)
        //: self.addGestureRecognizer(pan)
        self.addGestureRecognizer(pan)
    }

    /// 移除所有手势
    //: func removeAllGestures() {
    func every() {
        //: self.gestureRecognizers?.forEach(self.removeGestureRecognizer(_:))
        self.gestureRecognizers?.forEach(self.removeGestureRecognizer(_:))
    }

    /// 拖拽手势
    //: @objc private func panGestureEvent(sender: UIPanGestureRecognizer) {
    @objc private func senderSecure(sender: UIPanGestureRecognizer) {
        //: let offset = sender.translation(in: self)
        let offset = sender.translation(in: self)
        //: var centerX = self.center.x+offset.x
        var centerX = self.center.x + offset.x
        //: var centerY = self.center.y+offset.y
        var centerY = self.center.y + offset.y
        //: centerX = max(self.width*0.5, centerX)
        centerX = max(self.width * 0.5, centerX)
        //: centerX = min(ScreenWidth-self.width*0.5, centerX)
        centerX = min(user_needValue - self.width * 0.5, centerX)
        //: centerY = max(self.height*0.5, centerY)
        centerY = max(self.height * 0.5, centerY)
        //: centerY = min(ScreenHeight-self.height*0.5, centerY)
        centerY = min(kStreamTitle - self.height * 0.5, centerY)
        //: self.center = CGPoint(x: centerX, y: centerY)
        self.center = CGPoint(x: centerX, y: centerY)
        //: sender.setTranslation(CGPoint.zero, in: self)
        sender.setTranslation(CGPoint.zero, in: self)

        //: if sender.state == .ended {
        if sender.state == .ended {
            //: let centerX = self.center.x
            let centerX = self.center.x
            //: var endCenterX = ScreenWidth-self.width*0.5
            var endCenterX = user_needValue - self.width * 0.5
            //: var recordX = ScreenWidth
            var recordX = user_needValue
            //: if (centerX <= ScreenWidth*0.5) {
            if centerX <= user_needValue * 0.5 {
                //: endCenterX = self.width*0.5
                endCenterX = self.width * 0.5
                //: recordX = 0
                recordX = 0
            }
            //: UIView.animate(withDuration: 0.3) {
            UIView.animate(withDuration: 0.3) {
                //: self.center = CGPoint(x: endCenterX, y: self.center.y)
                self.center = CGPoint(x: endCenterX, y: self.center.y)
            }
            //: let recordY = self.center.y-self.height*0.5
            let recordY = self.center.y - self.height * 0.5
            //: TalkingAdvertisingManager.shared.windownsPostion = CGPoint(x: recordX, y: recordY)
            FormalSuccessAdvertisingManager.shared.windownsPostion = CGPoint(x: recordX, y: recordY)
        }
    }

    /// 点击手势
//    @objc private func tapGestureEvent(sender: UIPanGestureRecognizer) {
//        if tapGestureBlock != nil {
//            tapGestureBlock!()
//        }
//    }
}

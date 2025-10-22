// __DEBUG__
// __CLOSE_PRINT__
//
//  FormalSuccessAdvertisingManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/3/15.
//

//: import UIKit
import UIKit

//: class TalkingAdvertisingManager: NSObject {
class FormalSuccessAdvertisingManager: NSObject {

    //: var windownsPostion: CGPoint = CGPoint(x: ScreenWidth-4, y: ScreenHeight-TabBarViewHeight-66-38)   
    var windownsPostion: CGPoint = CGPoint(x: user_needValue-4, y: kStreamTitle-mainExplainFaceName-66-38)   // 窗口默认位置
    //: var advSuperView: UIView?                                                       
    var advSuperView: UIView?                                                       // 窗口容器
    // singleton
    //: static let shared = TalkingAdvertisingManager()
    static let shared = FormalSuccessAdvertisingManager()
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
    
    //: private override init() {
    private override init() {
        //: super.init()
        super.init()
    }
    
    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }
    
}

//: extension TalkingAdvertisingManager {
extension FormalSuccessAdvertisingManager {
    /// 创建窗口最小化容器
    //: func createContainerView() {
    func scriptMinimum() {
        //: guard self.advSuperView == nil else { return }
        guard self.advSuperView == nil else { return }
        
        //: let windowView = TalkingMiniContainerView()
        let windowView = PermissionVanguardView()
        //: let keywindow = DirtyMacroDefine.getWindow()
        let keywindow = DirtyMacroDefine.effectRequire()
        //: windowView.frame = keywindow.bounds
        windowView.frame = keywindow.bounds
        //: windowView.backgroundColor = .clear
        windowView.backgroundColor = .clear
        //: keywindow.addSubview(windowView)
        keywindow.addSubview(windowView)
        //: self.advSuperView = windowView
        self.advSuperView = windowView
    }
    
    /// 移除窗口最小化容器
    //: func removeContainerView() {
    func customerUniform() {
        //: guard self.advSuperView != nil else { return }
        guard self.advSuperView != nil else { return }
       
        //: self.advSuperView?.removeAllSubviews()
        self.advSuperView?.removeAllSubviews()
        //: self.advSuperView?.removeFromSuperview()
        self.advSuperView?.removeFromSuperview()
        //: self.advSuperView = nil
        self.advSuperView = nil
    }

}

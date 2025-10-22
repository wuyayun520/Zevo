
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let constTransferText:[UInt8] = [0x7c,0x81,0x7c,0x87,0x3b,0x76,0x82,0x77,0x78,0x85,0x4d,0x3c,0x33,0x7b,0x74,0x86,0x33,0x81,0x82,0x87,0x33,0x75,0x78,0x78,0x81,0x33,0x7c,0x80,0x83,0x7f,0x78,0x80,0x78,0x81,0x87,0x78,0x77]

fileprivate func operationPlayer(distribution num: UInt8) -> UInt8 {
    let value = Int(num) - 19
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "pic" :*/
fileprivate let main_discoverTitle:String = "pqualityc"

/*: "url" :*/
fileprivate let kPermissionKey:[Character] = ["u","r","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ExSocietalView.swift
//  DialogCreateSage
//
//  Created by Charlotte on 2024/4/7.
//

//: import UIKit
import UIKit

//: class SocialHeaderView: UICollectionReusableView {
class ExSocietalView: UICollectionReusableView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = CGRectMake(0, 0, ScreenWidth, SocialHeaderView.getSelfHeight())
        self.frame = CGRectMake(0, 0, user_needValue, ExSocietalView.physicalProperty())
        //: basicUI()
        ensconce()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: constTransferText.map{operationPlayer(distribution: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var hostBtn: UIButton = {
    private lazy var hostBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let dic = CompositionReactiveCompatible.share.appConfigMode.homeOpAds.first
        let dic = CompositionReactiveCompatible.share.appConfigMode.homeOpAds.first
        //: btn.setUrlImage(urlStr: dic?["pic"] ?? "")
        btn.hideMove(urlStr: dic?[(main_discoverTitle.replacingOccurrences(of: "quality", with: "i"))] ?? "")
        //: btn.addTarget(self, action: #selector(hostBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(liveClick), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var centerBtn: UIButton = {
    private lazy var centerBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let dic = CompositionReactiveCompatible.share.appConfigMode.homeOpAds.last
        let dic = CompositionReactiveCompatible.share.appConfigMode.homeOpAds.last
        //: btn.setUrlImage(urlStr: dic?["pic"] ?? "")
        btn.hideMove(urlStr: dic?[(main_discoverTitle.replacingOccurrences(of: "quality", with: "i"))] ?? "")
        //: btn.addTarget(self, action: #selector(centerBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(disableFit), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension SocialHeaderView {
extension ExSocietalView {
    //: @objc private func hostBtnClick() {
    @objc private func liveClick() {
        //: let dic = CompositionReactiveCompatible.share.appConfigMode.homeOpAds.first
        let dic = CompositionReactiveCompatible.share.appConfigMode.homeOpAds.first
        //: SightReactiveCompatible.share.func__pushToWebVC(urlStr: dic?["url"] ?? "")
        SightReactiveCompatible.share.getConfig(urlStr: dic?[(String(kPermissionKey))] ?? "")
    }

    //: @objc private func centerBtnClick() {
    @objc private func disableFit() {
        //: let dic = CompositionReactiveCompatible.share.appConfigMode.homeOpAds.last
        let dic = CompositionReactiveCompatible.share.appConfigMode.homeOpAds.last
        //: SightReactiveCompatible.share.func__pushToWebVC(urlStr: dic?["url"] ?? "")
        SightReactiveCompatible.share.getConfig(urlStr: dic?[(String(kPermissionKey))] ?? "")
    }
}

// MARK: - Layout

//: extension SocialHeaderView {
extension ExSocietalView {
    //: class func getSelfHeight() -> CGFloat {
    class func physicalProperty() -> CGFloat {
        //: var sheight = 0.0
        var sheight = 0.0
        //: if CompositionReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue && CompositionReactiveCompatible.share.appConfigMode.homeOpAds.count > 1 {
        if CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.female.rawValue && CompositionReactiveCompatible.share.appConfigMode.homeOpAds.count > 1 {
            //: sheight += 76.0
            sheight += 76.0
        }
        //: return sheight
        return sheight
    }

    //: private func basicUI() {
    private func ensconce() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: if CompositionReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue, CompositionReactiveCompatible.share.appConfigMode.homeOpAds.count > 0 {
        if CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.female.rawValue, CompositionReactiveCompatible.share.appConfigMode.homeOpAds.count > 0 {
            //: self.hostBtn.frame = CGRect(x: 13, y: 12, width: (self.width-26-8)/2, height: 64)
            self.hostBtn.frame = CGRect(x: 13, y: 12, width: (self.width - 26 - 8) / 2, height: 64)
            //: self.centerBtn.frame = CGRect(x: self.width/2 + 4, y: 12, width: (self.width-26-8)/2, height: 64)
            self.centerBtn.frame = CGRect(x: self.width / 2 + 4, y: 12, width: (self.width - 26 - 8) / 2, height: 64)
        }
    }
}

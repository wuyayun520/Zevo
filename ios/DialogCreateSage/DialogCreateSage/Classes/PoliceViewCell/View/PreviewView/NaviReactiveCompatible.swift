
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainMustExactlyMsg:[UInt8] = [0xd5,0xd2,0xd5,0xc8,0x94,0xdf,0xd3,0xd8,0xd9,0xce,0x86,0x95,0x9c,0xd4,0xdd,0xcf,0x9c,0xd2,0xd3,0xc8,0x9c,0xde,0xd9,0xd9,0xd2,0x9c,0xd5,0xd1,0xcc,0xd0,0xd9,0xd1,0xd9,0xd2,0xc8,0xd9,0xd8]

private func signLeave(rem num: UInt8) -> UInt8 {
    return num ^ 188
}

/*: "nav_back_black_nor" :*/
fileprivate let userTagAddStr:String = "nav_back_him sink"
fileprivate let showWhoArmKey:String = "bltalk"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NaviReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/12.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TPreviewNaviBarView: UIView {
class NaviReactiveCompatible: UIView {
    //: var uid = ""
    var uid = ""
    //: var previewSaveBlock: (() -> Void)?
    var previewSaveBlock: (() -> Void)?
    //: var tapHeadPicBlock: (() -> Void)?
    var tapHeadPicBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.once()
        //: self.setupSubViewsConstraint()
        self.eye()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainMustExactlyMsg.map{signLeave(rem: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var backButton = UIButton().then {
    lazy var backButton = UIButton().then {
        //: let img = UIImage(named: "nav_back_black_nor")?.withRenderingMode(.alwaysTemplate)
        let img = UIImage(named: (String(userTagAddStr.prefix(9)) + showWhoArmKey.replacingOccurrences(of: "talk", with: "ac") + "k_nor"))?.withRenderingMode(.alwaysTemplate)
        //: $0.setImage(img, for: .normal)
        $0.setImage(img, for: .normal)
        //: $0.tintColor = .white
        $0.tintColor = .white
        //: $0.addTarget(self, action: #selector(registerBackAction), for: .touchUpInside)
        $0.addTarget(self, action: #selector(lockPhone), for: .touchUpInside)
    }
}

// MARK: - Bind && Event

//: extension TPreviewNaviBarView {
extension NaviReactiveCompatible {
    //: @objc func registerBackAction() {
    @objc func lockPhone() {
        //: SightReactiveCompatible.share.func__getCurrentActivityVC()?.navigationController!.popViewController(animated: true)
        SightReactiveCompatible.share.reserveUp()?.navigationController!.popViewController(animated: true)
    }

    //: @objc func registerSaveAction() {
    @objc func caper() {
        // 相册权限
    }

    //: @objc func tapUserHeadPic() {
    @objc func conversionPic() {}
}

// MARK: Layout

//: extension TPreviewNaviBarView {
extension NaviReactiveCompatible {
    //: private func setupSubviews() {
    private func once() {
        //: addSubview(backButton)
        addSubview(backButton)
    }

    //: private func setupSubViewsConstraint() {
    private func eye() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(noti_guideRequestId)
            //: make.size.equalTo(CGSize(width: 40, height: NavigationBarHeight))
            make.size.equalTo(CGSize(width: 40, height: main_buildValue))
        }
    }
}

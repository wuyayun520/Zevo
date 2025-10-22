
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let noti_preserveKey:[UInt8] = [0xa0,0xa7,0xa0,0xbd,0xe1,0xaa,0xa6,0xad,0xac,0xbb,0xf3,0xe0,0xe9,0xa1,0xa8,0xba,0xe9,0xa7,0xa6,0xbd,0xe9,0xab,0xac,0xac,0xa7,0xe9,0xa0,0xa4,0xb9,0xa5,0xac,0xa4,0xac,0xa7,0xbd,0xac,0xad]

private func personEntity(week num: UInt8) -> UInt8 {
    return num ^ 201
}

/*: "#9256FF" :*/
fileprivate let showMedalStageSocialName:String = "sheer cling spec clearly simultaneously#9256F"
fileprivate let dataMoreStr:String = "don"

/*: "bg_balance" :*/
fileprivate let mainLessFormat:String = "bg_baactivity merge"
fileprivate let notiEditorValue:String = "lconsentce"

/*: "Girls are eagerly waiting for your replay. Recharge now and Enjoy happy time with her." :*/
fileprivate let noti_distantChildTitle:[UInt8] = [0x2e,0x72,0x65,0x68,0x20,0x68,0x74,0x69,0x77,0x20,0x65,0x6d,0x69,0x74,0x20,0x79,0x70,0x70,0x61,0x68,0x20,0x79,0x6f,0x6a,0x6e,0x45,0x20,0x64,0x6e,0x61,0x20,0x77,0x6f,0x6e,0x20,0x65,0x67,0x72,0x61,0x68,0x63,0x65,0x52,0x20,0x2e,0x79,0x61,0x6c,0x70,0x65,0x72,0x20,0x72,0x75,0x6f,0x79,0x20,0x72,0x6f,0x66,0x20,0x67,0x6e,0x69,0x74,0x69,0x61,0x77,0x20,0x79,0x6c,0x72,0x65,0x67,0x61,0x65,0x20,0x65,0x72,0x61,0x20,0x73,0x6c,0x72,0x69,0x47]

/*: "btn_cz_close" :*/
fileprivate let constAccompanyPath:String = "btn_click trail lab number"

/*: "Top up" :*/
fileprivate let constTurkeyTitle:[Character] = ["T","o","p"," ","u"]
fileprivate let constSatisfyId:[Character] = ["p"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CapBalanceView.swift
//  Broccoli
//
//  Created by Charlotte on 2024/4/28.
//

//: import UIKit
import UIKit

/// 余额不足提示弹窗
//: class TalkingInsufficientBalanceView: UIView {
class CapBalanceView: UIView {
    //: var popView: TalkingPopView?
    var popView: FormalView?
    //: var openBtnClock: (() -> Void)?
    var openBtnClock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.checkionConstraint()
        //: self.setupSubViewsConstraint()
        self.apartment()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: noti_preserveKey.map{personEntity(week: $0)}, encoding: .utf8)!)
    }

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.layer.borderWidth = 8
        view.layer.borderWidth = 8
        //: view.layer.borderColor = UIColor.init(hex: "#9256FF")?.cgColor
        view.layer.borderColor = UIColor(hex: (String(showMedalStageSocialName.suffix(6)) + dataMoreStr.replacingOccurrences(of: "don", with: "F")))?.cgColor
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: lazy var topImgV: UIImageView = {
    lazy var topImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "bg_balance")
        img.image = UIImage.parentSet(name: (String(mainLessFormat.prefix(5)) + notiEditorValue.replacingOccurrences(of: "consent", with: "an")))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.isUserInteractionEnabled = false
        img.isUserInteractionEnabled = false
        //: return img
        return img
        //: }()
    }()

    //: lazy var messageLB: UILabel = {
    lazy var messageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.appValueColor()
        lb.textColor = UIColor.submaxilla()
        //: lb.font = UIFont.pingfangRugularFont(fontSize: 16)
        lb.font = UIFont.joinSize(fontSize: 16)
        //: lb.text = "Girls are eagerly waiting for your replay. Recharge now and Enjoy happy time with her.".localized
        lb.text = String(bytes: noti_distantChildTitle.reversed(), encoding: .utf8)!.localized
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var cancleBtn: UIButton = {
    lazy var cancleBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_cz_close"), for: .normal)
        btn.setImage(UIImage.parentSet(name: (String(constAccompanyPath.prefix(4)) + "cz_close")), for: .normal)
        //: btn.addTarget(self, action: #selector(cancleBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(belowCancleClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var openBtn: UIButton = {
    lazy var openBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Top up".localized, for: .normal)
        btn.setTitle((String(constTurkeyTitle) + String(constSatisfyId)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.processAcross(type: .Medium, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.backgroundColor = UIColor.init(hex: "#9256FF")
        btn.backgroundColor = UIColor(hex: (String(showMedalStageSocialName.suffix(6)) + dataMoreStr.replacingOccurrences(of: "don", with: "F")))
        //: btn.addTarget(self, action: #selector(openBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(someDiscount), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingInsufficientBalanceView {
extension CapBalanceView {
    //: func show() {
    func upend() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = FormalView(frame: UIScreen.main.bounds)
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: user_needValue, height: kStreamTitle)
        //: popView?.initWithView(view: self)
        popView?.dotView(view: self)
        //: popView?.showInView(view: DirtyMacroDefine.getWindow())
        popView?.birdSEyeViewMiss(view: DirtyMacroDefine.effectRequire())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func cancleBtnClick() {
    @objc func belowCancleClick() {
        //: popView?.dismissView()
        popView?.detectDecide()
        //: popView = nil
        popView = nil
    }

    //: @objc func openBtnClick() {
    @objc func someDiscount() {
        //: openBtnClock?()
        openBtnClock?()
        //: cancleBtnClick()
        belowCancleClick()
    }
}

//: extension TalkingInsufficientBalanceView {
extension CapBalanceView {
    // 添加视图
    //: private func setupSubviews() {
    private func checkionConstraint() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: self.addSubview(topImgV)
        self.addSubview(topImgV)
        //: backView.addSubview(messageLB)
        backView.addSubview(messageLB)
        //: self.addSubview(cancleBtn)
        self.addSubview(cancleBtn)
        //: backView.addSubview(openBtn)
        backView.addSubview(openBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func apartment() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(297)
            make.width.equalTo(297)
            //: make.height.equalTo(210)
            make.height.equalTo(210)
        }
        //: topImgV.snp.makeConstraints { make in
        topImgV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(backView.snp.bottom).offset(-95)
            make.bottom.equalTo(backView.snp.bottom).offset(-95)
            //: make.height.equalTo(195)
            make.height.equalTo(195)
            //: make.width.equalTo(315)
            make.width.equalTo(315)
        }
        //: messageLB.snp.makeConstraints { make in
        messageLB.snp.makeConstraints { make in
            //: make.left.top.equalTo(30)
            make.left.top.equalTo(30)
            //: make.right.equalTo(-63)
            make.right.equalTo(-63)
        }
        //: openBtn.snp.makeConstraints { make in
        openBtn.snp.makeConstraints { make in
            //: make.top.equalTo(messageLB.snp.bottom).offset(14)
            make.top.equalTo(messageLB.snp.bottom).offset(14)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 203, height: 50))
            make.size.equalTo(CGSize(width: 203, height: 50))
        }
        //: cancleBtn.snp.makeConstraints { make in
        cancleBtn.snp.makeConstraints { make in
            //: make.top.equalTo(backView.snp.bottom).offset(30)
            make.top.equalTo(backView.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
    }
}

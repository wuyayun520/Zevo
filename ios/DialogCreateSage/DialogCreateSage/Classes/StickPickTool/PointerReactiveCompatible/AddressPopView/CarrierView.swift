
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let notiTurkeyValue:[UInt8] = [0x19,0x1e,0x19,0x4,0x58,0x13,0x1f,0x14,0x15,0x2,0x4a,0x59,0x50,0x18,0x11,0x3,0x50,0x1e,0x1f,0x4,0x50,0x12,0x15,0x15,0x1e,0x50,0x19,0x1d,0x0,0x1c,0x15,0x1d,0x15,0x1e,0x4,0x15,0x14]

private func diskPair(trigger num: UInt8) -> UInt8 {
    return num ^ 112
}

/*: "icon_bg_lx_kefu" :*/
fileprivate let main_skinKey:[Character] = ["i","c","o","n","_","b","g","_","l","x","_","k","e","f","u"]

/*: "Having a problem?" :*/
fileprivate let data_appearMsg:[Character] = ["H","a","v","i","n","g"]
fileprivate let main_rejectNowUrl:String = " a prohi contrast burn ret estimated"

/*: "Contact our customer service team  to assist you~" :*/
fileprivate let appChartValue:[UInt8] = [0x3a,0x16,0x17,0xd,0x18,0x1a,0xd,0x59,0x16,0xc,0xb,0x59,0x1a,0xc,0xa,0xd,0x16,0x14,0x1c,0xb,0x59,0xa,0x1c,0xb,0xf,0x10,0x1a,0x1c,0x59,0xd,0x1c,0x18,0x14,0x59,0x59,0xd,0x16,0x59,0x18,0xa,0xa,0x10,0xa,0xd,0x59,0x0,0x16,0xc,0x7]

private func boneDisagree(eff num: UInt8) -> UInt8 {
    return num ^ 121
}

/*: "btn_cz_close" :*/
fileprivate let constResumeValue:String = "absolute template time welcome adminbtn_"
fileprivate let main_seatKey:String = "transaction"

/*: "Customer Service" :*/
fileprivate let const_fitStr:[Character] = ["C","u","s","t","o","m","e","r"," ","S","e","r","v"]
fileprivate let showEngageFormat:String = "icsatisfy"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CarrierView.swift
//  Broccoli
//
//  Created by Charlotte on 2024/4/28.
//

//: import UIKit
import UIKit

/// 联系客服弹窗
//: class TalkingContactServiceView: UIView {
class CarrierView: UIView {
    //: var popView: TalkingPopView?
    var popView: FormalView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.barThreshold()
        //: self.setupSubViewsConstraint()
        self.noseIn()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: notiTurkeyValue.map{diskPair(trigger: $0)}, encoding: .utf8)!)
    }

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
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
        //: img.image = UIImage.BundleImageNamed(name: "icon_bg_lx_kefu")
        img.image = UIImage.parentSet(name: (String(main_skinKey)))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.isUserInteractionEnabled = false
        img.isUserInteractionEnabled = false
        //: return img
        return img
        //: }()
    }()

    //: lazy var titleLB: UILabel = {
    lazy var titleLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.antiquityColor()
        //: lb.font = UIFont.pingfangMediumFont(fontSize: 18)
        lb.font = UIFont.counteraction(fontSize: 18)
        //: lb.text = "Having a problem?".localized
        lb.text = (String(data_appearMsg) + String(main_rejectNowUrl.prefix(6)) + "blem?").localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var messageLB: UILabel = {
    lazy var messageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.antiquityColor()
        //: lb.font = UIFont.pingfangRugularFont(fontSize: 16)
        lb.font = UIFont.joinSize(fontSize: 16)
        //: lb.text = "Contact our customer service team  to assist you~".localized
        lb.text = String(bytes: appChartValue.map{boneDisagree(eff: $0)}, encoding: .utf8)!.localized
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var cancleBtn: UIButton = {
    lazy var cancleBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_cz_close"), for: .normal)
        btn.setImage(UIImage.parentSet(name: (String(constResumeValue.suffix(4)) + "cz_clo" + main_seatKey.replacingOccurrences(of: "transaction", with: "se"))), for: .normal)
        //: btn.addTarget(self, action: #selector(cancleBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(insideTodayPin), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var openBtn: UIButton = {
    lazy var openBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Customer Service".localized, for: .normal)
        btn.setTitle((String(const_fitStr) + showEngageFormat.replacingOccurrences(of: "satisfy", with: "e")).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.processAcross(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 203, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.keyLocal(colors: UIColor.sumerpretation(), size: CGSize(width: 203, height: 50)), for: .normal)
        //: btn.addTarget(self, action: #selector(openBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(bologram), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingContactServiceView {
extension CarrierView {
    //: func show() {
    func pairEnd() {
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
    @objc func insideTodayPin() {
        //: popView?.dismissView()
        popView?.detectDecide()
        //: popView = nil
        popView = nil
    }

    //: @objc func openBtnClick() {
    @objc func bologram() {
        //: let vc = TalkingPrivateChatController(chatID: DirtyMacroDefine.getCustomerServiceID())
        let vc = ParentControllerDelegate(chatID: DirtyMacroDefine.resGain())
        //: vc.navView.backButton.isHidden = true
        vc.navView.backButton.isHidden = true
        //: self.currentViewController()?.present(vc, animated: true)
        self.mediumSave()?.present(vc, animated: true)
        //: cancleBtnClick()
        insideTodayPin()
    }
}

//: extension TalkingContactServiceView {
extension CarrierView {
    // 添加视图
    //: private func setupSubviews() {
    private func barThreshold() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(topImgV)
        backView.addSubview(topImgV)
        //: backView.addSubview(titleLB)
        backView.addSubview(titleLB)
        //: backView.addSubview(messageLB)
        backView.addSubview(messageLB)
        //: self.addSubview(cancleBtn)
        self.addSubview(cancleBtn)
        //: backView.addSubview(openBtn)
        backView.addSubview(openBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func noseIn() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(297)
            make.width.equalTo(297)
            //: make.height.equalTo(320)
            make.height.equalTo(320)
        }
        //: topImgV.snp.makeConstraints { make in
        topImgV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(14)
            make.top.equalTo(14)
            //: make.size.equalTo(119)
            make.size.equalTo(119)
        }
        //: titleLB.snp.makeConstraints { make in
        titleLB.snp.makeConstraints { make in
            //: make.top.equalTo(topImgV.snp.bottom).offset(11)
            make.top.equalTo(topImgV.snp.bottom).offset(11)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(21)
            make.height.equalTo(21)
        }
        //: messageLB.snp.makeConstraints { make in
        messageLB.snp.makeConstraints { make in
            //: make.top.equalTo(titleLB.snp.bottom).offset(10)
            make.top.equalTo(titleLB.snp.bottom).offset(10)
            //: make.left.equalTo(21)
            make.left.equalTo(21)
            //: make.right.equalTo(-21)
            make.right.equalTo(-21)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
        //: openBtn.snp.makeConstraints { make in
        openBtn.snp.makeConstraints { make in
            //: make.top.equalTo(messageLB.snp.bottom).offset(21)
            make.top.equalTo(messageLB.snp.bottom).offset(21)
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

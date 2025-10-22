
//: Declare String Begin

/*: "DiscoidalPopView deinit" :*/
fileprivate let dataTruthFormat:String = "sacrifice coat language from moreQuoteDe"
fileprivate let kSoonUrl:[Character] = ["t","a","i","l","P","o","p","V","i"]
fileprivate let data_boxId:String = "version operation break receive resew deinit"

/*: "init(coder:) has not been implemented" :*/
fileprivate let constSinkValue:[UInt8] = [0xd,0xa,0xd,0x10,0x4c,0x7,0xb,0x0,0x1,0x16,0x5e,0x4d,0x44,0xc,0x5,0x17,0x44,0xa,0xb,0x10,0x44,0x6,0x1,0x1,0xa,0x44,0xd,0x9,0x14,0x8,0x1,0x9,0x1,0xa,0x10,0x1,0x0]

private func deadlineIndex(financial num: UInt8) -> UInt8 {
    return num ^ 100
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DiscoidalPopView.swift
//
//

//: import UIKit
import UIKit

//: class QuoteDetailPopView: UIView {
class DiscoidalPopView: UIView {
    //: var popView: TalkingPopView?
    var popView: FormalView?

    //: deinit {
    deinit {
        //: printLog(message: "QuoteDetailPopView deinit")
        printLog(message: (String(dataTruthFormat.suffix(7)) + String(kSoonUrl) + String(data_boxId.suffix(9))))
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.publish()
        //: self.setupSubViewsConstraint()
        self.picConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: constSinkValue.map{deadlineIndex(financial: $0)}, encoding: .utf8)!)
    }

    //: var msgDetailText: String? {
    var msgDetailText: String? { // 提示文字
        //: didSet {
        didSet {
            //: messageView.text = msgDetailText
            messageView.text = msgDetailText
        }
    }

    //: lazy var messageView: UILabel = {
    lazy var messageView: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.processAcross(type: .Regular, fontSize: 16)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.antiquityColor()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

//: extension QuoteDetailPopView {
extension DiscoidalPopView {
    //: func show() {
    func native() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = FormalView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.dotView(view: self)
        //: popView?.showInView(view: DirtyMacroDefine.getWindow())
        popView?.birdSEyeViewMiss(view: DirtyMacroDefine.effectRequire())
    }

    //: @objc func dismiss() {
    @objc func formAcrossEditor() {
        //: popView?.dismissView()
        popView?.detectDecide()
        //: popView = nil
        popView = nil
    }
}

//: extension QuoteDetailPopView {
extension DiscoidalPopView {
    // 添加视图
    //: private func setupSubviews() {
    private func publish() {
        //: self.backgroundColor = UIColor.appBgColor()
        self.backgroundColor = UIColor.wateringPot()
        //: self.addSubview(messageView)
        self.addSubview(messageView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func picConstraint() {
        //: messageView.snp.makeConstraints { make in
        messageView.snp.makeConstraints { make in
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
    }
}


//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let notiCurName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Add more details of yourself" :*/
fileprivate let appSourceValue:[Character] = ["A","d","d"," ","m","o","r","e"," ","d","e","t","a","i","l","s"," ","o","f"," ","y","o","u"]
fileprivate let noti_vantageEveryMsg:String = "RSELF"

/*: "#999999" :*/
fileprivate let app_bitPath:[Character] = ["#","9","9","9","9","9","9"]

/*: "0/500" :*/
fileprivate let mainPostId:String = "0/500"

/*: "Tip:Don't post content that induces others to send gifts or other money-relatsed content." :*/
fileprivate let noti_northKey:[UInt8] = [0x2e,0x74,0x6e,0x65,0x74,0x6e,0x6f,0x63,0x20,0x64,0x65,0x73,0x74,0x61,0x6c,0x65,0x72,0x2d,0x79,0x65,0x6e,0x6f,0x6d,0x20,0x72,0x65,0x68,0x74,0x6f,0x20,0x72,0x6f,0x20,0x73,0x74,0x66,0x69,0x67,0x20,0x64,0x6e,0x65,0x73,0x20,0x6f,0x74,0x20,0x73,0x72,0x65,0x68,0x74,0x6f,0x20,0x73,0x65,0x63,0x75,0x64,0x6e,0x69,0x20,0x74,0x61,0x68,0x74,0x20,0x74,0x6e,0x65,0x74,0x6e,0x6f,0x63,0x20,0x74,0x73,0x6f,0x70,0x20,0x74,0x27,0x6e,0x6f,0x44,0x3a,0x70,0x69,0x54]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RecoverReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/31.
//

//: import UIKit
import UIKit

//: typealias EditSignBlock = (String) ->(Void)
typealias EditSignBlock = (String) -> Void

//: class TalkingEditSignCell: UITableViewCell {
class RecoverReactiveCompatible: UITableViewCell {
    //: let limitCount = 500
    let limitCount = 500
    //: var signBlock: EditSignBlock!
    var signBlock: EditSignBlock!

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(titleLB)
        backView.addSubview(titleLB)
        //: backView.addSubview(numberLB)
        backView.addSubview(numberLB)
        //: backView.addSubview(textView)
        backView.addSubview(textView)

        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(lick(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardShowBeHidden(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(pure(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: notiCurName.reversed(), encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()

        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.trailing.equalTo(self.snp.trailing).offset(-15)
            make.trailing.equalTo(self.snp.trailing).offset(-15)
            //: make.top.equalTo(self)
            make.top.equalTo(self)
            //: make.bottom.equalTo(self).offset(-15)
            make.bottom.equalTo(self).offset(-15)
        }
        //: titleLB.snp.makeConstraints { make in
        titleLB.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(12)
            make.leading.equalTo(backView).offset(12)
            //: make.top.equalTo(backView).offset(12)
            make.top.equalTo(backView).offset(12)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }
        //: numberLB.snp.makeConstraints { make in
        numberLB.snp.makeConstraints { make in
            //: make.trailing.equalTo(backView.snp.trailing).offset(-12)
            make.trailing.equalTo(backView.snp.trailing).offset(-12)
            //: make.top.equalTo(backView).offset(16)
            make.top.equalTo(backView).offset(16)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: textView.snp.makeConstraints { make in
        textView.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(12)
            make.leading.equalTo(backView).offset(12)
            //: make.trailing.equalTo(backView.snp.trailing).offset(-12)
            make.trailing.equalTo(backView.snp.trailing).offset(-12)
            //: make.top.equalTo(numberLB.snp.bottom).offset(10)
            make.top.equalTo(numberLB.snp.bottom).offset(10)
            //: make.bottom.equalTo(backView.snp.bottom).offset(-10)
            make.bottom.equalTo(backView.snp.bottom).offset(-10)
        }
    }

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view
        //: }()
    }()

    //: lazy var titleLB: UILabel = {
    lazy var titleLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        lb.font = UIFont.processAcross(type: .Medium, fontSize: 17)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.antiquityColor()
        //: lb.text = "Add more details of yourself".localized
        lb.text = (String(appSourceValue) + noti_vantageEveryMsg.lowercased()).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var numberLB: UILabel = {
    lazy var numberLB: UILabel = {
        //: let LB = UILabel.init()
        let LB = UILabel()
        //: LB.textColor = UIColor.init(hex: "#999999")
        LB.textColor = UIColor(hex: (String(app_bitPath)))
        //: LB.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        LB.font = UIFont.processAcross(type: .Regular, fontSize: 14)
        //: LB.text = "0/500"
        LB.text = (mainPostId.capitalized)
        //: LB.textAlignment = .right
        LB.textAlignment = .right
        //: return LB
        return LB
        //: }()
    }()

    //: lazy var textView: TalkingTextView = {
    lazy var textView: FormalHasDelegate = {
        //: let textView = TalkingTextView()
        let textView = FormalHasDelegate()
        //: let sign = CompositionReactiveCompatible.share.loginUserMode.signature
        let sign = CompositionReactiveCompatible.share.loginUserMode.signature
        //: textView.text = sign
        textView.text = sign
        //: textView.placeholder = "Tip:Don't post content that induces others to send gifts or other money-relatsed content.".localized
        textView.placeholder = String(bytes: noti_northKey.reversed(), encoding: .utf8)!.localized
        //: textView.placeholderColor = UIColor.appValueDetailColor()
        textView.placeholderColor = UIColor.pointOfTotalersection()
        //: textView.PlaceholderInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        textView.PlaceholderInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        //: textView.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        textView.font = UIFont.processAcross(type: .Regular, fontSize: 15)
        //: textView.textColor = UIColor.appTitleColor()
        textView.textColor = UIColor.antiquityColor()
        //: textView.textContainer.maximumNumberOfLines = 0
        textView.textContainer.maximumNumberOfLines = 0
        //: textView.textAlignment = .left
        textView.textAlignment = .left
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ReadingLanguageManager.shared.direction == .rightToLeft {
            //: textView.textAlignment = .right
            textView.textAlignment = .right
        }
        //: textView.textContainer.lineBreakMode = .byTruncatingTail
        textView.textContainer.lineBreakMode = .byTruncatingTail
        //: textView.delegate = self
        textView.delegate = self
        //: textView.clipsToBounds = true
        textView.clipsToBounds = true
        //: textView.layer.cornerRadius = 4
        textView.layer.cornerRadius = 4
        //: textView.returnKeyType = UIReturnKeyType.done
        textView.returnKeyType = UIReturnKeyType.done
        //: textView.bounces = false
        textView.bounces = false
        //: textView.backgroundColor = .appBgColor()
        textView.backgroundColor = .wateringPot()
        //: numberLB.text =  "\(textView.text.count)/\(limitCount)"
        numberLB.text = "\(textView.text.count)/\(limitCount)"
        //: return textView
        return textView
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingEditSignCell {
extension RecoverReactiveCompatible {
    //: @objc func keyboardWillBeHidden(notification: NSNotification) {
    @objc func lick(notification _: NSNotification) {
        //: if self.signBlock != nil {
        if self.signBlock != nil {
            //: self.signBlock(textView.text ?? "")
            self.signBlock(textView.text ?? "")
        }
    }

    //: @objc func keyboardShowBeHidden(notification: NSNotification) {
    @objc func pure(notification: NSNotification) {
        //: let info = notification.userInfo
        let info = notification.userInfo
        //: let keyBoardHeight = (info![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.size.height
        let keyBoardHeight = (info![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.size.height
    }
}

// MARK: - UITextViewDelegate

//: extension TalkingEditSignCell: UITextViewDelegate {
extension RecoverReactiveCompatible: UITextViewDelegate {
    //: public func textViewDidChange(_ textView: UITextView) {
    public func textViewDidChange(_ textView: UITextView) {
        //: if textView.text.count > limitCount {
        if textView.text.count > limitCount {
            // 获得已输出字数与正输入字母数
            //: let selectRange = textView.markedTextRange
            let selectRange = textView.markedTextRange

            // 获取高亮部分 － 如果有联想词则解包成功
            //: if let selectRange = selectRange {
            if let selectRange = selectRange {
                //: let position =  textView.position(from: (selectRange.start), offset: 0)
                let position = textView.position(from: selectRange.start, offset: 0)
                //: if (position != nil) {
                if position != nil {
                    //: return
                    return
                }
            }

            //: let textContent = textView.text ?? ""
            let textContent = textView.text ?? ""
            //: let textNum = textContent.count
            let textNum = textContent.count

            // 截取
            //: if textNum > limitCount && limitCount > 0 {
            if textNum > limitCount && limitCount > 0 {
                //: textView.text = string_prefix(index: limitCount, text: textContent)
                textView.text = safetyMarginForName(index: limitCount, text: textContent)
            }
        }
        //: numberLB.text =  "\(textView.text.count)/\(limitCount)"
        numberLB.text = "\(textView.text.count)/\(limitCount)"
    }

    //: public func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
    public func textViewShouldBeginEditing(_: UITextView) -> Bool {
        //: numberLB.isHidden = false
        numberLB.isHidden = false
        //: return true
        return true
    }

    //: public func textViewDidEndEditing(_ textView: UITextView) {
    public func textViewDidEndEditing(_ textView: UITextView) {
        //: if textView.text.isEmpty {
        if textView.text.isEmpty {
            //: numberLB.isHidden = false
            numberLB.isHidden = false
            //: } else {
        } else {
            //: numberLB.isHidden = true
            numberLB.isHidden = true
        }
    }

    //: public func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
    public func textView(_ textView: UITextView, shouldChangeTextIn _: NSRange, replacementText text: String) -> Bool {
        //: if textView.returnKeyType == .done {
        if textView.returnKeyType == .done {
            //: if text == "\n" {
            if text == "\n" {
                //: textView.resignFirstResponder()
                textView.resignFirstResponder()
            }
            //: return true
            return true
        }
        //: return true
        return true
    }

    // 字符串的截取 从头截取到指定index
    //: private func string_prefix(index: Int,text:String) -> String {
    private func safetyMarginForName(index: Int, text: String) -> String {
        //: if text.count <= index {
        if text.count <= index {
            //: return text
            return text
            //: } else {
        } else {
            //: let index = text.index(text.startIndex, offsetBy: index)
            let index = text.index(text.startIndex, offsetBy: index)
            //: let str = text.prefix(upTo: index)
            let str = text.prefix(upTo: index)
            //: return String(str)
            return String(str)
        }
    }
}

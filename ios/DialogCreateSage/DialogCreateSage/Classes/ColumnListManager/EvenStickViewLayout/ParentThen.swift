
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainThemTitle:[UInt8] = [0xc4,0xc9,0xc4,0xcf,0x83,0xbe,0xca,0xbf,0xc0,0xcd,0x95,0x84,0x7b,0xc3,0xbc,0xce,0x7b,0xc9,0xca,0xcf,0x7b,0xbd,0xc0,0xc0,0xc9,0x7b,0xc4,0xc8,0xcb,0xc7,0xc0,0xc8,0xc0,0xc9,0xcf,0xc0,0xbf]

fileprivate func paraDrownPin(scan num: UInt8) -> UInt8 {
    let value = Int(num) + 165
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_translation" :*/
fileprivate let user_basicMsg:String = "ICON"
fileprivate let userAppId:String = "slparttion"

/*: "English" :*/
fileprivate let noti_personId:String = "stage become cur whyEnglis"
fileprivate let show_highlightFormat:[Character] = ["h"]

/*: "icon_translation_go" :*/
fileprivate let noti_baseballId:String = "icon_broadcast rank"
fileprivate let noti_photoMsg:String = "slfeatureti"
fileprivate let userWarningValue:String = "on_gostrip world"

/*: "Trans" :*/
fileprivate let appIllegalKey:[Character] = ["T","r","a","n","s"]

/*: "targetText" :*/
fileprivate let app_minimizeContent:String = "treferrg"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ParentThen.swift
//  AbroadTalking
//
//  Created by young on 2023/7/4.
//

//: import NaturalLanguage
import NaturalLanguage
//: import UIKit
import UIKit

//: class TalkingSelectTranslationView: UIView {
class ParentThen: UIView {
    //: var transBlock: ((_ succeed: Bool, _ text: String) -> Void)?
    var transBlock: ((_ succeed: Bool, _ text: String) -> Void)? // 翻译结果Block
    //: private var checkTransStr = ""                                // 需要翻译的文本
    private var checkTransStr = "" // 需要翻译的文本

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: backgroundColor = .white
        backgroundColor = .white
        //: setupSubviews()
        partyProposalShould()
        //: setupSubViewsConstraint()
        countTake()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainThemTitle.map{paraDrownPin(scan: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var leftBtn: TalkingButton = {
    private lazy var leftBtn: AfterView = {
        //: let btn = TalkingButton()
        let btn = AfterView()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_translation"), for: .normal)
        btn.setImage(UIImage.parentSet(name: (user_basicMsg.lowercased() + "_tran" + userAppId.replacingOccurrences(of: "part", with: "a"))), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = .processAcross(type: .Regular, fontSize: 14)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.submaxilla(), for: .normal)
        //: btn.setTitle("English".localized, for: .normal)
        btn.setTitle((String(noti_personId.suffix(6)) + String(show_highlightFormat)).localized, for: .normal)
        //: btn.imageAlignment = .left
        btn.imageAlignment = .left
        //: btn.spaceBetweenTitleAndImage = 5
        btn.spaceBetweenTitleAndImage = 5
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rightBtn: TalkingButton = {
    private lazy var rightBtn: AfterView = {
        //: let btn = TalkingButton()
        let btn = AfterView()
        //: let image = UIImage.BundleImageNamed(name: "icon_translation_go").withTintColor(.appThemeColor())
        let image = UIImage.parentSet(name: (String(noti_baseballId.prefix(5)) + "tran" + noti_photoMsg.replacingOccurrences(of: "feature", with: "a") + String(userWarningValue.prefix(5)))).withTintColor(.rawMonthCombine())
        //: btn.setImage(image, for: .normal)
        btn.setImage(image, for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 14)
        btn.titleLabel?.font = .processAcross(type: .Medium, fontSize: 14)
        //: btn.setTitleColor(UIColor.appThemeColor(), for: .normal)
        btn.setTitleColor(UIColor.rawMonthCombine(), for: .normal)
        //: btn.setTitle("Trans".localized, for: .normal)
        btn.setTitle((String(appIllegalKey)).localized, for: .normal)
        //: btn.imageAlignment = .right
        btn.imageAlignment = .right
        //: btn.spaceBetweenTitleAndImage = 3
        btn.spaceBetweenTitleAndImage = 3
        //: btn.addTarget(self, action: #selector(transButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(nearScene), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - 请求数据

//: extension TalkingSelectTranslationView {
extension ParentThen {
    /// 翻译文本内容
    //: private func req_translateText() {
    private func nameCell() {
        //: TalkingChatRequestTool.req_translateText(text: checkTransStr) { succeed, result, errorModel in
        ReminderRequestTool.subjectMatterCompletion(text: checkTransStr) { succeed, result, _ in
            //: guard succeed else {
            guard succeed else {
                //: self.transBlock?(succeed, "")
                self.transBlock?(succeed, "")
                //: return
                return
            }

            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: let content = json["targetText"].stringValue
            let content = json[(app_minimizeContent.replacingOccurrences(of: "refer", with: "a") + "etText")].stringValue
            //: self.transBlock?(succeed, content)
            self.transBlock?(succeed, content)
        }
    }
}

// MARK: - Event

//: extension TalkingSelectTranslationView {
extension ParentThen {
    /// 检测输入内容是否为英文
    /// - Parameter inputText: 输入内容
    /// - Returns: 结果
    //: func checkInputLanguage(_ inputText: String) -> Bool {
    func distanceDown(_ inputText: String) -> Bool {
        //: checkTransStr = inputText.trimmingCharacters(in: .whitespaces)
        checkTransStr = inputText.trimmingCharacters(in: .whitespaces)
        //: guard checkTransStr.count > 0 else {
        guard checkTransStr.count > 0 else {
            //: return true
            return true
        }
        //: let languageRecognizer = NLLanguageRecognizer()
        let languageRecognizer = NLLanguageRecognizer()
        //: languageRecognizer.processString(inputText)
        languageRecognizer.processString(inputText)
        //: let language = languageRecognizer.dominantLanguage?.rawValue
        let language = languageRecognizer.dominantLanguage?.rawValue
        //: return language == "en"
        return language == "en"
    }

    /// 翻译按钮点击事件
    //: @objc private func transButtonClick() {
    @objc private func nearScene() {
        //: self.req_translateText()
        self.nameCell()
    }
}

// MARK: - Layout

//: extension TalkingSelectTranslationView {
extension ParentThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func partyProposalShould() {
        //: self.addSubview(leftBtn)
        self.addSubview(leftBtn)
        //: self.addSubview(rightBtn)
        self.addSubview(rightBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func countTake() {
        //: leftBtn.snp.makeConstraints { make in
        leftBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.top.equalTo(9)
            make.top.equalTo(9)
            //: make.height.equalTo(17)
            make.height.equalTo(17)
            //: make.width.equalTo(70)
            make.width.equalTo(70)
        }
        //: rightBtn.snp.makeConstraints { make in
        rightBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.centerY.height.equalTo(leftBtn)
            make.centerY.height.equalTo(leftBtn)
        }
    }
}

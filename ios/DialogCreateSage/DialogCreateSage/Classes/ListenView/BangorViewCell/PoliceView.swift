
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let data_threeAdditionalName:[UInt8] = [0x9d,0x9a,0x9d,0x80,0xdc,0x97,0x9b,0x90,0x91,0x86,0xce,0xdd,0xd4,0x9c,0x95,0x87,0xd4,0x9a,0x9b,0x80,0xd4,0x96,0x91,0x91,0x9a,0xd4,0x9d,0x99,0x84,0x98,0x91,0x99,0x91,0x9a,0x80,0x91,0x90]

private func remindClip(multiple num: UInt8) -> UInt8 {
    return num ^ 244
}

/*: "icon_me_income" :*/
fileprivate let showPriseBrowName:String = "thumb pair content regainicon_m"
fileprivate let const_attractiveKey:String = "per"

/*: "Income" :*/
fileprivate let userInformMsg:[Character] = ["I","n","c","o","m"]
fileprivate let const_whiteTechnologyText:[Character] = ["e"]

/*: "icon_me_male_wallet" :*/
fileprivate let data_executeMsg:[Character] = ["i","c","o","n","_","m","e","_","m","a","l","e","_","w","a"]
fileprivate let noti_confirmFormat:[Character] = ["l","l","e","t"]

/*: "Wallet" :*/
fileprivate let noti_wellTitle:[Character] = ["W","a","l","l","e","t"]

/*: "#7189F7" :*/
fileprivate let notiEmptyStr:[Character] = ["#","7","1","8","9","F","7"]

/*: "Level" :*/
fileprivate let user_brushTitle:String = "Levelevaluate once valid discount no"

/*: "icon_me_level" :*/
fileprivate let appHighlightMessage:[Character] = ["i","c","o","n","_"]
fileprivate let app_formatUrl:String = "me_levelmulti resolution beautiful personality me"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PoliceView.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeTwoColumnsCell: UITableViewCell {
class PoliceView: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        shadowiness()
        //: setupSubViewsConstraint()
        lastDoingDomain()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: data_threeAdditionalName.map{remindClip(multiple: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var goldCoinsBtn: UIButton = {
    private lazy var goldCoinsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.layer.cornerRadius = 6
        btn.layer.cornerRadius = 6
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(goldCoinsButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(tantalum), for: .touchUpInside)

        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lab.font = UIFont.processAcross(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.antiquityColor()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
        }

        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: btn.addSubview(icon)
        btn.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.size.equalTo(CGSize(width: 38, height: 37))
            make.size.equalTo(CGSize(width: 38, height: 37))
        }
        //: if CompositionReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue && CompositionReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
        if CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.female.rawValue && CompositionReactiveCompatible.share.appStatus != ColumnExInsetTarget.special.rawValue {
            //: icon.image = UIImage.BundleImageNamed(name: "icon_me_income")
            icon.image = UIImage.parentSet(name: (String(showPriseBrowName.suffix(6)) + "e_incom" + const_attractiveKey.replacingOccurrences(of: "per", with: "e")))
            //: lab.text = "Income".localized
            lab.text = (String(userInformMsg) + String(const_whiteTechnologyText)).localized
            //: } else {
        } else {
            //: icon.image = UIImage.BundleImageNamed(name: "icon_me_male_wallet")
            icon.image = UIImage.parentSet(name: (String(data_executeMsg) + String(noti_confirmFormat)))
            //: lab.text = "Wallet".localized
            lab.text = (String(noti_wellTitle)).localized
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var goldCoinsNum: UILabel = {
    private lazy var goldCoinsNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.processAcross(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor(hex: "#7189F7")
        lab.textColor = UIColor(hex: (String(notiEmptyStr)))
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var myLevelBtn: UIButton = {
    private lazy var myLevelBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.layer.cornerRadius = 6
        btn.layer.cornerRadius = 6
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(myLevelButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(buttonPosition), for: .touchUpInside)

        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lab.font = UIFont.processAcross(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.antiquityColor()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Level".localized
        lab.text = (String(user_brushTitle.prefix(5))).localized
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
        }

        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.image = UIImage.BundleImageNamed(name: "icon_me_level")
        icon.image = UIImage.parentSet(name: (String(appHighlightMessage) + String(app_formatUrl.prefix(8))))
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: btn.addSubview(icon)
        btn.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.size.equalTo(CGSize(width: 39, height: 37))
            make.size.equalTo(CGSize(width: 39, height: 37))
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var myLevelNum: UILabel = {
    private lazy var myLevelNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.processAcross(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor(hex: "#7189F7")
        lab.textColor = UIColor(hex: (String(notiEmptyStr)))
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeTwoColumnsCell {
extension PoliceView {
    //: func setViewData() {
    func contextFail() {
        //: if CompositionReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue && CompositionReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
        if CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.female.rawValue, CompositionReactiveCompatible.share.appStatus != ColumnExInsetTarget.special.rawValue {
            //: goldCoinsNum.text = "$\(CompositionReactiveCompatible.share.loginUserMode.mf_income)"
            goldCoinsNum.text = "$\(CompositionReactiveCompatible.share.loginUserMode.mf_income)"
            //: } else {
        } else {
            //: goldCoinsNum.text = "\(CompositionReactiveCompatible.share.loginUserMode.mf_coin)"
            goldCoinsNum.text = "\(CompositionReactiveCompatible.share.loginUserMode.mf_coin)"
        }
        //: myLevelNum.text = CompositionReactiveCompatible.share.loginUserMode.level
        myLevelNum.text = CompositionReactiveCompatible.share.loginUserMode.level
    }

    /// gold coins
    //: @objc private func goldCoinsButtonClick() {
    @objc private func tantalum() {
        //: incomeClick()
        rentalIncome()
    }

    /// my level
    //: @objc private func myLevelButtonClick() {
    @objc private func buttonPosition() {
        //: SightReactiveCompatible.share.func__pushToWebVC(webViewType: .Level)
        SightReactiveCompatible.share.elementOfResume(webViewType: .Level)
    }

    /// income
    //: @objc func incomeClick() {
    @objc func rentalIncome() {
        //: if CompositionReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue && CompositionReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
        if CompositionReactiveCompatible.share.loginUserMode.sex == ArrowGender.female.rawValue, CompositionReactiveCompatible.share.appStatus != ColumnExInsetTarget.special.rawValue {
            //: if CompositionReactiveCompatible.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
            if CompositionReactiveCompatible.share.loginUserMode.isTPAuth == GiftMeasurable.isSuccessed.rawValue {
                //: SightReactiveCompatible.share.func__pushToWebVC(webViewType: .Balance)
                SightReactiveCompatible.share.elementOfResume(webViewType: .Balance)
                //: } else {
            } else {
                //: SightReactiveCompatible.share.func__pushUserVerifyController(toast: nil)
                SightReactiveCompatible.share.bringExposure(toast: nil)
            }

            //: } else {
        } else {
            //: SightReactiveCompatible.share.func__pushToWebVC(webViewType: .RechargeFullPage)
            SightReactiveCompatible.share.elementOfResume(webViewType: .RechargeFullPage)
        }
    }
}

// MARK: - Layout

//: extension TalkingMeTwoColumnsCell {
extension PoliceView {
    /// 添加视图
    //: private func setupSubviews() {
    private func shadowiness() {
        //: self.contentView.addSubview(goldCoinsBtn)
        self.contentView.addSubview(goldCoinsBtn)
        //: goldCoinsBtn.addSubview(goldCoinsNum)
        goldCoinsBtn.addSubview(goldCoinsNum)
        //: self.contentView.addSubview(myLevelBtn)
        self.contentView.addSubview(myLevelBtn)
        //: myLevelBtn.addSubview(myLevelNum)
        myLevelBtn.addSubview(myLevelNum)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func lastDoingDomain() {
        //: let btn_width = (ScreenWidth-30-8)/2
        let btn_width = (user_needValue - 30 - 8) / 2
        //: goldCoinsBtn.snp.makeConstraints { make in
        goldCoinsBtn.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.size.equalTo(CGSize(width: btn_width, height: 70))
            make.size.equalTo(CGSize(width: btn_width, height: 70))
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
        //: goldCoinsNum.snp.makeConstraints { make in
        goldCoinsNum.snp.makeConstraints { make in
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }

        //: myLevelBtn.snp.makeConstraints { make in
        myLevelBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.size.bottom.equalTo(goldCoinsBtn)
            make.top.size.bottom.equalTo(goldCoinsBtn)
        }
        //: myLevelNum.snp.makeConstraints { make in
        myLevelNum.snp.makeConstraints { make in
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }
    }
}

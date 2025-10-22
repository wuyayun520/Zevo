
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_tabId:[UInt8] = [0xcf,0xc8,0xcf,0xd2,0x8e,0xc5,0xc9,0xc2,0xc3,0xd4,0x9c,0x8f,0x86,0xce,0xc7,0xd5,0x86,0xc8,0xc9,0xd2,0x86,0xc4,0xc3,0xc3,0xc8,0x86,0xcf,0xcb,0xd6,0xca,0xc3,0xcb,0xc3,0xc8,0xd2,0xc3,0xc2]

/*: "icon_me_video" :*/
fileprivate let kYaPath:String = "about style vertical block stageicon_me_"
fileprivate let notiSphereId:String = "videntry"

/*: "Receive video calls" :*/
fileprivate let notiFemaleDareGrayUrl:[Character] = ["R","e","c","e","i","v","e"," ","v"]
fileprivate let dataAnotherTitle:[Character] = ["i","d","e","o"," ","c","a","l","l","s"]

/*: "icon_me_voice" :*/
fileprivate let showGalleryUrl:String = "iton"
fileprivate let dataEstablishMsg:String = "oicya"

/*: "Receive voice calls" :*/
fileprivate let constSlimId:[Character] = ["R","e","c","e","i","v","e"," ","v","o","i","c","e"," ","c","a","l"]
fileprivate let main_tillTitle:String = "earlys"

/*: "icon_me_randomvideo" :*/
fileprivate let user_effectiveId:[Character] = ["i","c","o","n","_","m"]
fileprivate let show_statusThreeDarkMsg:[Character] = ["e","_","r","a","n","d","o","m","v","i","d","e","o"]

/*: "Random Video" :*/
fileprivate let show_goldName:[Character] = ["R","a","n","d","o","m"," ","V"]
fileprivate let data_planUrl:String = "idelens"

/*: "value" :*/
fileprivate let mainDistantHumanStr:String = "valudue"

/*: "type" :*/
fileprivate let k_quitMessage:[Character] = ["t","y","p","e"]

/*: "videoAuth" :*/
fileprivate let userAnalysisId:[Character] = ["v","i","d","e","o","A","u","t"]
fileprivate let userGalleryUrl:String = "photo"

/*: "voiceAuth" :*/
fileprivate let mainHereUrl:[Character] = ["v","o","i","c","e"]
fileprivate let notiSumFortFormat:String = "Authfun king in animal orientation"

/*: "randomVideo" :*/
fileprivate let appIncreaseText:String = "raonce"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ExampleThen.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/24.
//

//: import UIKit
import UIKit

//: enum SettingReceiveVideoType {
enum MergeVideoType {
    //: case video
    case video
    //: case voice
    case voice
    //: case randomVideo
    case randomVideo
}

//: class TalkingSettingReceiveVideoCell: UITableViewCell {
class ExampleThen: UITableViewCell {
    //: private var currType: SettingReceiveVideoType = .video
    private var currType: MergeVideoType = .video
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
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_tabId.map{$0^166}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: titleBLB.snp.makeConstraints { make in
        titleBLB.snp.makeConstraints { make in
            //: make.leading.equalTo(icon.snp.trailing).offset(7)
            make.leading.equalTo(icon.snp.trailing).offset(7)
            //: make.centerY.equalTo(icon)
            make.centerY.equalTo(icon)
        }

        //: switchView.snp.makeConstraints { make in
        switchView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.width.equalTo(51)
            make.width.equalTo(51)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }
    }

    // MARK: - Lazy load

    //: private lazy var backView: UIView = {
    private lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: contentView.addSubview(view)
        contentView.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: backView.addSubview(img)
        backView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var titleBLB: UILabel = {
    private lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lb.font = UIFont.processAcross(type: .Medium, fontSize: 16)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.antiquityColor()
        //: backView.addSubview(lb)
        backView.addSubview(lb)
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var switchView: UISwitch = {
    private lazy var switchView: UISwitch = {
        //: let swit = UISwitch.init()
        let swit = UISwitch()
        //: swit.isOn = false
        swit.isOn = false
        //: swit.onTintColor = UIColor.appThemeColor()
        swit.onTintColor = UIColor.rawMonthCombine()
        //: swit.thumbTintColor = .white
        swit.thumbTintColor = .white
        //: swit.addTarget(self, action: #selector(switchDidChange), for: .valueChanged)
        swit.addTarget(self, action: #selector(bring), for: .valueChanged)
        //: backView.addSubview(swit)
        backView.addSubview(swit)
        //: return swit
        return swit
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingSettingReceiveVideoCell {
extension ExampleThen {
    /// 刷新cell
    //: func refreshCell(type: SettingReceiveVideoType) {
    func proposalType(type: MergeVideoType) {
        //: self.currType = type
        self.currType = type
        //: switch type {
        switch type {
        //: case .video:
        case .video:
            //: icon.image = UIImage.BundleImageNamed(name: "icon_me_video")
            icon.image = UIImage.parentSet(name: (String(kYaPath.suffix(8)) + notiSphereId.replacingOccurrences(of: "entry", with: "eo")))
            //: titleBLB.text = "Receive video calls".localized
            titleBLB.text = (String(notiFemaleDareGrayUrl) + String(dataAnotherTitle)).localized
            //: switchView.isOn = (CompositionReactiveCompatible.share.loginUserMode.videoAuth == "1")
            switchView.isOn = (CompositionReactiveCompatible.share.loginUserMode.videoAuth == "1")

        //: case .voice:
        case .voice:
            //: icon.image = UIImage.BundleImageNamed(name: "icon_me_voice")
            icon.image = UIImage.parentSet(name: (showGalleryUrl.replacingOccurrences(of: "to", with: "co") + "_me_v" + dataEstablishMsg.replacingOccurrences(of: "ya", with: "e")))
            //: titleBLB.text = "Receive voice calls".localized
            titleBLB.text = (String(constSlimId) + main_tillTitle.replacingOccurrences(of: "early", with: "l")).localized
            //: switchView.isOn = (CompositionReactiveCompatible.share.loginUserMode.voiceAuth == "1")
            switchView.isOn = (CompositionReactiveCompatible.share.loginUserMode.voiceAuth == "1")

        //: case .randomVideo:
        case .randomVideo:
            //: icon.image = UIImage.BundleImageNamed(name: "icon_me_randomvideo")
            icon.image = UIImage.parentSet(name: (String(user_effectiveId) + String(show_statusThreeDarkMsg)))
            //: titleBLB.text = "Random Video".localized
            titleBLB.text = (String(show_goldName) + data_planUrl.replacingOccurrences(of: "lens", with: "o")).localized
            //: switchView.isOn = (CompositionReactiveCompatible.share.appUserConfigMode.randomVideo == "1")
            switchView.isOn = (CompositionReactiveCompatible.share.appUserConfigMode.randomVideo == "1")
        }
    }

    /// 按钮开关
    //: @objc func switchDidChange() {
    @objc func bring() {
        //: self.switchView.isEnabled = false
        self.switchView.isEnabled = false
        //: var params = [String: Any]()
        var params = [String: Any]()
        //: let value = self.switchView.isOn ? "1":"-1"
        let value = self.switchView.isOn ? "1" : "-1"
        //: params["value"] = value
        params[(mainDistantHumanStr.replacingOccurrences(of: "due", with: "e"))] = value
        //: switch currType {
        switch currType {
        //: case .video:
        case .video:
            //: params["type"] = "videoAuth"
            params[(String(k_quitMessage))] = (String(userAnalysisId) + userGalleryUrl.replacingOccurrences(of: "photo", with: "h"))
        //: case .voice:
        case .voice:
            //: params["type"] = "voiceAuth"
            params[(String(k_quitMessage))] = (String(mainHereUrl) + String(notiSumFortFormat.prefix(4)))
        //: case .randomVideo:
        case .randomVideo:
            //: params["type"] = "randomVideo"
            params[(String(k_quitMessage))] = (appIncreaseText.replacingOccurrences(of: "once", with: "nd") + "omVideo")
        }
        //: ProgressHUD.show()
        PointerReactiveCompatible.soundAssetThrow()
        //: TalkingMeRequestTool.req_SettingChange(params: params) { succeed, result, errorModel in
        GreatThen.toALesserExtent(params: params) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            PointerReactiveCompatible.motivationCharmDismiss()
            //: self.switchView.isEnabled = true
            self.switchView.isEnabled = true
            //: guard succeed else {
            guard succeed else {
                //: self.switchView.isOn = !self.switchView.isOn
                self.switchView.isOn = !self.switchView.isOn
                //: return
                return
            }
            //: switch self.currType {
            switch self.currType {
            //: case .video:
            case .video:
                //: CompositionReactiveCompatible.share.loginUserMode.videoAuth = value
                CompositionReactiveCompatible.share.loginUserMode.videoAuth = value
            //: case .voice:
            case .voice:
                //: CompositionReactiveCompatible.share.loginUserMode.voiceAuth = value
                CompositionReactiveCompatible.share.loginUserMode.voiceAuth = value
            //: case .randomVideo:
            case .randomVideo:
                //: CompositionReactiveCompatible.share.appUserConfigMode.randomVideo = value
                CompositionReactiveCompatible.share.appUserConfigMode.randomVideo = value
            }
            // 上报女性用户busy状态
            //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
            (SceneKingfisherCompatible.shared as! SceneKingfisherCompatible).toilingStatusDamDescribe()
        }
    }
}

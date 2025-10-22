
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let data_layerMirrorPath:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "male_invite_call_mask" :*/
fileprivate let noti_ehMessage:[Character] = ["m","a","l","e","_","i","n","v","i","t","e","_","c"]
fileprivate let noti_streamTitle:[Character] = ["a","l","l","_","m","a","s","k"]

/*: "get json error" :*/
fileprivate let user_sheerStopMsg:String = "get slide before"
fileprivate let notiCornerMsg:String = " errocos cover blanket"
fileprivate let appRetirementSocialTitle:String = "skirt"

/*: "#FF2348" :*/
fileprivate let const_policeUrl:[Character] = ["#"]
fileprivate let app_premiumName:[Character] = ["F","F","2","3","4","8"]

/*: "She invites you to call" :*/
fileprivate let const_databaseUrl:String = "together hi stock boardShe inv"
fileprivate let main_principalIncomePath:[Character] = ["i","t","e","s"," ","y","o","u"," ","t","o"," ","c","a","l","l"]

/*: "btn_video_drop_nor" :*/
fileprivate let noti_skilledCookiePath:String = "btn_day account broad party ya"
fileprivate let user_heId:String = "stream ask representation age floor_drop_"
fileprivate let constLowName:[Character] = ["n","o","r"]

/*: "male_invite_call_nor" :*/
fileprivate let main_nameMessage:String = "incident paper take functionmale_i"
fileprivate let noti_rawUrl:String = "punish remove occur make upll_nor"

/*: "transform.scale" :*/
fileprivate let showEarnAfterMessage:String = "TRANSFO"
fileprivate let appListenText:String = "R"
fileprivate let kLeaveUrl:String = "m.scalelick side allow"

/*: "animation" :*/
fileprivate let user_directData:String = "bear"
fileprivate let user_stopData:String = "nicountryation"

/*: "icon_Chat_freetimes" :*/
fileprivate let data_howValue:String = "icon_Cphysical fragment repeat report"
fileprivate let k_robotSpendValue:String = "reetfirstmes"

/*: "limit" :*/
fileprivate let const_styleId:[UInt8] = [0x74,0x69,0x6d,0x69,0x6c]

/*: "uid" :*/
fileprivate let show_welcomeDisplayText:[Character] = ["u","i","d"]

/*: "invitePop" :*/
fileprivate let data_stripTunMsg:String = "feev"
fileprivate let noti_lackValue:String = "cookie press safetyitePop"

/*: "headPic" :*/
fileprivate let k_transformUrl:String = "playere"
fileprivate let user_wearValidTitle:[Character] = ["a","d","P","i","c"]

/*: "videoUrl" :*/
fileprivate let main_aspectBlackText:String = "videoUrhandle additional pass"
fileprivate let notiMeetingId:[Character] = ["l"]

/*: "videoPop" :*/
fileprivate let main_diskValue:String = "videoPotechnical size want operate"
fileprivate let noti_insideMsg:[Character] = ["p"]

/*: "yyyy-MM-dd" :*/
fileprivate let noti_personalContactSaleStr:[Character] = ["y","y","y","y","-","M","M","-","d","d"]

/*: "today" :*/
fileprivate let data_ovalMessage:String = "toprovideay"

/*: "times" :*/
fileprivate let dataInstallationUrl:String = "timkind"

/*: "ShowMaleInviteCallViewDateKey_ :*/
fileprivate let kInstallId:[Character] = ["S","h","o","w","M","a","l","e","I","n","v","i","t","e","C","a","l","l","V","i","e","w","D","a","t","e","K","e","y","_"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WhiteExThen.swift
//  DialogCreateSage
//
//  Created by DouXiu on 2025/8/21.
//

//: import UIKit
import UIKit

//: class MaleInviteCallView: UIView {
class WhiteExThen: UIView {
    //: var dismissBlock: (() -> Void)?
    var dismissBlock: (() -> Void)?
    //: private var popView: TalkingPopView?
    private var popView: FormalView?
    /// 计时器
    //: private var timeoutTimer: Timer?
    private var timeoutTimer: Timer?
    /// 拨打中背景音乐
    //: private var bgmPlayer: TalkingCallBGMPlayer?
    private var bgmPlayer: ExecCosPlayer?
    /// 视频封面
    //: private var myVideoUrl = ""
    private var myVideoUrl = ""
    /// 通话头像
    //: private var callHeadPic = ""
    private var callHeadPic = ""
    /// 用户不在线时，是否换个用户拨打
    //: private var needCallAgain = false
    private var needCallAgain = false

    //: private override init(frame: CGRect) {
    override private init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = UIScreen.main.bounds
        self.frame = UIScreen.main.bounds
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: data_layerMirrorPath.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.placeHolderImage(sex: Gender.female.rawValue)
        v.image = UIImage.province(sex: ArrowGender.female.rawValue)
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: v.layer.cornerRadius = 16
        v.layer.cornerRadius = 16
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: self.addSubview(v)
        self.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    // 视频播放器
    //: private lazy var videoPlayer: TalkingVideoPlayerManager = {
    private lazy var videoPlayer: CapReactiveCompatible = {
        //: let player = TalkingVideoPlayerManager()
        let player = CapReactiveCompatible()
        //: player.setMute(bEnable: true)
        player.doinglyTurn(bEnable: true)
        //: return player
        return player
        //: }()
    }()

    //: private lazy var maskTopImgV: UIImageView = {
    private lazy var maskTopImgV: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: let img = UIImage.BundleImageNamed(name: "male_invite_call_mask")
        let img = UIImage.parentSet(name: (String(noti_ehMessage) + String(noti_streamTitle)))
        //: if let cgimage = img.cgImage {
        if let cgimage = img.cgImage {
            //: v.image = UIImage(cgImage: cgimage, scale: img.scale, orientation: .down)
            v.image = UIImage(cgImage: cgimage, scale: img.scale, orientation: .down)
        }
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: bgImgView.addSubview(v)
        bgImgView.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: bgImgView.addSubview(player)
        bgImgView.addSubview(player)
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Live_countdown_bg)
        let url = AuthorReactiveCompatible.default.typeTo(type: .Live_countdown_bg)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(user_sheerStopMsg.prefix(4)) + "json" + String(notiCornerMsg.prefix(5)) + appRetirementSocialTitle.replacingOccurrences(of: "skirt", with: "r")))
        }
        //: return player
        return player
        //: }()
    }()

    //: private lazy var svgaNumLab: UILabel = {
    private lazy var svgaNumLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 20)
        lab.font = UIFont.counteraction(fontSize: 20)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.textColor = UIColor(hex: "#FF2348")
        lab.textColor = UIColor(hex: (String(const_policeUrl) + String(app_premiumName)))
        //: bgImgView.addSubview(lab)
        bgImgView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.text = "She invites you to call".localized
        label.text = (String(const_databaseUrl.suffix(7)) + String(main_principalIncomePath)).localized
        //: label.font = UIFont.pingfangMediumFont(fontSize: 18)
        label.font = UIFont.counteraction(fontSize: 18)
        //: label.textColor = .white
        label.textColor = .white
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: bgImgView.addSubview(label)
        bgImgView.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: private lazy var maskBottomImgV: UIImageView = {
    private lazy var maskBottomImgV: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.BundleImageNamed(name: "male_invite_call_mask")
        v.image = UIImage.parentSet(name: (String(noti_ehMessage) + String(noti_streamTitle)))
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: bgImgView.addSubview(v)
        bgImgView.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    // 挂断/取消 按钮
    //: private lazy var hangupBtn: UIButton = {
    private lazy var hangupBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_drop_nor"), for: .normal)
        btn.setImage(UIImage.parentSet(name: (String(noti_skilledCookiePath.prefix(4)) + "video" + String(user_heId.suffix(6)) + String(constLowName))), for: .normal)
        //: btn.addTarget(self, action: #selector(hangupButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(countClick), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: bgImgView.addSubview(btn)
        bgImgView.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    // 接听按钮
    //: private lazy var acceptBtn: UIButton = {
    private lazy var acceptBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "male_invite_call_nor"), for: .normal)
        btn.setImage(UIImage.parentSet(name: (String(main_nameMessage.suffix(6)) + "nvite_ca" + String(noti_rawUrl.suffix(6)))), for: .normal)
        //: btn.addTarget(self, action: #selector(acceptButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(occupier), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        // 添加关键帧动画
        //: let keyAnimation = CAKeyframeAnimation()
        let keyAnimation = CAKeyframeAnimation()
        //: keyAnimation.keyPath = "transform.scale"
        keyAnimation.keyPath = (showEarnAfterMessage.lowercased() + appListenText.lowercased() + String(kLeaveUrl.prefix(7)))
        //: keyAnimation.values = [NSValue(cgAffineTransform: CGAffineTransform(scaleX: 1, y: 1)),
        keyAnimation.values = [NSValue(cgAffineTransform: CGAffineTransform(scaleX: 1, y: 1)),
                               //: NSValue(cgAffineTransform: CGAffineTransform(scaleX: actualWidth(w: 84/70), y: actualWidth(w: 84/70))),
                               NSValue(cgAffineTransform: CGAffineTransform(scaleX: actualWidth(w: 84 / 70), y: actualWidth(w: 84 / 70))),
                               //: NSValue(cgAffineTransform: CGAffineTransform(scaleX: 1, y: 1))]
                               NSValue(cgAffineTransform: CGAffineTransform(scaleX: 1, y: 1))]
        //: keyAnimation.duration = 1.2
        keyAnimation.duration = 1.2
        //: keyAnimation.repeatCount = MAXFLOAT
        keyAnimation.repeatCount = MAXFLOAT
        //: keyAnimation.isRemovedOnCompletion = false
        keyAnimation.isRemovedOnCompletion = false
        //: keyAnimation.fillMode = .both
        keyAnimation.fillMode = .both
        //: keyAnimation.calculationMode = .cubicPaced
        keyAnimation.calculationMode = .cubicPaced
        //: btn.layer.add(keyAnimation, forKey: "animation")
        btn.layer.add(keyAnimation, forKey: (user_directData.replacingOccurrences(of: "bear", with: "a") + user_stopData.replacingOccurrences(of: "country", with: "m")))
        //: bgImgView.addSubview(btn)
        bgImgView.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    // 免费通话图标
    //: private lazy var freeImg: UIImageView = {
    private lazy var freeImg: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_Chat_freetimes")
        img.image = UIImage.parentSet(name: (String(data_howValue.prefix(6)) + "hat_f" + k_robotSpendValue.replacingOccurrences(of: "first", with: "i")))
        //: img.isHidden = true
        img.isHidden = true
        //: bgImgView.addSubview(img)
        bgImgView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    // 通话控件
    //: private lazy var videoCallManager: TalkingCallMenuManager = {
    private lazy var videoCallManager: AdministratorMenuManager = {
        //: let m = TalkingCallMenuManager()
        let m = AdministratorMenuManager()
        //: return m
        return m
        //: }()
    }()
}

// MARK: - Load Data

//: extension MaleInviteCallView {
extension WhiteExThen {
    /// 加载视频匹配用户数据
    //: private func loadMatchData(needRefreshUI: Bool) {
    private func dataNorthBefitLoadNeed(needRefreshUI: Bool) {
        //: TalkingQuickVideoManager.req_getMatchV4List(params: ["limit":20]) { succeed, result, errorModel in
        PreviouslyVideoManager.screen(params: [String(bytes: const_styleId.reversed(), encoding: .utf8)!: 20]) { succeed, result, _ in
            //: guard succeed == true, let result = result as? [[String: Any]], !result.isEmpty else {
            guard succeed == true, let result = result as? [[String: Any]], !result.isEmpty else {
                //: self.dismiss()
                self.examineedVisual()
                //: return
                return
            }
            // 随机选择一个字典
            //: guard let randomDict = result.randomElement() else {
            guard let randomDict = result.randomElement() else {
                //: self.dismiss()
                self.examineedVisual()
                //: return
                return
            }
            //: self.videoCallManager.uid = randomDict["uid"] as? String ?? ""
            self.videoCallManager.uid = randomDict[(String(show_welcomeDisplayText))] as? String ?? ""
            //: self.videoCallManager.source = "invitePop"
            self.videoCallManager.source = (data_stripTunMsg.replacingOccurrences(of: "fee", with: "in") + String(noti_lackValue.suffix(6)))

            //: if needRefreshUI == true {
            if needRefreshUI == true { // 更新当前用户信息，刷新UI
                //: self.callHeadPic = randomDict["headPic"] as? String ?? ""
                self.callHeadPic = randomDict[(k_transformUrl.replacingOccurrences(of: "player", with: "h") + String(user_wearValidTitle))] as? String ?? ""
                //: self.myVideoUrl = randomDict["videoUrl"] as? String ?? ""
                self.myVideoUrl = randomDict[(String(main_aspectBlackText.prefix(7)) + String(notiMeetingId))] as? String ?? ""
                //: self.refreshUI()
                self.contentAvailable()

                //: } else {
            } else { // 直接拨打
                //: self.callVideo()
                self.adminVideo()
            }
        }
    }
}

// MARK: - Event

//: extension MaleInviteCallView {
extension WhiteExThen {
    /// 展示弹窗
    /// - Parameters:
    ///   - uid: 用户ID
    ///   - videoUrl: 视频封面
    ///   - headPic: 头像
    //: func show(uid: String, videoUrl: String, headPic: String) {
    func propertyRadiogramTwo(uid: String, videoUrl: String, headPic: String) {
        // 记录一次展示次数
        //: MaleInviteCallView.writeMaleInviteCallViewTimes()
        WhiteExThen.alive()

        //: if !uid.isEmpty {
        if !uid.isEmpty { // 直接展示，没有再取匹配池
            //: videoCallManager.uid = uid
            videoCallManager.uid = uid
            //: videoCallManager.source = "videoPop"
            videoCallManager.source = (String(main_diskValue.prefix(7)) + String(noti_insideMsg))
            //: callHeadPic = headPic
            callHeadPic = headPic
            //: myVideoUrl = videoUrl
            myVideoUrl = videoUrl
            //: needCallAgain = true
            needCallAgain = true
            //: refreshUI()
            contentAvailable()

            //: } else {
        } else {
            // 直接取匹配池
            //: loadMatchData(needRefreshUI: true)
            dataNorthBefitLoadNeed(needRefreshUI: true)
        }
    }

    /// 拨打视频通话
    //: private func callVideo() {
    private func adminVideo() {
        //: videoCallManager.checkAndCallVideo()
        videoCallManager.context()
        //: videoCallManager.onReqestCallErrorBlock = { [weak self] errNo in
        videoCallManager.onReqestCallErrorBlock = { [weak self] errNo in
            //: guard let self = self, needCallAgain == true, errNo == 250822 else {
            guard let self = self, needCallAgain == true, errNo == 250_822 else {
                //: self?.dismiss()
                self?.examineedVisual()
                //: return
                return
            }
            //: self.needCallAgain = false
            self.needCallAgain = false
            //: self.loadMatchData(needRefreshUI: false)
            self.dataNorthBefitLoadNeed(needRefreshUI: false)
        }
    }

    /// 取消通话按钮点击事件
    //: @objc private func hangupButtonClick() {
    @objc private func countClick() {
        //: dismiss()
        examineedVisual()
    }

    /// 接听按钮点击事件
    //: @objc private func acceptButtonClick() {
    @objc private func occupier() {
        //: self.callVideo()
        self.adminVideo()
    }

    //: @objc private func dismiss() {
    @objc private func examineedVisual() {
        //: dismissBlock?()
        dismissBlock?()
        //: popView?.dismissView()
        popView?.detectDecide()
        //: popView = nil
        popView = nil
        //: timeoutTimer?.invalidate()
        timeoutTimer?.invalidate()
        //: timeoutTimer = nil
        timeoutTimer = nil
        //: stopBGM()
        balanceData()
    }

    //: func closeView() {
    func mapClub() {
        //: dismiss()
        examineedVisual()
    }
}

// MARK: - 控制每日展示的Key

//: extension MaleInviteCallView {
extension WhiteExThen {
    /// 检测是否可以展示邀请视频
    /// - Returns: 检测结果
    //: class func checkShowMaleInviteCallView() -> Bool {
    class func computerSimulation() -> Bool {
        //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
        let today = NSDate.viewPress(date: Date(), dateFormat: (String(noti_personalContactSaleStr)))
        //: let dict = Defaults.dictionary(forKey: MaleInviteCallView.getMaleInviteCallViewKey())
        let dict = user_liveMsg.dictionary(forKey: WhiteExThen.elite())
        //: let storedDate = dict?["today"] as? String
        let storedDate = dict?[(data_ovalMessage.replacingOccurrences(of: "provide", with: "d"))] as? String
        //: var times = dict?["times"] as? Int ?? 0
        var times = dict?[(dataInstallationUrl.replacingOccurrences(of: "kind", with: "es"))] as? Int ?? 0
        //: if dict == nil || storedDate != today {
        if dict == nil || storedDate != today {
            //: times = 0
            times = 0
        }
        //: if times >= CompositionReactiveCompatible.share.appUserConfigMode.inviteTimes {
        if times >= CompositionReactiveCompatible.share.appUserConfigMode.inviteTimes {
            //: return false
            return false
        }
        //: return true
        return true
    }

    /// 消耗当日一次弹窗额度
    //: class private func writeMaleInviteCallViewTimes() {
    private class func alive() {
        //: let key = MaleInviteCallView.getMaleInviteCallViewKey()
        let key = WhiteExThen.elite()
        //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
        let today = NSDate.viewPress(date: Date(), dateFormat: (String(noti_personalContactSaleStr)))
        //: var dict = Defaults.dictionary(forKey: key) ?? [:]
        var dict = user_liveMsg.dictionary(forKey: key) ?? [:]
        //: let storedDate = dict["today"] as? String
        let storedDate = dict[(data_ovalMessage.replacingOccurrences(of: "provide", with: "d"))] as? String
        //: var times = dict["times"] as? Int ?? 0
        var times = dict[(dataInstallationUrl.replacingOccurrences(of: "kind", with: "es"))] as? Int ?? 0
        //: if storedDate != today {
        if storedDate != today {
            //: times = 0
            times = 0
        }
        //: dict["today"] = today
        dict[(data_ovalMessage.replacingOccurrences(of: "provide", with: "d"))] = today
        //: dict["times"] = times + 1
        dict[(dataInstallationUrl.replacingOccurrences(of: "kind", with: "es"))] = times + 1
        //: Defaults.set(dict, forKey: key)
        user_liveMsg.set(dict, forKey: key)
    }

    /// 展示邀请视频弹窗的Key
    //: class private func getMaleInviteCallViewKey() -> String {
    private class func elite() -> String {
        //: return "ShowMaleInviteCallViewDateKey_\(CompositionReactiveCompatible.share.loginUserMode.userID)"
        return (String(kInstallId)) + "\(CompositionReactiveCompatible.share.loginUserMode.userID)"
    }
}

// MARK: - 通话音乐

//: extension MaleInviteCallView {
extension WhiteExThen {
    /// 初始化视频通话背景音乐
    //: private func setUpBGMAndStartPlayer() {
    private func setAbout() {
        //: self.bgmPlayer = TalkingCallBGMPlayer.callBGMPlayer(type: .invitePop)
        self.bgmPlayer = ExecCosPlayer.layerType(type: .invitePop)
        //: self.bgmPlayer?.play()
        self.bgmPlayer?.negociateLoad()
    }

    /// 停止播放背景音乐
    //: private func stopBGM() {
    private func balanceData() {
        //: guard self.bgmPlayer != nil else { return }
        guard self.bgmPlayer != nil else { return }
        //: self.bgmPlayer?.stop()
        self.bgmPlayer?.allowRidTwo()
        //: self.bgmPlayer = nil
        self.bgmPlayer = nil
    }
}

// MARK: - TalkingOptDelegateReactiveCompatible【视频播放器】

//: extension MaleInviteCallView: TalkingVideoPlayerDelegate {
extension WhiteExThen: TalkingOptDelegateReactiveCompatible {
    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func span(player _: CapReactiveCompatible, status: FacePlayerStatus) {
        //: if status == .Playing {
        if status == .Playing {
            //: self.videoPlayer.setRenderMode(renderMode: .FILL_SCREEN)
            self.videoPlayer.margin(renderMode: .FILL_SCREEN)
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {}
    func followingMp(player _: CapReactiveCompatible, duration _: Int, currentTime _: Int) {}

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {}
    func funcWithinProgress(player _: CapReactiveCompatible, progress _: CGFloat) {}
}

// MARK: - Layout

//: extension MaleInviteCallView {
extension WhiteExThen {
    /// 刷新UI
    //: private func refreshUI() {
    private func contentAvailable() {
        //: if self.popView == nil {
        if self.popView == nil {
            //: self.popView = TalkingPopView.init(frame: UIScreen.main.bounds)
            self.popView = FormalView(frame: UIScreen.main.bounds)
            //: self.popView?.initWithView(view: self)
            self.popView?.dotView(view: self)
            //: self.popView?.showInView(view: DirtyMacroDefine.getWindow())
            self.popView?.birdSEyeViewMiss(view: DirtyMacroDefine.effectRequire())
            //: self.popView?.isRemoveTapGes = true
            self.popView?.isRemoveTapGes = true
        }
        //: setupSubViewsConstraint()
        questionable()
        //: if timeoutTimer == nil {
        if timeoutTimer == nil {
            //: var countdown = 30
            var countdown = 30
            //: timeoutTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { [weak self] _ in
            timeoutTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.svgaNumLab.text = "\(countdown)"
                self.svgaNumLab.text = "\(countdown)"
                //: countdown -= 1
                countdown -= 1
                //: if countdown <= 0 {
                if countdown <= 0 {
                    //: self.dismiss()
                    self.examineedVisual()
                }
                //: })
            })
            //: timeoutTimer?.fire()
            timeoutTimer?.fire()
        }
        //: setUpBGMAndStartPlayer()
        setAbout()
        //: bgImgView.setUrlImage(urlStr: callHeadPic)
        bgImgView.agreeFinish(urlStr: callHeadPic)

        //: if !myVideoUrl.isEmpty {
        if !myVideoUrl.isEmpty {
            //: videoPlayer.delegate = self
            videoPlayer.delegate = self
            //: videoPlayer.playerWithUrlAndVideoView(url: self.myVideoUrl, view: self.bgImgView)
            videoPlayer.glitter(url: self.myVideoUrl, view: self.bgImgView)
            //: } else {
        } else {
            //: videoPlayer.stopPlay()
            videoPlayer.instance()
            //: videoPlayer.removeVideoWidget()
            videoPlayer.rowWidget()
        }

        //: hangupBtn.isHidden = false
        hangupBtn.isHidden = false
        //: acceptBtn.isHidden = false
        acceptBtn.isHidden = false
        //: freeImg.isHidden = !(CompositionReactiveCompatible.share.loginUserMode.freeCallTimes > 0)
        freeImg.isHidden = !(CompositionReactiveCompatible.share.loginUserMode.freeCallTimes > 0)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func questionable() {
        //: bgImgView.snp.remakeConstraints { make in
        bgImgView.snp.remakeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: actualWidth(w: 279), height: actualWidth(w: 346)))
            make.size.equalTo(CGSize(width: actualWidth(w: 279), height: actualWidth(w: 346)))
        }

        //: maskTopImgV.snp.remakeConstraints { make in
        maskTopImgV.snp.remakeConstraints { make in
            //: make.leading.trailing.top.equalToSuperview()
            make.leading.trailing.top.equalToSuperview()
            //: make.height.equalTo(actualWidth(w: 70))
            make.height.equalTo(actualWidth(w: 70))
        }

        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.leading.top.equalTo(actualWidth(w: 20))
            make.leading.top.equalTo(actualWidth(w: 20))
            //: make.width.height.equalTo(40)
            make.width.height.equalTo(40)
        }

        //: svgaNumLab.snp.makeConstraints { make in
        svgaNumLab.snp.makeConstraints { make in
            //: make.center.width.height.equalTo(svgaPlayer)
            make.center.width.height.equalTo(svgaPlayer)
        }

        //: titleLab.snp.remakeConstraints { make in
        titleLab.snp.remakeConstraints { make in
            //: make.centerY.equalTo(svgaPlayer)
            make.centerY.equalTo(svgaPlayer)
            //: make.leading.equalTo(svgaPlayer.snp.trailing).offset(actualWidth(w: 10))
            make.leading.equalTo(svgaPlayer.snp.trailing).offset(actualWidth(w: 10))
            //: make.trailing.equalTo(-actualWidth(w: 20))
            make.trailing.equalTo(-actualWidth(w: 20))
        }

        //: maskBottomImgV.snp.remakeConstraints { make in
        maskBottomImgV.snp.remakeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.height.equalTo(maskTopImgV)
            make.height.equalTo(maskTopImgV)
        }

        //: hangupBtn.snp.remakeConstraints { make in
        hangupBtn.snp.remakeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 20))
            make.leading.equalTo(actualWidth(w: 20))
            //: make.bottom.equalTo(-actualWidth(w: 40))
            make.bottom.equalTo(-actualWidth(w: 40))
            //: make.size.equalTo(actualWidth(w: 56))
            make.size.equalTo(actualWidth(w: 56))
        }

        //: acceptBtn.snp.remakeConstraints { make in
        acceptBtn.snp.remakeConstraints { make in
            //: make.trailing.equalTo(-actualWidth(w: 20))
            make.trailing.equalTo(-actualWidth(w: 20))
            //: make.centerY.equalTo(hangupBtn)
            make.centerY.equalTo(hangupBtn)
            //: make.size.equalTo(actualWidth(w: 70))
            make.size.equalTo(actualWidth(w: 70))
        }

        //: freeImg.snp.makeConstraints { make in
        freeImg.snp.makeConstraints { make in
            //: make.trailing.equalTo(acceptBtn).offset(actualWidth(w: 2))
            make.trailing.equalTo(acceptBtn).offset(actualWidth(w: 2))
            //: make.top.equalTo(acceptBtn).offset(actualWidth(w: -8))
            make.top.equalTo(acceptBtn).offset(actualWidth(w: -8))
            //: make.size.equalTo(CGSize(width: actualWidth(w: 41), height: actualWidth(w: 28)))
            make.size.equalTo(CGSize(width: actualWidth(w: 41), height: actualWidth(w: 28)))
        }
    }
}

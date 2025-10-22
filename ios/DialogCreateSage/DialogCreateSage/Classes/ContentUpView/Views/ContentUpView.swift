
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let user_tableId:[UInt8] = [0xdc,0xe1,0xdc,0xe7,0x9b,0xd6,0xe2,0xd7,0xd8,0xe5,0xad,0x9c,0x93,0xdb,0xd4,0xe6,0x93,0xe1,0xe2,0xe7,0x93,0xd5,0xd8,0xd8,0xe1,0x93,0xdc,0xe0,0xe3,0xdf,0xd8,0xe0,0xd8,0xe1,0xe7,0xd8,0xd7]

fileprivate func circleAnnouncement(texture num: UInt8) -> UInt8 {
    let value = Int(num) - 115
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_video_bd" :*/
fileprivate let k_audienceTitle:String = "marriage reserve normal reflectionicon_"
fileprivate let noti_cellMsg:String = "read ta create welcome_bd"

/*: "btn_video_drop_nor" :*/
fileprivate let app_labBuildData:String = "btn_tail depict"
fileprivate let noti_realmMsg:[Character] = ["r"]
fileprivate let const_anyoneUrl:String = "individual observer refuse areaop_nor"

/*: "get json error" :*/
fileprivate let data_enableValue:String = "small coordinator selection mini extendedget json "
fileprivate let constOriginalData:String = "etopor"

/*: "icon_videocall_topView" :*/
fileprivate let showRecordingMessage:[Character] = ["i","c","o","n","_","v","i","d","e","o","c","a","l","l","_","t","o","p","V","i","e"]
fileprivate let appPortraitStr:[Character] = ["w"]

/*: "Video Call" :*/
fileprivate let userDescribeId:String = "pin isolate join cookingVideo C"
fileprivate let dataUpdatelyName:[Character] = ["a","l","l"]

/*: "icon_videocall_initerv_topView" :*/
fileprivate let noti_trackKey:[Character] = ["i","c","o","n","_"]
fileprivate let show_streamFormat:[Character] = ["v","i","d","e","o","c","a"]
fileprivate let const_exclusiveName:String = "ll_isoon minimum core"
fileprivate let notiCrushPath:String = "change hod micrv_t"

/*: "Free" :*/
fileprivate let noti_utilizeName:String = "Freehuman split"

/*: "You've been barred from receiving calls" :*/
fileprivate let const_thresholdValue:[UInt8] = [0xd9,0xef,0xf5,0xa7,0xf6,0xe5,0xa0,0xe2,0xe5,0xe5,0xee,0xa0,0xe2,0xe1,0xf2,0xf2,0xe5,0xe4,0xa0,0xe6,0xf2,0xef,0xed,0xa0,0xf2,0xe5,0xe3,0xe5,0xe9,0xf6,0xe9,0xee,0xe7,0xa0,0xe3,0xe1,0xec,0xec,0xf3]

private func argumentAbs(hand num: UInt8) -> UInt8 {
    return num ^ 128
}

/*: "#864EFF" :*/
fileprivate let notiLiteralTitle:[Character] = ["#"]
fileprivate let app_whichData:String = "fund array military864EFF"

/*: "#F79AFF" :*/
fileprivate let k_moveContent:String = "bridge complete who model#F79AFF"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentUpView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

//: class TalkingVideoCallPopUpView: UIView {
class ContentUpView: UIView {
    //: var popView: TalkingPopView?
    var popView: FormalView?
    //: private var countdownTimer: Timer?
    private var countdownTimer: Timer?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.speakOfTheDevil()
        //: self.setupSubViewsConstraint()
        self.listConstraint()
        //: self.bindInteraction()
        self.stickBasicGiveAndTake()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: user_tableId.map{circleAnnouncement(texture: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: player?.stopPlay()
        player?.instance()
        //: player?.removeVideoWidget()
        player?.rowWidget()
        //: player = nil
        player = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var playerView: UIImageView = {
    private lazy var playerView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.contentMode = .scaleAspectFill
        view.contentMode = .scaleAspectFill
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView.init()
        let iamg = UIImageView()
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var topBtn: TalkingButton = {
    private lazy var topBtn: AfterView = {
        //: let btn = TalkingButton.init(type: .custom)
        let btn = AfterView(type: .custom)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.processAcross(type: .Medium, fontSize: 17)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_video_bd"), for: .normal)
        btn.setImage(UIImage.parentSet(name: (String(k_audienceTitle.suffix(5)) + "video" + String(noti_cellMsg.suffix(3)))), for: .normal)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(switcherLoad), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_drop_nor"), for: .normal)
        btn.setImage(UIImage.parentSet(name: (String(app_labBuildData.prefix(4)) + "video_d" + String(noti_realmMsg) + String(const_anyoneUrl.suffix(6)))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(numberOf), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var countDownLb: UILabel = {
    private lazy var countDownLb: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.font = UIFont.pingfangMediumFont(fontSize: 10)
        lb.font = UIFont.counteraction(fontSize: 10)
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()

    // 懒加载初始化
    //: private lazy var player: TalkingVideoPlayerManager? = {
    private lazy var player: CapReactiveCompatible? = {
        //: let  player = TalkingVideoPlayerManager.init()
        let player = CapReactiveCompatible()
        //: player.setMute(bEnable: false)
        player.doinglyTurn(bEnable: false)
        //: return player
        return player
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill

        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Videocall_initiver)
        let url = AuthorReactiveCompatible.default.typeTo(type: .Videocall_initiver)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(data_enableValue.suffix(9)) + constOriginalData.replacingOccurrences(of: "top", with: "rr")))
        }
        //: return player
        return player
        //: }()
    }()
}

// MARK: - Tool

//: extension TalkingVideoCallPopUpView {
extension ContentUpView {
    /// 获取权限
    //: private func getServercePermission() {
    private func manualOf() {
        // 是否开启摄像头
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { isOpen in
        MeetRouteThen.funcPersonDomino(false) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: return
                return
            }
            // 麦克风权限
            //: TalkingPermissionTool.func__openRecordServiceWithBlock(false) { [weak self] isOpen in
            MeetRouteThen.panelSpring(false) { [weak self] isOpen in
                //: guard let self = self else {
                guard let self = self else {
                    //: return
                    return
                }
                //: guard isOpen == true else {
                guard isOpen == true else {
                    //: return
                    return
                }
                //: self.countDownLb.isHidden = false
                self.countDownLb.isHidden = false
                //: self.topBtn.snp.remakeConstraints { make in
                self.topBtn.snp.remakeConstraints { make in
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.centerY.equalToSuperview().offset(-10)
                    make.centerY.equalToSuperview().offset(-10)
                    //: make.height.equalTo(18)
                    make.height.equalTo(18)
                }
                //: self.countDownLb.snp.remakeConstraints { make in
                self.countDownLb.snp.remakeConstraints { make in
                    //: make.top.equalTo(self.topBtn.snp.bottom).offset(7)
                    make.top.equalTo(self.topBtn.snp.bottom).offset(7)
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.height.equalTo(10)
                    make.height.equalTo(10)
                }
                // 5s倒计时主动接通
                //: var time = TalkingVideoInitivCallManager.shared.videoCallModel.winCountdown
                var time = YellowManager.shared.videoCallModel.winCountdown
                //: self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, block: { [weak self] timer in
                self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, block: { [weak self] _ in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: guard time > 0 else {
                    guard time > 0 else { // 结束倒计时
                        //: self.destroyTimer()
                        self.tableDestroy()
                        //: self.dismiss()
                        self.boneAge()
                        //: switch CompositionReactiveCompatible.share.appUserConfigMode.popupCallAcceptEvent {
                        switch CompositionReactiveCompatible.share.appUserConfigMode.popupCallAcceptEvent {
                        //: case 1:
                        case 1:
                            //: pushWebRechargeView()
                            feather()
                        //: case 2:
                        case 2:
                            //: pushWebSubscriptionView()
                            informationView()
                        //: case 3:
                        case 3:
                            //: self.putThrough()
                            self.borderForRes()
                        //: default:
                        default:
                            //: break
                            break
                        }
                        //: return
                        return
                    }
                    //: self.countDownLb.text = "\(time)s"
                    self.countDownLb.text = "\(time)s"
                    //: time -= 1
                    time -= 1
                    //: }, repeats: true)
                }, repeats: true)
                //: self.countdownTimer?.fire()
                self.countdownTimer?.fire()
                //: RunLoop.current.add(self.countdownTimer!, forMode: .common)
                RunLoop.current.add(self.countdownTimer!, forMode: .common)
            }
        }
        //: if self.countDownLb.isHidden {
        if self.countDownLb.isHidden {
            //: self.topBtn.snp.remakeConstraints { make in
            self.topBtn.snp.remakeConstraints { make in
                //: make.center.equalToSuperview()
                make.center.equalToSuperview()
                //: make.height.equalTo(18)
                make.height.equalTo(18)
            }
        }
    }

    //: private func seTypeView() {
    private func withoutHidden() {
        //: switch CompositionReactiveCompatible.share.appUserConfigMode.popupCallAcceptEvent {
        switch CompositionReactiveCompatible.share.appUserConfigMode.popupCallAcceptEvent {
        //: case 1, 2:
        case 1, 2:
            //: topIcon.image = UIImage.BundleImageNamed(name: "icon_videocall_topView")
            topIcon.image = UIImage.parentSet(name: (String(showRecordingMessage) + String(appPortraitStr)))
            //: topBtn.setTitle("Video Call".localized, for: .normal)
            topBtn.setTitle((String(userDescribeId.suffix(7)) + String(dataUpdatelyName)).localized, for: .normal)
        //: case 3:
        case 3:
            //: topIcon.image = UIImage.BundleImageNamed(name: "icon_videocall_initerv_topView")
            topIcon.image = UIImage.parentSet(name: (String(noti_trackKey) + String(show_streamFormat) + String(const_exclusiveName.prefix(4)) + "nite" + String(notiCrushPath.suffix(4)) + "opView"))
            //: topBtn.setTitle("Free".localized, for: .normal)
            topBtn.setTitle((String(noti_utilizeName.prefix(4))).localized, for: .normal)
        //: default:
        default:
            //: break
            break
        }
    }

    /// 播放视频或封面
    //: private func beginPlayer() {
    private func canvas() {
        //: if TalkingVideoInitivCallManager.shared.videoCallModel.winUrlType == 2 {
        if YellowManager.shared.videoCallModel.winUrlType == 2 {
            //: self.player?.playerWithUrlAndVideoView(url: TalkingVideoInitivCallManager.shared.videoCallModel.winVideoUrl, view: playerView)
            self.player?.glitter(url: YellowManager.shared.videoCallModel.winVideoUrl, view: playerView)
            //: } else {
        } else {
            //: self.playerView.setUrlImage(urlStr: TalkingVideoInitivCallManager.shared.videoCallModel.winVideoUrl)
            self.playerView.agreeFinish(urlStr: YellowManager.shared.videoCallModel.winVideoUrl)
        }
    }

    /// 销毁倒计时
    //: private func destroyTimer() {
    private func tableDestroy() {
        //: if countdownTimer != nil {
        if countdownTimer != nil {
            //: countdownTimer?.invalidate()
            countdownTimer?.invalidate()
            //: countdownTimer = nil
            countdownTimer = nil
        }
    }

    /// 接通电话
    //: private func putThrough() {
    private func borderForRes() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoAcceptButton)
        noti_liveLevelUrl.recordGender(eventID: noti_saveTitle)
        //: initVideoCallTime()
        magnitudeoTime()
        /// 视频通话被禁用
        //: guard TalkingVideoInitivCallManager.shared.videoCallModel.isBan == 0 else {
        guard YellowManager.shared.videoCallModel.isBan == 0 else {
            //: self.func__showStatusBarErrorMsg(showMsg: "You've been barred from receiving calls".localized)
            self.foolishness(showMsg: String(bytes: const_thresholdValue.map{argumentAbs(hand: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: 1) { succeed, result, errorModel in
        YellowManager.shared.promptCompletion(type: 1) { succeed, _, _ in
            //: guard succeed == true else {
            guard succeed == true else {
                //: return
                return
            }
            //: if self.currentViewController()?.presentingViewController != nil {
            if self.mediumSave()?.presentingViewController != nil {
                // 如果有present, 先dismiss
                //: self.currentViewController()?.dismiss(animated: false)
                self.mediumSave()?.dismiss(animated: false)
            }
            //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                //: let vc = TalkingVideoInitivCallVC()
                let vc = SiblingPlayerDelegate()
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.mediumSave()?.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }

    /// 上报行为
    //: private func uploadRepord(type: Int) {
    private func preview(type: Int) {
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: type) { succeed, result, errorModel in
        YellowManager.shared.promptCompletion(type: type) { _, _, _ in
        }
    }

    /// 开启下次弹窗倒计时
    //: private func initVideoCallTime() {
    private func magnitudeoTime() {
        //: TalkingVideoInitivCallManager.shared.initVideoCallTimer()
        YellowManager.shared.enterPopulation()
    }
}

// MARK: - Event

//: extension TalkingVideoCallPopUpView {
extension ContentUpView {
    //: @objc private func finishBtnClick() {
    @objc private func switcherLoad() {
        //: self.dismiss()
        self.boneAge()
        //: switch CompositionReactiveCompatible.share.appUserConfigMode.popupCallAcceptEvent {
        switch CompositionReactiveCompatible.share.appUserConfigMode.popupCallAcceptEvent {
        //: case 1:
        case 1:
            //: pushWebRechargeView()
            feather()
        //: case 2:
        case 2:
            //: pushWebSubscriptionView()
            informationView()
        //: case 3:
        case 3:
            //: TalkingPermissionTool.checkCameraAndMicrophone { [weak self] isOpen in
            MeetRouteThen.hairTip { [weak self] isOpen in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: guard isOpen == true else { return }
                guard isOpen == true else { return }
                //: self.putThrough()
                self.borderForRes()
            }
        //: default:
        default:
            //: break
            break
        }
    }

    /// 充值
    //: private func pushWebRechargeView() {
    private func feather() {
        //: initVideoCallTime()
        magnitudeoTime()
        //: SightReactiveCompatible.share.func__jumpVideoCallToWebRecharge(popupCallIndex: CompositionReactiveCompatible.share.appUserConfigMode.popupCallAcceptEvent)
        SightReactiveCompatible.share.exceptName(popupCallIndex: CompositionReactiveCompatible.share.appUserConfigMode.popupCallAcceptEvent)
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if mediumSave()?.isKind(of: SightViewController.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = mediumSave() as! SightViewController
            //: vc.isVideoCallRechargeHalfPage = true
            vc.isVideoCallRechargeHalfPage = true
            //: vc.isRechargeOrSubscribeChangeMatch = true
            vc.isRechargeOrSubscribeChangeMatch = true
        }
    }

    /// 订阅
    //: private func pushWebSubscriptionView() {
    private func informationView() {
        //: initVideoCallTime()
        magnitudeoTime()
        //: SightReactiveCompatible.share.func__jumpVideoCallToWebRecharge(popupCallIndex: CompositionReactiveCompatible.share.appUserConfigMode.popupCallAcceptEvent)
        SightReactiveCompatible.share.exceptName(popupCallIndex: CompositionReactiveCompatible.share.appUserConfigMode.popupCallAcceptEvent)
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if mediumSave()?.isKind(of: SightViewController.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = mediumSave() as! SightViewController
            //: vc.isVideoCallRechargeHalfPage = true
            vc.isVideoCallRechargeHalfPage = true
            //: vc.isRechargeOrSubscribeChangeMatch = true
            vc.isRechargeOrSubscribeChangeMatch = true
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func numberOf() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoRejectButton)
        noti_liveLevelUrl.recordGender(eventID: noti_controlQuantityName)
        //: initVideoCallTime()
        magnitudeoTime()
        //: uploadRepord(type: 3)
        preview(type: 3)
        //: dismiss()
        boneAge()
    }

    //: func show() {
    func pressShow() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = FormalView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.dotView(view: self)
        //: popView?.showInView(view: DirtyMacroDefine.getWindow())
        popView?.birdSEyeViewMiss(view: DirtyMacroDefine.effectRequire())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func boneAge() {
        //: popView?.dismissView()
        popView?.detectDecide()
        //: popView = nil
        popView = nil
        //: destroyTimer()
        tableDestroy()
    }
}

// MARK: - Layout

//: extension TalkingVideoCallPopUpView {
extension ContentUpView {
    /// 添加视图
    //: private func setupSubviews() {
    private func speakOfTheDevil() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(playerView)
        contentView.addSubview(playerView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.insertSubview(topIcon, aboveSubview: playerView)
        contentView.insertSubview(topIcon, aboveSubview: playerView)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
        //: contentView.addSubview(svgaPlayer)
        contentView.addSubview(svgaPlayer)
        //: contentView.insertSubview(finishBtn, aboveSubview: svgaPlayer)
        contentView.insertSubview(finishBtn, aboveSubview: svgaPlayer)
        //: finishBtn.addSubview(topBtn)
        finishBtn.addSubview(topBtn)
        //: finishBtn.addSubview(countDownLb)
        finishBtn.addSubview(countDownLb)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func listConstraint() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 295), height: actualWidth(w: 419)))
            make.size.equalTo(CGSize(width: actualWidth(w: 295), height: actualWidth(w: 419)))
        }
        //: playerView.snp.makeConstraints { make in
        playerView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(4)
            make.leading.top.equalTo(4)
            //: make.trailing.bottom.equalTo(-4)
            make.trailing.bottom.equalTo(-4)
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.leading.equalTo(-12)
            make.leading.equalTo(-12)
            //: make.top.equalTo(-23)
            make.top.equalTo(-23)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 121), height: actualWidth(w: 52)))
            make.size.equalTo(CGSize(width: actualWidth(w: 121), height: actualWidth(w: 52)))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.leading.equalTo(22)
            make.leading.equalTo(22)
            //: make.size.equalTo(42)
            make.size.equalTo(42)
        }

        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(closeBtn.snp.trailing).offset(1)
            make.leading.equalTo(closeBtn.snp.trailing).offset(1)
            //: make.centerY.equalTo(closeBtn)
            make.centerY.equalTo(closeBtn)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
        }
        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.top.leading.equalTo(svgaPlayer).offset(6)
            make.top.leading.equalTo(svgaPlayer).offset(6)
            //: make.trailing.bottom.equalTo(svgaPlayer).offset(-6)
            make.trailing.bottom.equalTo(svgaPlayer).offset(-6)
        }
    }

    /// 事件绑定
    //: private func bindInteraction() {
    private func stickBasicGiveAndTake() {
        //: addGradientLayerWithCorner(cornerRadius: 10, lineWidth: 4, colors: [UIColor.init(hex: "#864EFF")!.cgColor, UIColor.init(hex: "#F79AFF")!.cgColor])
        digitizer(cornerRadius: 10, lineWidth: 4, colors: [UIColor(hex: (String(notiLiteralTitle) + String(app_whichData.suffix(6))))!.cgColor, UIColor(hex: (String(k_moveContent.suffix(7))))!.cgColor])
        //: self.getServercePermission()
        self.manualOf()
        //: self.seTypeView()
        self.withoutHidden()
        //: self.beginPlayer()
        self.canvas()
        //: NotificationCenter.default.post(name: VIDEOCALL_INITIV_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kGroupFormat, object: nil)
    }

    //: private func addGradientLayerWithCorner(cornerRadius: CGFloat, lineWidth: CGFloat, colors: [CGColor]) {
    private func digitizer(cornerRadius: CGFloat, lineWidth: CGFloat, colors: [CGColor]) {
        //: self.layoutIfNeeded()
        self.layoutIfNeeded()
        //: let gradientLayer = CAGradientLayer()
        let gradientLayer = CAGradientLayer()
        //: gradientLayer.frame = contentView.bounds
        gradientLayer.frame = contentView.bounds
        //: gradientLayer.colors = colors
        gradientLayer.colors = colors
        //: gradientLayer.cornerRadius = cornerRadius
        gradientLayer.cornerRadius = cornerRadius

        //: let maskLayer = CAShapeLayer()
        let maskLayer = CAShapeLayer()
        //: maskLayer.lineWidth = lineWidth
        maskLayer.lineWidth = lineWidth
        //: maskLayer.path = UIBezierPath(roundedRect: CGRect(x: lineWidth / 2, y: lineWidth / 2, width: contentView.width - lineWidth, height: contentView.height - lineWidth), cornerRadius: cornerRadius).cgPath
        maskLayer.path = UIBezierPath(roundedRect: CGRect(x: lineWidth / 2, y: lineWidth / 2, width: contentView.width - lineWidth, height: contentView.height - lineWidth), cornerRadius: cornerRadius).cgPath
        //: maskLayer.fillColor = UIColor.clear.cgColor
        maskLayer.fillColor = UIColor.clear.cgColor
        //: maskLayer.strokeColor = UIColor.black.cgColor
        maskLayer.strokeColor = UIColor.black.cgColor

        //: gradientLayer.mask = maskLayer
        gradientLayer.mask = maskLayer
        //: contentView.layer.insertSublayer(gradientLayer, at: 0)
        contentView.layer.insertSublayer(gradientLayer, at: 0)
    }
}

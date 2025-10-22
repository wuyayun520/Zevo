
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let showForeMoveMessage:[UInt8] = [0x8a,0x8f,0x8a,0x95,0x49,0x84,0x90,0x85,0x86,0x93,0x5b,0x4a,0x41,0x89,0x82,0x94,0x41,0x8f,0x90,0x95,0x41,0x83,0x86,0x86,0x8f,0x41,0x8a,0x8e,0x91,0x8d,0x86,0x8e,0x86,0x8f,0x95,0x86,0x85]

fileprivate func slimAble(dialog num: UInt8) -> UInt8 {
    let value = Int(num) - 33
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Say something...     " :*/
fileprivate let data_protectionValue:String = "am record hung soundSay some"
fileprivate let const_markStr:String = "positive meeting ok blind againthing."

/*: "btn_video_gift_nor" :*/
fileprivate let main_operationMsg:String = "btn_vidcarrier strike animal"
fileprivate let userYesterdayPath:String = "eo_gifbeautiful however common motivation"

/*: "btn_live_gd_nor" :*/
fileprivate let dataQueryStr:String = "reason enterbtn_l"
fileprivate let app_evaluateTeamUrl:String = "ive_gdfatal dog asset program"

/*: "btn_live_gd_pre" :*/
fileprivate let mainAboveContent:String = "reduce device builder final dominantbtn_"
fileprivate let show_forwardValue:String = "_gd_prebite processing complete"

/*: "btn_live_sx_nor" :*/
fileprivate let user_provideUrl:[Character] = ["b","t","n","_","l","i","v","e","_","s"]
fileprivate let showStartData:String = "x_norchin his worker opposition resistance"

/*: "btn_live_sx_pre" :*/
fileprivate let show_memberValue:[Character] = ["b","t","n","_","l","i"]
fileprivate let appMainMessage:String = "ve_sgeneral structure core"

/*: "#FF2348" :*/
fileprivate let userCeremonyKey:String = "she top shuttle#FF2348"

/*: "btn_live_yx_nor" :*/
fileprivate let show_seatValue:[Character] = ["b","t","n","_","l","i","v","e","_","y","x","_","n","o","r"]

/*: "btn_live_yx_pre" :*/
fileprivate let dataMainFormat:String = "btn_then seat to old represent"
fileprivate let notiPadMessage:String = "go peryx_pre"

/*: "toUid" :*/
fileprivate let constIdentifyMessage:[Character] = ["t","o","U","i","d"]

/*: "giftId" :*/
fileprivate let dataPermissionSeatName:String = "except prompt help error maskgiftId"

/*: "giftNum" :*/
fileprivate let const_exposureValue:String = "giftNumwave lite large across rank"

/*: "pkgItemsetId" :*/
fileprivate let kOvalValue:String = "pkgIpeer actor old observe edible"
fileprivate let const_bassTooFormat:String = "invitation promotion invitation exactly produceetId"

/*: "totalMfCoin" :*/
fileprivate let const_meanPath:String = "the"
fileprivate let k_mobileStickData:[Character] = ["t","a","l","M","f","C","o","i","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColumnSpeakBottomView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: @objc protocol TalkingLiveRoomBottomViewDelegate: NSObjectProtocol {
@objc protocol SceneObjectProtocol: NSObjectProtocol {
    //: func func__commentBtnClick()
    func birthday()
}

//: class TalkingLiveRoomBottomView: UIView {
class ColumnSpeakBottomView: UIView {
    //: var toUid: String?
    var toUid: String? /// 送给谁

    //: open weak var delegate: TalkingLiveRoomBottomViewDelegate?
    open weak var delegate: SceneObjectProtocol?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        menuSubviews()
        //: setupSubViewsConstraint()
        andThenFragment()
        //: LightConversationListener.shared.func__addDelegate(self)
        LightConversationListener.shared.frontBurnerDelegate(self)
        //: refreshRedCountStatus()
        appropriateStatus()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: showForeMoveMessage.map{slimAble(dialog: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.clear
        view.backgroundColor = UIColor.clear
        //: return view
        return view
        //: }()
    }()

    //: private lazy var commentBtn: UIButton = {
    private lazy var commentBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("  " + "Say something...     ".localized, for: .normal)
        btn.setTitle("  " + (String(data_protectionValue.suffix(8)) + String(const_markStr.suffix(6)) + "..     ").localized, for: .normal)
        //: btn.setTitleColor(UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 0.8), for: .normal)
        btn.setTitleColor(UIColor(red: 255 / 255.0, green: 255 / 255.0, blue: 255 / 255.0, alpha: 0.8), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.processAcross(type: .Regular, fontSize: 14)
        //: btn.setBackgroundColor(color: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.25), forState: .normal)
        btn.mottle(color: UIColor(red: 0 / 255.0, green: 0 / 255.0, blue: 0 / 255.0, alpha: 0.25), forState: .normal)
        //: btn.layer.cornerRadius = 17
        btn.layer.cornerRadius = 17
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ReadingLanguageManager.shared.direction == .rightToLeft {
            //: btn.contentHorizontalAlignment = .right
            btn.contentHorizontalAlignment = .right
            //: } else {
        } else {
            //: btn.contentHorizontalAlignment = .left
            btn.contentHorizontalAlignment = .left
        }
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(commentBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(todayThrough), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .leading
        v.alignment = .leading
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 10
        v.spacing = 10
        //: return v
        return v
        //: }()
    }()

    //: private lazy var giftBtn: UIButton = {
    private lazy var giftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_gift_nor"), for: .normal)
        btn.setImage(UIImage.parentSet(name: (String(main_operationMsg.prefix(7)) + String(userYesterdayPath.prefix(6)) + "t_nor")), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_gift_nor"), for: .selected)
        btn.setImage(UIImage.parentSet(name: (String(main_operationMsg.prefix(7)) + String(userYesterdayPath.prefix(6)) + "t_nor")), for: .selected)
        //: btn.addTarget(self, action: #selector(giftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(alongDestroyClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var moreBtn: UIButton = {
    private lazy var moreBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_gd_nor"), for: .normal)
        btn.setImage(UIImage.parentSet(name: (String(dataQueryStr.suffix(5)) + String(app_evaluateTeamUrl.prefix(6)) + "_nor")), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_gd_pre"), for: .highlighted)
        btn.setImage(UIImage.parentSet(name: (String(mainAboveContent.suffix(4)) + "live" + String(show_forwardValue.prefix(7)))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(moreBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(submitBroadcast), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chatBtn: UIButton = {
    private lazy var chatBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_sx_nor"), for: .normal)
        btn.setImage(UIImage.parentSet(name: (String(user_provideUrl) + String(showStartData.prefix(5)))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_sx_pre"), for: .highlighted)
        btn.setImage(UIImage.parentSet(name: (String(show_memberValue) + String(appMainMessage.prefix(4)) + "x_pre")), for: .highlighted)
        //: btn.addTarget(self, action: #selector(chatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(analogise), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var redCountLab: UILabel = {
    private lazy var redCountLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FF2348")
        lab.backgroundColor = UIColor(hex: (String(userCeremonyKey.suffix(7))))
        //: lab.layer.cornerRadius = 3.5
        lab.layer.cornerRadius = 3.5
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var gameBtn: UIButton = {
    private lazy var gameBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_yx_nor"), for: .normal)
        btn.setImage(UIImage.parentSet(name: (String(show_seatValue))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_yx_pre"), for: .highlighted)
        btn.setImage(UIImage.parentSet(name: (String(dataMainFormat.prefix(4)) + "live_" + String(notiPadMessage.suffix(6)))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(gameBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(equalFresh), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: ShadeViewDelegate = {
        //: let giftV = TalkingChatGiftView(style: .live)
        let giftV = ShadeViewDelegate(style: .live)
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: user_needValue, height: kStreamTitle)
        //: return giftV
        return giftV
        //: }()
    }()

    //: private lazy var moreView: TalkingLiveRoomMoreView = {
    private lazy var moreView: WhiteMoreView = {
        //: let v = TalkingLiveRoomMoreView()
        let v = WhiteMoreView()
        //: return v
        return v
        //: }()
    }()

    //: private lazy var gamesView: TalkingLiveRoomGamesView = {
    private lazy var gamesView: LiveReactiveCompatible = {
        //: let v = TalkingLiveRoomGamesView()
        let v = LiveReactiveCompatible()
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveRoomBottomView {
extension ColumnSpeakBottomView {
    /// 拉起弹幕评论
    //: @objc private func commentBtnClick() {
    @objc private func todayThrough() {
        //: delegate?.func__commentBtnClick()
        delegate?.birthday()
    }

    /// 送礼
    //: @objc private func giftBtnClick() {
    @objc private func alongDestroyClick() {
        //: func__sendGift()
        lightDatabase()
    }

    /// 聊天列表
    //: @objc private func chatBtnClick() {
    @objc private func analogise() {
        //: SightReactiveCompatible.share.func__pushToChatListVC(isHalfView: true)
        SightReactiveCompatible.share.observerReserve(isHalfView: true)
    }

    /// 更多
    //: @objc private func moreBtnClick() {
    @objc private func submitBroadcast() {
        //: moreView.showView()
        moreView.ignoreShow()
    }

    /// 游戏
    //: @objc private func gameBtnClick() {
    @objc private func equalFresh() {
        //: gamesView.showView(from: .LiveRoom)
        gamesView.rid(from: .LiveRoom)
    }
}

// MARK: - MisestimationManagerDelegate【刷新私信红点状态】

//: extension TalkingLiveRoomBottomView: IMManagerDelegate {
extension ColumnSpeakBottomView: MisestimationManagerDelegate {
    //: func onUnreadMsgCountChanged(count: Int) {
    func across(count _: Int) {
        //: refreshRedCountStatus()
        appropriateStatus()
    }

    /// 刷新消息未读数状态
    //: func refreshRedCountStatus() {
    func appropriateStatus() {
        //: var msgCount = 0
        var msgCount = 0
        //: let convLists = [LightConversationListener.shared.topConvList, LightConversationListener.shared.norConvList]
        let convLists = [LightConversationListener.shared.topConvList, LightConversationListener.shared.norConvList]
        //: for list in convLists {
        for list in convLists {
            //: if let model = list.first(where: { $0.chatType == .private && $0.unreadCount > 0 }) {
            if let model = list.first(where: { $0.chatType == .private && $0.unreadCount > 0 }) {
                //: msgCount += Int(model.unreadCount)
                msgCount += Int(model.unreadCount)
                //: break
                break // 找到第一个未读消息后退出，不需要全部计算，只要有未读数就展示红点
            }
        }
        //: redCountLab.isHidden = (msgCount == 0)
        redCountLab.isHidden = (msgCount == 0)
    }
}

// MARK: - 送礼

//: extension TalkingLiveRoomBottomView {
extension ColumnSpeakBottomView {
    //: func func__sendGift() {
    func lightDatabase() {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .live, completion: {
        PoliceStrategyThen.share.popularStageCompletion(type: .live, completion: {
            //: self.func__showGiftChoiceView()
            self.saveAcrossWho()
            //: })
        })
    }

    //: func func__showGiftChoiceView() {
    func saveAcrossWho() {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: CompositionReactiveCompatible.share.loginUserMode.mf_coin)
        giftView.rowMember(needReload: true, mf_coin: CompositionReactiveCompatible.share.loginUserMode.mf_coin)
        //: currentViewController()?.view.addSubview(giftView)
        mediumSave()?.view.addSubview(giftView)
        //: giftView.showView()
        giftView.tick()

        //: giftView.sendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String) in
        giftView.sendActionBlock = { [weak self] (_ giftModel: SuccessHandyJSON, _ num: String) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__sendGiftMsg(giftModel: giftModel, giftNum: num)
            self.orb(giftModel: giftModel, giftNum: num)
        }
    }

    //: func func__sendGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String) {
    func orb(giftModel: SuccessHandyJSON, giftNum: String) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            foolishness(showMsg: showTimeId)
            //: return
            return
        }
        //: var params: [String: Any] = [:]
        var params: [String: Any] = [:]
        //: if toUid != nil {
        if toUid != nil {
            //: params["toUid"] = toUid
            params[(String(constIdentifyMessage))] = toUid
        }
        //: params["giftId"] = giftModel.gid
        params[(String(dataPermissionSeatName.suffix(6)))] = giftModel.gid
        //: params["giftNum"] = giftNum
        params[(String(const_exposureValue.prefix(7)))] = giftNum
        //: if giftModel.pkgItemsetId != nil {
        if giftModel.pkgItemsetId != nil {
            //: params["pkgItemsetId"] = giftModel.pkgItemsetId
            params[(String(kOvalValue.prefix(4)) + "tems" + String(const_bassTooFormat.suffix(4)))] = giftModel.pkgItemsetId
        }

        //: TalkingChatRequestTool.req_SendGiftLive(param: params, completion: { succeed, result, errorModel in
        ReminderRequestTool.whiteCompletion(param: params, completion: { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: self.dealSendMsgError(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                self.dialogBy(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                //: return
                return
            }

            // 更新本地礼物背包
            //: if giftModel.pkgItemsetId != nil {
            if giftModel.pkgItemsetId != nil {
                //: self.giftView.bags_removeGiftPackage(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
                self.giftView.historyPopular(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
            }
            //: self.func__insertGiftMessageWithExtral(extral: result as! [String: Any])
            self.cannulize(extral: result as! [String: Any])
            //: })
        })
    }

    //: func func__insertGiftMessageWithExtral(extral: [String: Any]) {
    func cannulize(extral: [String: Any]) {
        //: let extralInfo = extral
        let extralInfo = extral

        //: if extralInfo.keys.contains("totalMfCoin") {
        if extralInfo.keys.contains((const_meanPath.replacingOccurrences(of: "he", with: "o") + String(k_mobileStickData))) {
            //: let totalMfCoin: NSNumber = extralInfo["totalMfCoin"] as! NSNumber
            let totalMfCoin: NSNumber = extralInfo[(const_meanPath.replacingOccurrences(of: "he", with: "o") + String(k_mobileStickData))] as! NSNumber
            //: CompositionReactiveCompatible.share.loginUserMode.mf_coin = totalMfCoin.stringValue
            CompositionReactiveCompatible.share.loginUserMode.mf_coin = totalMfCoin.stringValue
        }
        //: giftView.updateGiftInfo(needReload: false, mf_coin: CompositionReactiveCompatible.share.loginUserMode.mf_coin)
        giftView.rowMember(needReload: false, mf_coin: CompositionReactiveCompatible.share.loginUserMode.mf_coin)
    }

    //: func dealSendMsgError(errorCode: Int, errorStr: String, isGift: Bool, isResend: Bool) {
    func dialogBy(errorCode: Int, errorStr: String, isGift _: Bool, isResend _: Bool) {
        //: if errorCode == 50203 {
        if errorCode == 50203 {
            //: guard CompositionReactiveCompatible.share.loginUserMode.status != 1 else {
            guard CompositionReactiveCompatible.share.loginUserMode.status != 1 else {
                //: if !errorStr.isEmptyString {
                if !errorStr.isEmptyString {
                    //: func__showStatusBarErrorMsg(showMsg: errorStr)
                    foolishness(showMsg: errorStr)
                }
                //: return
                return
            }
            //: SightReactiveCompatible.share.func__jumpToWebRecharge(clickEvent: clickSendingiftsButton, sufficient: false)
            SightReactiveCompatible.share.secondBusy(clickEvent: mainNextData, sufficient: false)
            //: giftView.dismissView()
            giftView.dismissSmart()
            //: } else if errorCode == 10888 {
        } else if errorCode == 10888 {
            //: let view = TalkingLiveVipSubscribePopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = SiblingViewThen(frame: CGRect(x: 0, y: 0, width: user_needValue, height: kStreamTitle))
            //: view.show()
            view.writtenToInvitation()
            //: } else {
        } else {
            //: if !errorStr.isEmptyString {
            if !errorStr.isEmptyString {
                //: func__showStatusBarErrorMsg(showMsg: errorStr)
                foolishness(showMsg: errorStr)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveRoomBottomView {
extension ColumnSpeakBottomView {
    /// 刷新底部视图
    //: func refreshBottomView(_ liveModel: TalkingLiveRoomModel) {
    func bottomAlbum(_ liveModel: PoliceMeasurable) {
        //: toUid = String(liveModel.streamerInfo.uid)
        toUid = String(liveModel.streamerInfo.uid)
        // 非主播没有更多按钮
        //: let isAnchor = (String(liveModel.streamerInfo.uid) == CompositionReactiveCompatible.share.loginUid)
        let isAnchor = (String(liveModel.streamerInfo.uid) == CompositionReactiveCompatible.share.loginUid)
        //: if isAnchor == false {
        if isAnchor == false {
            //: stackView.removeArrangedSubview(moreBtn)
            stackView.removeArrangedSubview(moreBtn)
            //: moreBtn.isHidden = true
            moreBtn.isHidden = true
        }

        // 非审核模式 && 有游戏
        //: if CompositionReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue,
        if CompositionReactiveCompatible.share.appStatus != ColumnExInsetTarget.special.rawValue,
           //: liveModel.gameList.count > 0
           liveModel.gameList.count > 0
        {
            //: gameBtn.isHidden = false
            gameBtn.isHidden = false
            //: } else {
        } else {
            //: stackView.removeArrangedSubview(gameBtn)
            stackView.removeArrangedSubview(gameBtn)
            //: gameBtn.isHidden = true
            gameBtn.isHidden = true
        }
    }

    //: func setupSubviews() {
    func menuSubviews() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(commentBtn)
        contentView.addSubview(commentBtn)
        //: contentView.addSubview(stackView)
        contentView.addSubview(stackView)
        //: stackView.addArrangedSubview(gameBtn)
        stackView.addArrangedSubview(gameBtn)
        //: stackView.addArrangedSubview(chatBtn)
        stackView.addArrangedSubview(chatBtn)
        //: chatBtn.addSubview(redCountLab)
        chatBtn.addSubview(redCountLab)
        //: stackView.addArrangedSubview(moreBtn)
        stackView.addArrangedSubview(moreBtn)
        //: stackView.addArrangedSubview(giftBtn)
        stackView.addArrangedSubview(giftBtn)
    }

    //: func setupSubViewsConstraint() {
    func andThenFragment() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.leading.trailing.bottom.equalTo(self)
            make.top.leading.trailing.bottom.equalTo(self)
        }
        //: commentBtn.snp.makeConstraints { make in
        commentBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.height.equalTo(actualWidth(w: 33))
            make.height.equalTo(actualWidth(w: 33))
            //: make.width.equalTo(actualWidth(w: 157))
            make.width.equalTo(actualWidth(w: 157))
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }

        //: giftBtn.snp.makeConstraints { make in
        giftBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(33)
            make.width.height.equalTo(33)
        }
        //: moreBtn.snp.makeConstraints { make in
        moreBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
        //: redCountLab.snp.makeConstraints { make in
        redCountLab.snp.makeConstraints { make in
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.width.height.equalTo(7)
            make.width.height.equalTo(7)
        }
        //: gameBtn.snp.makeConstraints { make in
        gameBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
    }
}

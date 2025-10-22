
//: Declare String Begin

/*: "#932DFF" :*/
fileprivate let noti_secureFormat:[Character] = ["#","9","3","2","D","F","F"]

/*: "#E6CFFF" :*/
fileprivate let data_centerMessage:String = "compute"
fileprivate let userSeatName:String = "E6CbarF"

/*: "icon_randow_match" :*/
fileprivate let k_fadeStr:String = "ihideon"
fileprivate let main_plusId:String = "off later bondow_m"

/*: "icon_coin_pre" :*/
fileprivate let user_femaleTitle:String = "heritage news eyeicon_coi"
fileprivate let noti_trackPath:[Character] = ["n","_","p","r","e"]

/*: "icon_randow_chating" :*/
fileprivate let app_animaMessage:String = "utilitycon"
fileprivate let const_hangKey:String = "rid gift food pairw_ch"
fileprivate let user_constraintMsg:String = "ATING"

/*: "#F97AE8" :*/
fileprivate let noti_transmissionId:String = "#F97AEattention pattern apartment line"
fileprivate let noti_scheduleMsg:String = "8"

/*: "#AD32FF" :*/
fileprivate let appWorkplaceKey:[Character] = ["#","A","D","3","2"]
fileprivate let dataEachUrl:[Character] = ["F","F"]

/*: "Random  Match" :*/
fileprivate let main_foundationValue:String = "successfully cancelRandom"

/*: "icon_Chat_freetimes" :*/
fileprivate let k_nextOriginThisPath:String = "icon_Cfinger chin break statement dam"
fileprivate let show_foreheadMessage:String = "froriginaloriginalt"

/*: "fee" :*/
fileprivate let showGroundId:String = "callede"

/*: "VIPFee" :*/
fileprivate let dataLateResentStr:[Character] = ["V","I","P","F","e","e"]

/*: "chattingNum" :*/
fileprivate let app_reportUrl:String = "chatotali"
fileprivate let constCurrentlyFormat:[Character] = ["n","g","N","u","m"]

/*: "users" :*/
fileprivate let show_hypothesisFormat:String = "uaudiencers"

/*: "coin" :*/
fileprivate let appPriorityPath:[Character] = ["c","o","i","n"]

/*: "Chating" :*/
fileprivate let showTabStr:String = "c"
fileprivate let appVerticalUrl:[Character] = ["h","a","t","i","n","g"]

/*: "%@ coins / min " :*/
fileprivate let user_tableContent:String = "only four business enjoy format%@ coi"
fileprivate let showDownMessage:String = "n following unless decision more don"

/*: "%@ coins/min  Get Discount >" :*/
fileprivate let notiExitMsg:[Character] = ["%","@"," ","c","o","i","n","s"]
fileprivate let user_keepTradeData:[Character] = ["/","m","i","n"]
fileprivate let constInjuryGreenTitle:[Character] = [" "," ","G","e","t"," ","D","i","s","c","o","u","n","t"," ",">"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MoneyedRecognizerDelegate.swift
//  Pods
//
//  Created by Charlotte on 2025/9/11.
//

//: import UIKit
import UIKit

//: class RandomMatchVC: TalkingBaseViewController {
class MoneyedRecognizerDelegate: MergeContactViewController {
    //: var fee = 0
    var fee = 0 // 原价
    //: var vipFee = 0
    var vipFee = 0 // VIP价格
    //: var chattingNum = 0
    var chattingNum = 0 // 当前匹配人数
    //: var usrIcon = [String]()
    var usrIcon = [String]() // 当前这批用户头像
    //: var usrcoin = 0
    var usrcoin = 0 // 当前用户余额

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: self.reqvideoMatchCheck()
        self.reqvideo()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: setupSubviews()
        clearSubviews()
        //: setupSubViewsConstraint()
        serial()
        //: bindInteraction()
        coverOperate()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var gradientBtn: UIButton = {
    private lazy var gradientBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(start_randomVideo), for: .touchUpInside)
        btn.addTarget(self, action: #selector(verticalVideo), for: .touchUpInside)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        // 渐变
        //: let layer = CAGradientLayer()
        let layer = CAGradientLayer()
        //: layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth+1, height: ScreenHeight+1)
        layer.frame = CGRect(x: 0, y: 0, width: user_needValue + 1, height: kStreamTitle + 1)
        //: layer.startPoint = CGPoint(x: 0.5, y: 0)
        layer.startPoint = CGPoint(x: 0.5, y: 0)
        //: layer.endPoint = CGPoint(x: 0.5, y: 1)
        layer.endPoint = CGPoint(x: 0.5, y: 1)
        //: layer.colors = [UIColor(hex: "#932DFF")!.cgColor, UIColor(hex: "#E6CFFF")!.cgColor]
        layer.colors = [UIColor(hex: (String(noti_secureFormat)))!.cgColor, UIColor(hex: (data_centerMessage.replacingOccurrences(of: "compute", with: "#") + userSeatName.replacingOccurrences(of: "bar", with: "FF")))!.cgColor]
        //: layer.locations = [0, 1]
        layer.locations = [0, 1]
        //: btn.layer.addSublayer(layer)
        btn.layer.addSublayer(layer)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var userView: RandomMatchUserView = {
    private lazy var userView: OnceMoreView = {
        //: let v = RandomMatchUserView.init()
        let v = OnceMoreView()
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLB : UIImageView = {
    private lazy var titleLB: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_randow_match")
        img.image = UIImage.parentSet(name: (k_fadeStr.replacingOccurrences(of: "hide", with: "c") + "_rand" + String(main_plusId.suffix(4)) + "atch"))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    /// 余额
    //: private lazy var balanceBtn: TalkingButton = {
    private lazy var balanceBtn: AfterView = {
        //: let btn = TalkingButton()
        let btn = AfterView()
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_coin_pre")
        img.image = UIImage.parentSet(name: (String(user_femaleTitle.suffix(8)) + String(noti_trackPath)))
        //: img.isUserInteractionEnabled = false
        img.isUserInteractionEnabled = false
        //: btn.addSubview(img)
        btn.addSubview(img)
        //: img.snp.makeConstraints { make in
        img.snp.makeConstraints { make in
            //: make.leading.top.bottom.equalToSuperview()
            make.leading.top.bottom.equalToSuperview()
            //: make.width.equalTo(24)
            make.width.equalTo(24)
        }
        //: btn.addTarget(self, action: #selector(balanceBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(balanceOrSnarl), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var balanceLB: UILabel = {
    private lazy var balanceLB: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = UIColor.white
        lb.textColor = UIColor.white
        //: lb.font = UIFont.boldSystemFont(ofSize: 16)
        lb.font = UIFont.boldSystemFont(ofSize: 16)
        //: lb.isUserInteractionEnabled = false
        lb.isUserInteractionEnabled = false
        //: balanceBtn.addSubview(lb)
        balanceBtn.addSubview(lb)
        //: lb.snp.makeConstraints { make in
        lb.snp.makeConstraints { make in
            //: make.trailing.equalTo(-7)
            make.trailing.equalTo(-7)
            //: make.top.equalTo(4)
            make.top.equalTo(4)
            //: make.bottom.equalTo(-4)
            make.bottom.equalTo(-4)
            //: make.leading.equalTo(29)
            make.leading.equalTo(29)
        }
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var numberBtn: TalkingButton = {
    private lazy var numberBtn: AfterView = {
        //: let btn = TalkingButton()
        let btn = AfterView()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_randow_chating"), for: .normal)
        btn.setImage(UIImage.parentSet(name: (app_animaMessage.replacingOccurrences(of: "utility", with: "i") + "_rando" + String(const_hangKey.suffix(4)) + user_constraintMsg.lowercased())), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 14)
        btn.titleLabel?.font = UIFont.joinSize(fontSize: 14)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var randomBtn: UIButton = {
    private lazy var randomBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: [UIColor.init(hex: "#F97AE8")!.cgColor, UIColor.init(hex: "#AD32FF")!.cgColor], size: CGSize(width: 200, height: 56)), for: .normal)
        btn.setBackgroundImage(UIImage.keyLocal(colors: [UIColor(hex: (String(noti_transmissionId.prefix(6)) + noti_scheduleMsg.capitalized))!.cgColor, UIColor(hex: (String(appWorkplaceKey) + String(dataEachUrl)))!.cgColor], size: CGSize(width: 200, height: 56)), for: .normal)
        //: btn.setTitle("Random  Match".localized, for: .normal)
        btn.setTitle((String(main_foundationValue.suffix(6)) + "  Match").localized, for: .normal)
        //: btn.layer.cornerRadius = 27
        btn.layer.cornerRadius = 27
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: btn.titleLabel?.lineBreakMode = .byCharWrapping
        btn.titleLabel?.lineBreakMode = .byCharWrapping
        //: btn.sizeToFit()
        btn.sizeToFit()
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var randowFreeIcon : UIImageView = {
    private lazy var randowFreeIcon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_Chat_freetimes")
        img.image = UIImage.parentSet(name: (String(k_nextOriginThisPath.prefix(6)) + "hat_" + show_foreheadMessage.replacingOccurrences(of: "original", with: "e") + "imes"))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var dicountBtn: UIButton = {
    private lazy var dicountBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitleColor(UIColor.appTitleColor(), for: .normal)
        btn.setTitleColor(UIColor.antiquityColor(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 14)
        btn.titleLabel?.font = UIFont.joinSize(fontSize: 14)
        //: btn.isHidden = true
        btn.isHidden = true
        //: btn.addTarget(self, action: #selector(dicountBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(modifyDownCompare), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension RandomMatchVC {
extension MoneyedRecognizerDelegate {
    //: @objc private func reqvideoMatchCheck() {
    @objc private func reqvideo() {
        //: TalkingQuickVideoManager.req_videoMatchCheck(enterType: 1) { [self] succeed, result, errorModel in
        PreviouslyVideoManager.punish(enterType: 1) { [self] succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: self.fee = json["fee"].intValue
            self.fee = json[(showGroundId.replacingOccurrences(of: "called", with: "fe"))].intValue
            //: self.vipFee = json["VIPFee"].intValue
            self.vipFee = json[(String(dataLateResentStr))].intValue
            //: self.chattingNum = json["chattingNum"].intValue
            self.chattingNum = json[(app_reportUrl.replacingOccurrences(of: "total", with: "tt") + String(constCurrentlyFormat))].intValue
            //: let arr = json["users"].rawValue as! [String]
            let arr = json[(show_hypothesisFormat.replacingOccurrences(of: "audience", with: "se"))].rawValue as! [String]
            /// 比较前3张，不一致才刷新
            //: var isfresh = true
            var isfresh = true
            //: if self.usrIcon.count > 0 && self.usrIcon.count >= 3 {
            if self.usrIcon.count > 0, self.usrIcon.count >= 3 {
                //: for (i,str) in arr.enumerated() {
                for (i, str) in arr.enumerated() {
                    //: let tstr = self.usrIcon[i]
                    let tstr = self.usrIcon[i]
                    //: if str == tstr {
                    if str == tstr {
                        //: isfresh = false
                        isfresh = false
                        //: } else {
                    } else {
                        //: isfresh = true
                        isfresh = true
                        //: break
                        break
                    }
                    //: if i>=2 {
                    if i >= 2 {
                        //: break
                        break
                    }
                }
            }
            //: self.usrIcon = arr
            self.usrIcon = arr
            //: if isfresh {
            if isfresh {
                //: self.userView.configure(avatars: self.usrIcon)
                self.userView.packDown(avatars: self.usrIcon)
            }
            //: self.usrcoin = json["coin"].intValue
            self.usrcoin = json[(String(appPriorityPath))].intValue

            //: self.balanceLB.text = "\(self.usrcoin)"
            self.balanceLB.text = "\(self.usrcoin)"
            //: let size = self.balanceLB.text?.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: self.balanceLB.font!], context: nil)
            let size = self.balanceLB.text?.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: self.balanceLB.font!], context: nil)
            //: self.balanceBtn.snp.updateConstraints { make in
            self.balanceBtn.snp.updateConstraints { make in
                //: make.width.equalTo(40+(size?.width ?? 10))
                make.width.equalTo(40 + (size?.width ?? 10))
            }
            //: self.numberBtn.setTitle(" \(self.chattingNum) "+"Chating".localized, for: .normal)
            self.numberBtn.setTitle(" \(self.chattingNum) " + (showTabStr.uppercased() + String(appVerticalUrl)).localized, for: .normal)
            //: setFreeView()
            ratingAngle()
        }
    }
}

// MARK: - Event

//: extension RandomMatchVC  {
extension MoneyedRecognizerDelegate {
    //: @objc func balanceBtnClick() {
    @objc func balanceOrSnarl() {
        //: SightReactiveCompatible.share.func__pushToHalfWebVC(webViewType: .RechargeHalfPage)
        SightReactiveCompatible.share.patched(webViewType: .RechargeHalfPage)
    }

    /// 开始随机视频
    //: @objc private func start_randomVideo() {
    @objc private func verticalVideo() {
        //: gradientBtn.isUserInteractionEnabled = false
        gradientBtn.isUserInteractionEnabled = false
        //: SightReactiveCompatible.share.func__pushToRandomVideoVC(isBeginRand: true)
        SightReactiveCompatible.share.rewardRemove(isBeginRand: true)
        //: DispatchQueue.main.asyncAfter(deadline: .now()+1.0) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            //: self.gradientBtn.isUserInteractionEnabled = true
            self.gradientBtn.isUserInteractionEnabled = true
        }
    }

    //: func isShowFree() -> Bool{
    func atLarge() -> Bool {
        //: print("%@---%@", CompositionReactiveCompatible.share.loginUserMode.freeCallTimes,CompositionReactiveCompatible.share.appUserConfigMode.enableFreeCallType)
        //: let index = EnableFreeCallType.randow
        let index = CompositionArrowPriorityTarget.randow
        //: return (CompositionReactiveCompatible.share.loginUserMode.freeCallTimes > 0 && CompositionReactiveCompatible.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue)
        return CompositionReactiveCompatible.share.loginUserMode.freeCallTimes > 0 && CompositionReactiveCompatible.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue
    }

    //: @objc func setFreeView() {
    @objc func ratingAngle() {
        //: if isShowFree() {
        if atLarge() {
            //: view.addSubview(randowFreeIcon)
            view.addSubview(randowFreeIcon)
            //: randowFreeIcon.snp.makeConstraints { make in
            randowFreeIcon.snp.makeConstraints { make in
                //: make.trailing.equalTo(randomBtn.snp.trailing).offset(-2)
                make.trailing.equalTo(randomBtn.snp.trailing).offset(-2)
                //: make.top.equalTo(randomBtn.snp.top).offset(-20)
                make.top.equalTo(randomBtn.snp.top).offset(-20)
                //: make.size.equalTo(CGSize(width: 41, height: 28))
                make.size.equalTo(CGSize(width: 41, height: 28))
            }
            //: randowFreeIcon.isHidden = false
            randowFreeIcon.isHidden = false
            //: }else {
        } else {
            //: randowFreeIcon.isHidden = true
            randowFreeIcon.isHidden = true
            //: let matchstr = "Random  Match".localized
            let matchstr = (String(main_foundationValue.suffix(6)) + "  Match").localized
            //: let price = CompositionReactiveCompatible.share.loginUserMode.loungePlus ? vipFee:fee
            let price = CompositionReactiveCompatible.share.loginUserMode.loungePlus ? vipFee : fee
            //: let priceStr = "%@ coins / min ".localizedArguments(price)
            let priceStr = (String(user_tableContent.suffix(6)) + "ns / mi" + String(showDownMessage.prefix(2))).temporaryWorker(price)
            //: let attrString = NSMutableAttributedString(string: matchstr + "\n" + "   " + priceStr)
            let attrString = NSMutableAttributedString(string: matchstr + "\n" + "   " + priceStr)
            //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.boldSystemFont(ofSize: 18)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.white, .font: UIFont.boldSystemFont(ofSize: 18)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: let attributes2 = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            let attributes2 = [.foregroundColor: UIColor.white, .font: UIFont.processAcross(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes2, range: NSRange(location: matchstr.count, length: attrString.length-matchstr.count))
            attrString.addAttributes(attributes2, range: NSRange(location: matchstr.count, length: attrString.length - matchstr.count))
            //: randomBtn.setAttributedTitle(attrString, for: .normal)
            randomBtn.setAttributedTitle(attrString, for: .normal)

            //: dicountBtn.isHidden =  CompositionReactiveCompatible.share.loginUserMode.loungePlus
            dicountBtn.isHidden = CompositionReactiveCompatible.share.loginUserMode.loungePlus
            //: dicountBtn.setTitle("%@ coins/min  Get Discount >".localizedArguments(vipFee), for: .normal)
            dicountBtn.setTitle((String(notiExitMsg) + String(user_keepTradeData) + String(constInjuryGreenTitle)).temporaryWorker(vipFee), for: .normal)
        }
    }

    //: @objc func dicountBtnClick() {
    @objc func modifyDownCompare() {
        //: SightReactiveCompatible.share.func__pushToSubscribeAlert()
        SightReactiveCompatible.share.deciding()
    }
}

// MARK: - Layout

//: extension RandomMatchVC {
extension MoneyedRecognizerDelegate {
    //: private func setupSubviews() {
    private func clearSubviews() {
        //: view.addSubview(gradientBtn)
        view.addSubview(gradientBtn)
        //: view.addSubview(userView)
        view.addSubview(userView)
        //: view.addSubview(titleLB)
        view.addSubview(titleLB)
        //: view.addSubview(balanceBtn)
        view.addSubview(balanceBtn)
        //: view.addSubview(numberBtn)
        view.addSubview(numberBtn)
        //: view.addSubview(randomBtn)
        view.addSubview(randomBtn)
        //: view.addSubview(dicountBtn)
        view.addSubview(dicountBtn)
    }

    //: private func setupSubViewsConstraint() {
    private func serial() {
        //: gradientBtn.snp.makeConstraints { make in
        gradientBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: titleLB.snp.makeConstraints { make in
        titleLB.snp.makeConstraints { make in
            //: make.leading.equalTo(16)
            make.leading.equalTo(16)
            //: make.top.equalTo(NavigationBarHeight+10)
            make.top.equalTo(main_buildValue + 10)
            //: make.height.equalTo(55)
            make.height.equalTo(55)
        }
        //: balanceBtn.snp.makeConstraints { make in
        balanceBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(titleLB)
            make.centerY.equalTo(titleLB)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.width.equalTo(60)
            make.width.equalTo(60)
            //: make.height.equalTo(actualWidth(w: 24))
            make.height.equalTo(actualWidth(w: 24))
        }
        //: userView.snp.makeConstraints { make in
        userView.snp.makeConstraints { make in
            //: make.top.equalTo(balanceBtn.snp.bottom).offset(80)
            make.top.equalTo(balanceBtn.snp.bottom).offset(80)
            //: make.trailing.leading.equalToSuperview()
            make.trailing.leading.equalToSuperview()
            //: make.height.equalTo(354)
            make.height.equalTo(354)
        }
        //: numberBtn.snp.makeConstraints { make in
        numberBtn.snp.makeConstraints { make in
            //: make.top.equalTo(userView.snp.bottom).offset(17)
            make.top.equalTo(userView.snp.bottom).offset(17)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: randomBtn.snp.makeConstraints { make in
        randomBtn.snp.makeConstraints { make in
            //: make.top.equalTo(numberBtn.snp.bottom).offset(41)
            make.top.equalTo(numberBtn.snp.bottom).offset(41)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSizeMake(200, 56))
            make.size.equalTo(CGSizeMake(200, 56))
        }
        //: dicountBtn.snp.makeConstraints { make in
        dicountBtn.snp.makeConstraints { make in
            //: make.top.equalTo(randomBtn.snp.bottom).offset(10)
            make.top.equalTo(randomBtn.snp.bottom).offset(10)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }

    //: private func bindInteraction() {
    private func coverOperate() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(setFreeView),
                                               selector: #selector(ratingAngle),
                                               //: name: UPDATE_INDEX_GETCONFIG_NOTIFICATION,
                                               name: constAddKey,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(reqvideoMatchCheck),
                                               selector: #selector(reqvideo),
                                               //: name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               name: appPriceMsg,
                                               //: object: nil)
                                               object: nil)
    }
}

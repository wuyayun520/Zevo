
//: Declare String Begin

/*: "img_StatementEquity" :*/
fileprivate let constInnerName:String = "vehicle lite judge valueimg_St"
fileprivate let show_beatName:[Character] = ["a"]
fileprivate let noti_themTitle:String = "thowe"

/*: "Be A Host" :*/
fileprivate let userSystemTellPath:String = "Be A bond bright ad and"
fileprivate let showFootballData:String = "if imaginationHost"

/*: "nav_back_black_nor" :*/
fileprivate let k_issueChoiceText:String = "region single rate favorite identificationnav_b"
fileprivate let userSubName:String = "mic po where heritage routeack_no"
fileprivate let user_strikeTitle:String = "clean"

/*: "isBind" :*/
fileprivate let show_topDarkValue:String = "isBindarrow ya"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LaterThen.swift
//  DialogCreateSage
//
//  Created by Charlotte on 2025/8/21.
//

//: import UIKit
import UIKit

/// 真人认证-主播权益说明页面
//: class TalkingStatementEquityVC: TalkingBaseViewController {
class LaterThen: MergeContactViewController {
    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.createUI()
        self.untilRejectNarrow()
        //: self.createUIConstraint()
        self.just()
    }

    // MARK: - Lazy load

    //: lazy var bgView: UIImageView = {
    lazy var bgView: UIImageView = {
        //: let imag = UIImageView()
        let imag = UIImageView()
        //: imag.image = UIImage.BundleImageNamed(name: "img_StatementEquity")
        imag.image = UIImage.parentSet(name: (String(constInnerName.suffix(6)) + String(show_beatName) + noti_themTitle.replacingOccurrences(of: "how", with: "em") + "ntEquity"))
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var nextBtn: UIButton = {
    private lazy var nextBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Be A Host".localized, for: .normal)
        btn.setTitle((String(userSystemTellPath.prefix(5)) + String(showFootballData.suffix(4))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.processAcross(type: .Medium, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.layer.cornerRadius = 27
        btn.layer.cornerRadius = 27
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-32, height: 54)), for: .normal)
        btn.setBackgroundImage(UIImage.keyLocal(colors: UIColor.sumerpretation(), size: CGSize(width: user_needValue - 32, height: 54)), for: .normal)
        //: btn.addTarget(self, action: #selector(nextBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(govern), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var titleLab: UILabel = {
    lazy var titleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Be A Host".localized
        lb.text = (String(userSystemTellPath.prefix(5)) + String(showFootballData.suffix(4))).localized
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.font = .pingfangFont(type: .Semibold, fontSize: 18)
        lb.font = .processAcross(type: .Semibold, fontSize: 18)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.BundleImageNamed(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.parentSet(name: (String(k_issueChoiceText.suffix(5)) + "ack_bl" + String(userSubName.suffix(6)) + user_strikeTitle.replacingOccurrences(of: "clean", with: "r"))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.addTarget(self, action: #selector(backBtnClicked), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clicked), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingStatementEquityVC {
extension LaterThen {
    //: @objc private func nextBtnClick() {
    @objc private func govern() {
        //: ProgressHUD.show()
        PointerReactiveCompatible.soundAssetThrow()
        //: TalkingLoginRequestTool.req_isBindInviter() { succeed, result, errorModel in
        MidRequestTool.formCompletion { _, result, _ in
            //: ProgressHUD.dismiss()
            PointerReactiveCompatible.motivationCharmDismiss()
            //: guard let dict = result as? Dictionary<String, Any> else {
            guard let dict = result as? [String: Any] else {
                //: return
                return
            }
            //: let isbind = dict["isBind"] as? Bool ?? false
            let isbind = dict[(String(show_topDarkValue.prefix(6)))] as? Bool ?? false
            //: if isbind {
            if isbind {
                //: let vc = TalkingVerificationExampleVC.init()
                let vc = SortViewController()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: } else {
            } else {
                //: let vc = TalkingVerifyCodeVC.init()
                let vc = CosVc()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }

    //: @objc func backBtnClicked() {
    @objc func clicked() {
        //: self.naviPopback()
        self.publicTransport()
    }
}

// MARK: - UI

//: extension TalkingStatementEquityVC {
extension LaterThen {
    //: func createUI() {
    func untilRejectNarrow() {
        //: view.addSubview(bgView)
        view.addSubview(bgView)
        //: view.addSubview(titleLab)
        view.addSubview(titleLab)
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: bgView.addSubview(nextBtn)
        bgView.addSubview(nextBtn)
    }

    //: func createUIConstraint() {
    func just() {
        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.top.equalTo(actualHeight(h: 12)+StatusBarHeight)
            make.top.equalTo(actualHeight(h: 12) + noti_guideRequestId)
            //: make.size.equalTo(CGSize(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
        //: nextBtn.snp.makeConstraints { make in
        nextBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarNavigationBarHeight+465)
            make.top.equalTo(userResolutionUrl + 465)
            //: make.leading.equalTo(16)
            make.leading.equalTo(16)
            //: make.trailing.equalTo(-16)
            make.trailing.equalTo(-16)
            //: make.height.equalTo(54)
            make.height.equalTo(54)
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(backBtn)
            make.top.equalTo(backBtn)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}

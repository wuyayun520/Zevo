
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let noti_northFreshKey:[UInt8] = [0x3c,0x3b,0x3c,0x21,0x7d,0x36,0x3a,0x31,0x30,0x27,0x6f,0x7c,0x75,0x3d,0x34,0x26,0x75,0x3b,0x3a,0x21,0x75,0x37,0x30,0x30,0x3b,0x75,0x3c,0x38,0x25,0x39,0x30,0x38,0x30,0x3b,0x21,0x30,0x31]

private func forwardFocus(exit num: UInt8) -> UInt8 {
    return num ^ 85
}

/*: "apple 授权失败，请稍后再试" :*/
fileprivate let app_manageMessage:[Character] = ["a","p","p","l","e"," ","授","\u{6743}","\u{5931}","败","\u{ff0c}","请","稍","后","再"]
fileprivate let constLensFormat:[Character] = ["\u{8bd5}"]

/*: "google 授权失败，请稍后再试" :*/
fileprivate let kToolPath:String = "googclosed"
fileprivate let kSitUrl:String = "e \u{6388}权"
fileprivate let show_consentStr:String = "稍后再试"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  YellowViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingLoginMainViewController: TalkingBaseViewController {
class YellowViewController: MergeContactViewController {
    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: hideNavi = true
        hideNavi = true
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: noti_northFreshKey.map{forwardFocus(exit: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: navigationController?.isNavigationBarHidden = hideNavi
        navigationController?.isNavigationBarHidden = hideNavi
        //: tabBarController?.tabBar.isHidden = true
        tabBarController?.tabBar.isHidden = true
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.performSubviews()
        //: self.setupSubViewsConstraint()
        self.operate()
        //: self.bindInteraction()
        self.bindTotaleraction()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var loginMainView: TalkingLoginMainView = {
    lazy var loginMainView: SweetMainView = {
        //: let loginView = TalkingLoginMainView.init()
        let loginView = SweetMainView()
        //: return loginView
        return loginView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginMainViewController {
extension YellowViewController {
    //: func req_thirdLogin(_ type: LoginType) {
    func responseAllow(_ type: AddressContiguousBytes) {
        //: switch type {
        switch type {
        //: case .AppleLogin:
        case .AppleLogin:
            //: AppleLoginManager.shared.login { dict in
            TextControllerDelegate.shared.cancel { dict in
                //: guard let dict = dict else {
                guard let dict = dict else {
                    //: printLog(message: "apple 授权失败，请稍后再试")
                    printLog(message: (String(app_manageMessage) + String(constLensFormat)))
                    //: return
                    return
                }
                //: ProgressHUD.show()
                PointerReactiveCompatible.soundAssetThrow()
                //: TalkingLoginRequestTool.req_thirdLogin(type: .AppleLogin, params: dict) { succeed, result, errorModel in
                MidRequestTool.request(type: .AppleLogin, params: dict) { _, _, _ in
                    //: ProgressHUD.dismiss()
                    PointerReactiveCompatible.motivationCharmDismiss()
                }
            }
        //: case .GoogleLogin:
        case .GoogleLogin:
            //: GoogleLoginManager.shared.login(vc: self) { dict in
            WeeklyContentThen.shared.equal(vc: self) { dict in
                //: guard let dict = dict else {
                guard let dict = dict else {
                    //: printLog(message: "google 授权失败，请稍后再试")
                    printLog(message: (kToolPath.replacingOccurrences(of: "closed", with: "l") + kSitUrl + "失败，请" + show_consentStr.capitalized))
                    //: return
                    return
                }
                //: ProgressHUD.show()
                PointerReactiveCompatible.soundAssetThrow()
                //: TalkingLoginRequestTool.req_thirdLogin(type: .GoogleLogin, params: dict) { succeed, result, errorModel in
                MidRequestTool.request(type: .GoogleLogin, params: dict) { _, _, _ in
                    //: ProgressHUD.dismiss()
                    PointerReactiveCompatible.motivationCharmDismiss()
                }
            }
        //: case .PhoneLogin:
        case .PhoneLogin:
            //: let vc = TalkingLoginViewController.init(type: .LoginPhone)
            let vc = StillReactiveCompatible(type: .LoginPhone)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)

        //: case .EmailLogin:
        case .EmailLogin:
            //: let vc = TalkingLoginViewController.init(type: .LoginEmail)
            let vc = StillReactiveCompatible(type: .LoginEmail)
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - Privete Event

//: extension TalkingLoginMainViewController {
extension YellowViewController {
    //: func loginAction(type: LoginType) {
    func female(type: AddressContiguousBytes) {
        //: LoginPrivacyPolicyView().showView {
        SawSetView().load {
            //: self.req_thirdLogin(type)
            self.responseAllow(type)
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginMainViewController {
extension YellowViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func performSubviews() {
        //: view.addSubview(loginMainView)
        view.addSubview(loginMainView)
        //: loginMainView.btnBlock = {[weak self] (type: LoginType) in
        loginMainView.btnBlock = { [weak self] (type: AddressContiguousBytes) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.loginAction(type: type)
            self.female(type: type)
            //: return
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func operate() {
        //: loginMainView.snp.makeConstraints { make in
        loginMainView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func bindTotaleraction() {}
}

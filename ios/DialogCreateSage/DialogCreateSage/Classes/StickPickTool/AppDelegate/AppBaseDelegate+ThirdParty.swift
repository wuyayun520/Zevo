
//: Declare String Begin

/*: "app_marsxlog" :*/
fileprivate let mainCombinedName:String = "name"
fileprivate let show_dayResentPoFormat:[Character] = ["p","_","m","a","r","s","x","l","o","g"]

/*: "Install" :*/
fileprivate let notiDeadlineId:String = "Instastructure destination all case system"
fileprivate let constReflectionTitle:String = "contentcontent"

/*: "TXUGCBase初始化：result:  :*/
fileprivate let main_beamFormat:[Character] = ["T","X","U","G","C","B","a","s","e","初","始","化","：","r","e","s"]
fileprivate let const_serviceStr:[Character] = ["u","l","t",":"," "]

/*: , reason:  :*/
fileprivate let k_deviceFormat:String = "char focus paper, reas"
fileprivate let dataDesignValue:String = "following retirement down overon: "

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AppBaseDelegate+ThirdParty.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/3.
//

//: import Adjust
import Adjust
//: import DXMarsXlog
import DXMarsXlog
//: import Foundation
import Foundation
//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional
//: import UIKit
import UIKit

// MARK: - Public Event

//: extension AppDelegateHelper {
extension AppBaseDelegate {
    /// 第三方sdk初始化
    /// - Parameter application: application
    //: func initThirdPartySetup(_ application: UIApplication) {
    func person(_: UIApplication) {
        // 程序启动就实例化进行监听（处理自动续订的情况）
        //: _ = AppleIAPManager.shared
        _ = BlockTransactionObserver.shared

        //: createMsgVoicePath()
        createMsgVoicePath()

        //: DXMarsXLogger.shared().initWithNamePrefix("app_marsxlog")
        DXMarsXLogger.shared().initWithNamePrefix((mainCombinedName.replacingOccurrences(of: "name", with: "ap") + String(show_dayResentPoFormat)))

        //: LightConversationListener.shared.func__TXSDKInit()
        LightConversationListener.shared.inmate()

        //: initADjust()
        lab()
        // 首次打开埋点【只记录一次】
        //: TalkingAdjustManager.share.addOnceEvent(key: "Install")
        AuthorReminderReactiveCompatible.share.beanMove(key: (String(notiDeadlineId.prefix(5)) + constReflectionTitle.replacingOccurrences(of: "content", with: "l")))
        //: setupTXLive()
        spring()
        //: setupTXUGC()
        txugcImage()

        //: guard SenseTime_Use == true else { return }
        guard notiNetPointName == true else { return }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            //: if MidThen.share.checkLicense() == false {
            if MidThen.share.emptyTar() == false {
                //: SenseTime_Use = false
                notiNetPointName = false
                //: MidThen.share.checkRemoteLicInfoWith { succeed in
                MidThen.share.screenSearch { succeed in
                    // 更新商汤美颜是否可用
                    //: SenseTime_Use = succeed
                    notiNetPointName = succeed
                }
            }
        }
    }
}

// MARK: - Private Event

//: extension AppDelegateHelper {
extension AppBaseDelegate {
    //: private func setupTXLive() {
    private func spring() {
        // 腾讯SDK 6.4版本之后，推流功能需要license验证SDK，
        //: if TXLIVE_LICENSE_URL.count > 0 {
        if appFormalValue.count > 0 {
            //: TXLiveBase.setLicenceURL(TXLIVE_LICENSE_URL, key: TXLIVE_LICENSE_KEY)
            TXLiveBase.setLicenceURL(appFormalValue, key: main_recordText)
            //: TXLiveBase.setLogLevel(.LOGLEVEL_VERBOSE)
            TXLiveBase.setLogLevel(.LOGLEVEL_VERBOSE)
        }
    }

    // 短视频license
    //: private func setupTXUGC() {
    private func txugcImage() {
        //: TXUGCBase.setLicenceURL(TXLIVE_LICENSE_URL, key: TXLIVE_LICENSE_KEY)
        TXUGCBase.setLicenceURL(appFormalValue, key: main_recordText)
        //: TXUGCBase.sharedInstance().delegate = self
        TXUGCBase.sharedInstance().delegate = self
    }

    /// adjust事件买点统计
    //: private func initADjust() {
    private func lab() {
        //: var environment = ""
        var environment = ""
        //: if !Environment_Formal {
        if !dataPostValue {
            //: environment = ADJEnvironmentSandbox
            environment = ADJEnvironmentSandbox
            //: } else {
        } else {
            //: environment = ADJEnvironmentProduction
            environment = ADJEnvironmentProduction
        }
        //: let yourAppToken = AdjustKey
        let yourAppToken = show_serverNameTitle
        //: let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)
        let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)
        //: adjustConfig?.logLevel = ADJLogLevelWarn
        adjustConfig?.logLevel = ADJLogLevelWarn
        //: Adjust.appDidLaunch(adjustConfig)
        Adjust.appDidLaunch(adjustConfig)
    }
}

// MARK: - TXUGCBaseDelegate【短视频压缩、上传】

//: extension AppDelegateHelper: TXUGCBaseDelegate {
extension AppBaseDelegate: TXUGCBaseDelegate {
    //: public func onLicenceLoaded(_ result: Int32, reason: String!) {
    public func onLicenceLoaded(_ result: Int32, reason: String!) {
        //: UploadLogTool.writeLog(msg: "TXUGCBase初始化：result: \(result), reason: \(String(describing: reason)).")
        FinishThen.onicial(msg: (String(main_beamFormat) + String(const_serviceStr)) + "\(result)" + (String(k_deviceFormat.suffix(6)) + String(dataDesignValue.suffix(4))) + "\(String(describing: reason)).")
    }
}

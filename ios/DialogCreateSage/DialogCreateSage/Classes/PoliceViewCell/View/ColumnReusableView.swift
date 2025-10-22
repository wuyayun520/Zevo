
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let constProfileData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "You can receive a gold coins bonus once a day while the " :*/
fileprivate let user_bucketMsg:[UInt8] = [0x75,0x43,0x59,0xc,0x4f,0x4d,0x42,0xc,0x5e,0x49,0x4f,0x49,0x45,0x5a,0x49,0xc,0x4d,0xc,0x4b,0x43,0x40,0x48,0xc,0x4f,0x43,0x45,0x42,0x5f,0xc,0x4e,0x43,0x42,0x59,0x5f,0xc,0x43,0x42,0x4f,0x49,0xc,0x4d,0xc,0x48,0x4d,0x55,0xc,0x5b,0x44,0x45,0x40,0x49,0xc,0x58,0x44,0x49,0xc]

/*: "Lounge plus" :*/
fileprivate let app_evaluateData:[Character] = ["L","o","u","n","g"]
fileprivate let data_earPath:String = "e plusattention bank into user"

/*: " subscription service is active.The time of the daily gold coins will be based on the US Eastern Time Zone." :*/
fileprivate let main_readName:[UInt8] = [0x21,0x72,0x74,0x63,0x72,0x62,0x73,0x68,0x71,0x75,0x68,0x6e,0x6f,0x21,0x72,0x64,0x73,0x77,0x68,0x62,0x64,0x21,0x68,0x72,0x21,0x60,0x62,0x75,0x68,0x77,0x64,0x2f,0x55,0x69,0x64,0x21,0x75,0x68,0x6c,0x64,0x21,0x6e,0x67,0x21,0x75,0x69,0x64,0x21,0x65,0x60,0x68,0x6d,0x78,0x21,0x66,0x6e,0x6d,0x65,0x21,0x62,0x6e,0x68,0x6f,0x72,0x21,0x76,0x68,0x6d,0x6d,0x21,0x63,0x64,0x21,0x63,0x60,0x72,0x64,0x65,0x21,0x6e,0x6f,0x21,0x75,0x69,0x64,0x21,0x54,0x52,0x21,0x44,0x60,0x72,0x75,0x64,0x73,0x6f,0x21,0x55,0x68,0x6c,0x64,0x21,0x5b,0x6e,0x6f,0x64,0x2f]

private func thinEveryone(processor num: UInt8) -> UInt8 {
    return num ^ 1
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColumnReusableView.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: class TalkingDailyFooterView: UICollectionReusableView {
class ColumnReusableView: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: constProfileData.reversed(), encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.lade()
        //: self.setupSubViewsConstraint()
        self.advanced()
    }

    // MARK: - Lazy Load

    //: private lazy var cornersView: UIView = {
    private lazy var cornersView: UIView = {
        //: let view = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth-30, height: 20))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: user_needValue - 30, height: 20))
        //: view.Corner(width: view.frame.size.width, height: view.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 12, height: 12))
        view.produceRadii(width: view.frame.size.width, height: view.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 12, height: 12))
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "You can receive a gold coins bonus once a day while the \"Lounge plus\" subscription service is active.The time of the daily gold coins will be based on the US Eastern Time Zone.".localized
        lab.text = String(bytes: user_bucketMsg.map{$0^44}, encoding: .utf8)! + "\"" + (String(app_evaluateData) + String(data_earPath.prefix(6))) + "\"" + String(bytes: main_readName.map{thinEveryone(processor: $0)}, encoding: .utf8)!.localized
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.joinSize(fontSize: 14)
        //: lab.textColor = UIColor.appValueDetailColor()
        lab.textColor = UIColor.pointOfTotalersection()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingDailyFooterView {
extension ColumnReusableView {
    /// 获取当前视图高度
    //: static func getFooterViewHeight() -> CGFloat {
    static func resumeInstall() -> CGFloat {
        //: if CompositionReactiveCompatible.share.loginUserMode.isSignIn {
        if CompositionReactiveCompatible.share.loginUserMode.isSignIn {
            //: return actualWidth(w: 124)
            return actualWidth(w: 124)
            //: } else {
        } else {
            //: return actualWidth(w: 200)
            return actualWidth(w: 200)
        }
    }
}

// MARK: - Layout

//: extension TalkingDailyFooterView {
extension ColumnReusableView {
    // 添加视图
    //: private func setupSubviews() {
    private func lade() {
        //: self.addSubview(cornersView)
        self.addSubview(cornersView)
        //: self.addSubview(desLab)
        self.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func advanced() {
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(cornersView.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(cornersView.snp.bottom).offset(actualWidth(w: 12))
            //: make.leading.width.centerX.equalToSuperview()
            make.leading.width.centerX.equalToSuperview()
        }
    }
}

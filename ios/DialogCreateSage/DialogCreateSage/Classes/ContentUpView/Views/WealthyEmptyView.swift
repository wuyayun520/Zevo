
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let data_manageFormat:[UInt8] = [0x40,0x47,0x40,0x5d,0x1,0x4a,0x46,0x4d,0x4c,0x5b,0x13,0x0,0x9,0x41,0x48,0x5a,0x9,0x47,0x46,0x5d,0x9,0x4b,0x4c,0x4c,0x47,0x9,0x40,0x44,0x59,0x45,0x4c,0x44,0x4c,0x47,0x5d,0x4c,0x4d]

private func succeedObjectButton(decrease num: UInt8) -> UInt8 {
    return num ^ 41
}

/*: "icon_kong_kong_default" :*/
fileprivate let notiColorfulPath:String = "mean reminder following immediate stateicon_k"
fileprivate let main_courseMsg:String = "military unknown slimng_d"

/*: "You've got no list yet." :*/
fileprivate let appValidFormat:String = "You\'v"
fileprivate let notiRemoteLinkText:[Character] = ["o"," ","l","i","s"]
fileprivate let mainGlobalData:String = "t yet.agency her pick well service"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WealthyEmptyView.swift
//  AbroadTalking
//
//  Created by young on 2022/9/12.
//

//: import UIKit
import UIKit

//: class SocialEmptyView: UIView {
class WealthyEmptyView: UIView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: data_manageFormat.map{succeedObjectButton(decrease: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.appeal()
        //: self.setupSubViewsConstraint()
        self.mergeConstraint()
    }

    // MARK: - Lazy load

    //: lazy var imgV: UIImageView = {
    lazy var imgV: UIImageView = {
        //: let v = UIImageView(image: UIImage.BundleImageNamed(name: "icon_kong_kong_default"))
        let v = UIImageView(image: UIImage.parentSet(name: (String(notiColorfulPath.suffix(6)) + "ong_ko" + String(main_courseMsg.suffix(4)) + "efault")))
        //: return v
        return v
        //: }()
    }()

    //: lazy var desLab: UILabel = {
    lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appValueDetailColor()
        lab.textColor = UIColor.pointOfTotalersection()
        //: lab.font = .pingfangFont(type: .Regular, fontSize: 16)
        lab.font = .processAcross(type: .Regular, fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "You've got no list yet.".localized
        lab.text = (appValidFormat + "e got n" + String(notiRemoteLinkText) + String(mainGlobalData.prefix(6))).localized
        //: return lab
        return lab
        //: }()
    }()
}

//: extension SocialEmptyView {
extension WealthyEmptyView {
    // 添加视图
    //: private func setupSubviews() {
    private func appeal() {
        //: self.addSubview(imgV)
        self.addSubview(imgV)
        //: self.addSubview(desLab)
        self.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func mergeConstraint() {
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalToSuperview().offset(NavigationBarHeight)
            make.top.equalToSuperview().offset(main_buildValue)
        }
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(imgV.snp.bottom).offset(20)
            make.top.equalTo(imgV.snp.bottom).offset(20)
            //: make.leading.equalToSuperview().offset(30)
            make.leading.equalToSuperview().offset(30)
            //: make.trailing.equalToSuperview().offset(-30)
            make.trailing.equalToSuperview().offset(-30)
        }
    }
}

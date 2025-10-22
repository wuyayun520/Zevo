
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let constChallengeTitle:[UInt8] = [0xde,0xd9,0xde,0xc3,0x9f,0xd4,0xd8,0xd3,0xd2,0xc5,0x8d,0x9e,0x97,0xdf,0xd6,0xc4,0x97,0xd9,0xd8,0xc3,0x97,0xd5,0xd2,0xd2,0xd9,0x97,0xde,0xda,0xc7,0xdb,0xd2,0xda,0xd2,0xd9,0xc3,0xd2,0xd3]

private func depthDevice(bread num: UInt8) -> UInt8 {
    return num ^ 183
}

/*: "icon_faceverification_guide_ok" :*/
fileprivate let notiBeautifulKey:[Character] = ["i","c","o","n","_","f","a","c","e","v","e","r","i","f","i","c","a","t","i","o"]
fileprivate let user_capableMsg:[Character] = ["n","_","g","u","i","d","e","_","o","k"]

/*: "Submitted successfully, please wait \n patiently for review." :*/
fileprivate let main_lickUrl:[UInt8] = [0xbe,0x98,0x8f,0x80,0x84,0x99,0x99,0x88,0x89,0xcd,0x9e,0x98,0x8e,0x8e,0x88,0x9e,0x9e,0x8b,0x98,0x81,0x81,0x94,0xc1,0xcd,0x9d,0x81,0x88,0x8c,0x9e,0x88,0xcd,0x9a,0x8c,0x84,0x99,0xcd,0xe7,0xcd,0x9d,0x8c,0x99,0x84,0x88,0x83,0x99,0x81,0x94,0xcd,0x8b,0x82,0x9f,0xcd,0x9f,0x88,0x9b,0x84,0x88,0x9a,0xc3]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MilitaryThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFinalVerificationView: UIView {
class MilitaryThen: UIView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        detect()
        //: layoutSubViewsConstraints()
        track()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: constChallengeTitle.map{depthDevice(bread: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var successIconView: UIImageView = {
    lazy var successIconView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.BundleImageNamed(name: "icon_faceverification_guide_ok")
        imgView.image = UIImage.parentSet(name: (String(notiBeautifulKey) + String(user_capableMsg)))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var tipLab: UILabel = {
    lazy var tipLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Submitted successfully, please wait \n patiently for review.".localized
        lb.text = String(bytes: main_lickUrl.map{$0^237}, encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .antiquityColor()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 18)
        lb.font = .processAcross(type: .Regular, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - UI

//: extension TalkingFinalVerificationView {
extension MilitaryThen {
    //: func createSubViews() {
    func detect() {
        //: addSubview(successIconView)
        addSubview(successIconView)
        //: addSubview(tipLab)
        addSubview(tipLab)
    }

    //: func layoutSubViewsConstraints() {
    func track() {
        //: successIconView.snp.makeConstraints { make in
        successIconView.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(actualHeight(h: 102))
            make.top.equalTo(actualHeight(h: 102))
            //: make.width.height.equalTo(actualWidth(w: 71))
            make.width.height.equalTo(actualWidth(w: 71))
        }
        //: tipLab.snp.makeConstraints { make in
        tipLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(successIconView.snp.bottom).offset(actualHeight(h: 27))
            make.top.equalTo(successIconView.snp.bottom).offset(actualHeight(h: 27))
        }
    }
}

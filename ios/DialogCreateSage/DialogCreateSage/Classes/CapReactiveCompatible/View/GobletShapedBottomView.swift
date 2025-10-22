
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainEnoughLookName:[UInt8] = [0xc3,0xc4,0xc3,0xde,0x82,0xc9,0xc5,0xce,0xcf,0xd8,0x90,0x83,0x8a,0xc2,0xcb,0xd9,0x8a,0xc4,0xc5,0xde,0x8a,0xc8,0xcf,0xcf,0xc4,0x8a,0xc3,0xc7,0xda,0xc6,0xcf,0xc7,0xcf,0xc4,0xde,0xcf,0xce]

private func authorTalk(make num: UInt8) -> UInt8 {
    return num ^ 170
}

/*: "icon_ziliao_nandi_default" :*/
fileprivate let showFourStr:[Character] = ["i","c","o","n","_","z","i","l","i","a","o","_","n","a","n"]
fileprivate let kActMsg:[Character] = ["d","i","_","d"]
fileprivate let app_cloudName:String = "EFAULT"

/*: "iv_crush" :*/
fileprivate let app_slimId:[Character] = ["i","v","_","c","r","u","s","h"]

/*: "Crush" :*/
fileprivate let main_upperPath:[Character] = ["C","r","u","s","h"]

/*: "get json error" :*/
fileprivate let main_tailStemBirdData:[Character] = ["g","e","t"," ","j","s","o","n"," ","e","r","r"]
fileprivate let data_provideKey:String = "ceremony"

/*: "targetUid" :*/
fileprivate let data_earlyKey:String = "tasnap"

/*: "The other party has received your crush" :*/
fileprivate let noti_entireMenuMessage:[UInt8] = [0x81,0xbd,0xb0,0xf5,0xba,0xa1,0xbd,0xb0,0xa7,0xf5,0xa5,0xb4,0xa7,0xa1,0xac,0xf5,0xbd,0xb4,0xa6,0xf5,0xa7,0xb0,0xb6,0xb0,0xbc,0xa3,0xb0,0xb1,0xf5,0xac,0xba,0xa0,0xa7,0xf5,0xb6,0xa7,0xa0,0xa6,0xbd]

private func hundredProtection(added num: UInt8) -> UInt8 {
    return num ^ 213
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GobletShapedBottomView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/21.
//

//: import UIKit
import UIKit

//: class TalkingMomentPhotosBottomView: UIView {
class GobletShapedBottomView: UIView {
    //: var modelUid = ""
    var modelUid = ""
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: customUI()
        warning()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainEnoughLookName.map{authorTalk(make: $0)}, encoding: .utf8)!)
    }

    //: func customUI() {
    func warning() {
        //: self.backgroundColor = UIColor.RGBA(51, 51, 51, 0.8)
        self.backgroundColor = UIColor.pushDown(51, 51, 51, 0.8)

        //: guard CompositionReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard CompositionReactiveCompatible.share.appStatus == ColumnExInsetTarget.normal.rawValue else {
            // 审核模式隐藏
            //: self.crushBtn.isHidden = true
            self.crushBtn.isHidden = true
            //: return
            return
        }

        //: crushBtn.snp.makeConstraints { make in
        crushBtn.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(15)
            make.top.equalTo(15)
            //: make.size.equalTo(CGSize.init(width: 164, height: 40))
            make.size.equalTo(CGSize(width: 164, height: 40))
        }

        //: self.addSubview(crushPlayer)
        self.addSubview(crushPlayer)
        //: crushPlayer.snp.makeConstraints { make in
        crushPlayer.snp.makeConstraints { make in
            //: make.centerX.equalTo(crushBtn)
            make.centerX.equalTo(crushBtn)
            //: make.bottom.equalTo(crushBtn.snp.bottom)
            make.bottom.equalTo(crushBtn.snp.bottom)
            //: make.size.equalTo(CGSize(width: 70, height: 100))
            make.size.equalTo(CGSize(width: 70, height: 100))
        }
    }

    //: lazy var crushBtn: TalkingButton = {
    lazy var crushBtn: AfterView = {
        //: let btn = TalkingButton.init()
        let btn = AfterView()
        //: btn.setBackgroundImage(UIImage.BundleImageNamed(name: "icon_ziliao_nandi_default"), for: .normal)
        btn.setBackgroundImage(UIImage.parentSet(name: (String(showFourStr) + String(kActMsg) + app_cloudName.lowercased())), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "iv_crush"), for: .normal)
        btn.setImage(UIImage.parentSet(name: (String(app_slimId))), for: .normal)
        //: btn.setTitle("Crush".localized, for: .normal)
        btn.setTitle((String(main_upperPath)).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 18)
        btn.titleLabel?.font = UIFont.counteraction(fontSize: 18)
        //: btn.addTarget(self, action: #selector(crushBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(oppressClick), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var crushPlayer: SVGAPlayer = {
    lazy var crushPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 1
        player.loops = 1
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: player.delegate = self
        player.delegate = self
        //: return player
        return player
        //: }()
    }()
}

//: extension TalkingMomentPhotosBottomView: SVGAPlayerDelegate {
extension GobletShapedBottomView: SVGAPlayerDelegate {
    //: @objc func crushBtnClick () {
    @objc func oppressClick() {
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Crush)
        let url = AuthorReactiveCompatible.default.typeTo(type: .Crush)
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
                //: self.crushPlayer.videoItem = videoItem
                self.crushPlayer.videoItem = videoItem
                //: self.crushPlayer.startAnimation()
                self.crushPlayer.startAnimation()
                //: self.crushBtn.isHidden = true
                self.crushBtn.isHidden = true
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(main_tailStemBirdData) + data_provideKey.replacingOccurrences(of: "ceremony", with: "or")))
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["targetUid"] = modelUid
        dict[(data_earlyKey.replacingOccurrences(of: "snap", with: "rg") + "etUid")] = modelUid

        //: TalkingMomentRequestTool.req_CrushSend(params: dict) { succeed, result, errorModel in
        ContentWeeklyReactiveCompatible.crushWithSpark(params: dict) { succeed, _, errorModel in
            //: if succeed {
            if succeed {
                //: self.func__showStatusBarNormrlMsg(showMsg: "The other party has received your crush".localized)
                self.allowMsg(showMsg: String(bytes: noti_entireMenuMessage.map{hundredProtection(added: $0)}, encoding: .utf8)!.localized)
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.foolishness(showMsg: errorModel!.errorMsg)
            }
        }
    }

    //: func svgaPlayerDidFinishedAnimation(_ player: SVGAPlayer!) {
    func svgaPlayerDidFinishedAnimation(_: SVGAPlayer!) {
        //: self.crushPlayer.isHidden = true
        self.crushPlayer.isHidden = true
    }
}

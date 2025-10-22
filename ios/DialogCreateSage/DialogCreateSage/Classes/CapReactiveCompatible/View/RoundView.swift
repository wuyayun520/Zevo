
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let show_backgroundTitle:[UInt8] = [0x13,0x18,0x13,0x1e,0xd2,0xd,0x19,0xe,0xf,0x1c,0xe4,0xd3,0xca,0x12,0xb,0x1d,0xca,0x18,0x19,0x1e,0xca,0xc,0xf,0xf,0x18,0xca,0x13,0x17,0x1a,0x16,0xf,0x17,0xf,0x18,0x1e,0xf,0xe]

fileprivate func alreadyOriginal(next num: UInt8) -> UInt8 {
    let value = Int(num) + 86
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_chat_start" :*/
fileprivate let user_linkStr:[Character] = ["i","c","o","n","_","c"]
fileprivate let app_reminderKey:[Character] = ["h","a","t","_","s","t","a","r","t"]

/*: "#752FE9" :*/
fileprivate let data_directMessage:[Character] = ["#","7","5","2","F","E","9"]

/*: "#F5F5F5" :*/
fileprivate let notiUpStr:String = "vertical speak lite remain digital#F5F5F5"

/*: "btn_feed_dianzan_nor" :*/
fileprivate let const_barName:[UInt8] = [0xca,0xdc,0xd6,0xc7,0xce,0xcd,0xcd,0xcc,0xc7,0xcc,0xd1,0xc9,0xd6,0xe2,0xc9,0xd6,0xc7,0xd6,0xd7,0xda]

fileprivate func historyMotivation(toward num: UInt8) -> UInt8 {
    let value = Int(num) + 152
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_feed_reply_nor" :*/
fileprivate let constDotName:String = "btn_gift sink peer equity"
fileprivate let user_holdMessage:String = "_repstrip imagination establish security black"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RoundView.swift
//  DialogCreateSage
//
//  Created by DouXiu on 2024/7/25.
//

//: import UIKit
import UIKit

//: class TalkingMomentNewsFeedCell: UITableViewCell {
class RoundView: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: setupSubviews()
        unAgency()
        //: setupSubViewsConstraint()
        judge()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: show_backgroundTitle.map{alreadyOriginal(next: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var headImgView: UIImageView = {
    private lazy var headImgView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.layer.cornerRadius = 16
        img.layer.cornerRadius = 16
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var iconBorder: UIButton = {
    private lazy var iconBorder: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var previewImgView: UIImageView = {
    private lazy var previewImgView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.layer.cornerRadius = 6
        img.layer.cornerRadius = 6
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: lazy var playView: UIImageView = {
    lazy var playView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.image = UIImage.BundleImageNamed(name: "icon_chat_start")
        img.image = UIImage.parentSet(name: (String(user_linkStr) + String(app_reminderKey)))
        //: img.isHidden = true
        img.isHidden = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var nickNameLab: UILabel = {
    private lazy var nickNameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.antiquityColor()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 16)
        lab.font = UIFont.counteraction(fontSize: 16)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var atNickNameLab: UILabel = {
    private lazy var atNickNameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor(hex: "#752FE9")
        lab.textColor = UIColor(hex: (String(data_directMessage)))
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 16)
        lab.font = UIFont.joinSize(fontSize: 16)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var statusIcon: UIImageView = {
    private lazy var statusIcon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var timeLab: UILabel = {
    private lazy var timeLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appValueDetailColor()
        lab.textColor = UIColor.pointOfTotalersection()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 12)
        lab.font = UIFont.counteraction(fontSize: 12)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var replyContentLab: UILabel = {
    private lazy var replyContentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appValueColor()
        lab.textColor = UIColor.submaxilla()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 16)
        lab.font = UIFont.joinSize(fontSize: 16)
        //: lab.numberOfLines = 2
        lab.numberOfLines = 2
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var mainContentView: UIView = {
    private lazy var mainContentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor(hex: "#F5F5F5")
        view.backgroundColor = UIColor(hex: (String(notiUpStr.suffix(7))))
        //: view.layer.cornerRadius = 14
        view.layer.cornerRadius = 14
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var mainContentLab: UILabel = {
    private lazy var mainContentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appValueDetailColor()
        lab.textColor = UIColor.pointOfTotalersection()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.joinSize(fontSize: 14)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var line: UIView = {
    private lazy var line: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor(hex: "#F5F5F5")
        view.backgroundColor = UIColor(hex: (String(notiUpStr.suffix(7))))
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMomentNewsFeedCell {
extension RoundView {
    /// 刷新cell
    //: func refreshCell(_ model: TalkingRemindListModel) {
    func behindCell(_ model: GenModelType) {
        //: headImgView.setUrlImage(urlStr: model.headPic, placeImg: UIImage.placeSquareBigImgBanner())
        headImgView.funReply(urlStr: model.headPic, placeImg: UIImage.constituent())
        //: if !model.headPicFrame.isEmpty {
        if !model.headPicFrame.isEmpty {
            //: iconBorder.isHidden = false
            iconBorder.isHidden = false
            //: iconBorder.setHeadFrameUrlImage(urlStr: model.headPicFrame)
            iconBorder.broadMe(urlStr: model.headPicFrame)
            //: } else {
        } else {
            //: iconBorder.isHidden = true
            iconBorder.isHidden = true
        }
        //: previewImgView.setUrlImage(urlStr: model.imageUrl)
        previewImgView.agreeFinish(urlStr: model.imageUrl)
        //: playView.isHidden = (model.momentType != 2)
        playView.isHidden = (model.momentType != 2)

        //: nickNameLab.text = model.replyNickname
        nickNameLab.text = model.replyNickname
        //: atNickNameLab.isHidden = (model.type != 2)
        atNickNameLab.isHidden = (model.type != 2)
        //: atNickNameLab.text = "@\(model.nickname)"
        atNickNameLab.text = "@\(model.nickname)"
        //: let typeImgStr = (model.type == 0) ? "btn_feed_dianzan_nor":"btn_feed_reply_nor"
        let typeImgStr = (model.type == 0) ? String(bytes: const_barName.map{historyMotivation(toward: $0)}, encoding: .utf8)! : (String(constDotName.prefix(4)) + "feed" + String(user_holdMessage.prefix(4)) + "ly_nor")
        //: statusIcon.image = UIImage.BundleImageNamed(name: typeImgStr)
        statusIcon.image = UIImage.parentSet(name: typeImgStr)
        //: timeLab.text = model.addTime
        timeLab.text = model.addTime
        //: replyContentLab.isHidden = (model.type == 0)
        replyContentLab.isHidden = (model.type == 0)
        //: replyContentLab.text = model.replyContent
        replyContentLab.text = model.replyContent
        //: mainContentLab.text = model.content
        mainContentLab.text = model.content
        //: mainContentView.snp.remakeConstraints { make in
        mainContentView.snp.remakeConstraints { make in
            //: if model.type == 0 {
            if model.type == 0 {
                //: make.top.equalTo(statusIcon.snp.bottom).offset(10)
                make.top.equalTo(statusIcon.snp.bottom).offset(10)
                //: } else {
            } else {
                //: make.top.equalTo(replyContentLab.snp.bottom).offset(10)
                make.top.equalTo(replyContentLab.snp.bottom).offset(10)
            }
            //: make.height.equalTo(model.content.isEmptyString ? 0 : 28)
            make.height.equalTo(model.content.isEmptyString ? 0 : 28)
            //: make.leading.equalTo(nickNameLab)
            make.leading.equalTo(nickNameLab)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
        }
    }
}

// MARK: - Layout

//: extension TalkingMomentNewsFeedCell {
extension RoundView {
    //: private func setupSubviews() {
    private func unAgency() {
        //: contentView.addSubview(headImgView)
        contentView.addSubview(headImgView)
        //: contentView.addSubview(iconBorder)
        contentView.addSubview(iconBorder)
        //: contentView.addSubview(previewImgView)
        contentView.addSubview(previewImgView)
        //: previewImgView.addSubview(playView)
        previewImgView.addSubview(playView)

        //: contentView.addSubview(nickNameLab)
        contentView.addSubview(nickNameLab)
        //: contentView.addSubview(atNickNameLab)
        contentView.addSubview(atNickNameLab)
        //: contentView.addSubview(statusIcon)
        contentView.addSubview(statusIcon)
        //: contentView.addSubview(timeLab)
        contentView.addSubview(timeLab)
        //: contentView.addSubview(replyContentLab)
        contentView.addSubview(replyContentLab)
        //: contentView.addSubview(mainContentView)
        contentView.addSubview(mainContentView)
        //: mainContentView.addSubview(mainContentLab)
        mainContentView.addSubview(mainContentLab)
        //: contentView.addSubview(line)
        contentView.addSubview(line)
    }

    //: private func setupSubViewsConstraint() {
    private func judge() {
        //: headImgView.snp.makeConstraints { make in
        headImgView.snp.makeConstraints { make in
            //: make.top.equalTo(18)
            make.top.equalTo(18)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.width.height.equalTo(32)
            make.width.height.equalTo(32)
        }
        //: iconBorder.snp.makeConstraints { make in
        iconBorder.snp.makeConstraints { make in
            //: make.center.equalTo(headImgView)
            make.center.equalTo(headImgView)
            //: make.width.height.equalTo(41.5)
            make.width.height.equalTo(41.5)
        }
        //: previewImgView.snp.makeConstraints { make in
        previewImgView.snp.makeConstraints { make in
            //: make.top.equalTo(16)
            make.top.equalTo(16)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.width.height.equalTo(46)
            make.width.height.equalTo(46)
        }
        //: playView.snp.makeConstraints { make in
        playView.snp.makeConstraints { make in
            //: make.height.width.equalTo(18)
            make.height.width.equalTo(18)
            //: make.center.equalTo(previewImgView)
            make.center.equalTo(previewImgView)
        }
        //: nickNameLab.snp.makeConstraints { make in
        nickNameLab.snp.makeConstraints { make in
            //: make.top.equalTo(headImgView)
            make.top.equalTo(headImgView)
            //: make.leading.equalTo(headImgView.snp.trailing).offset(10)
            make.leading.equalTo(headImgView.snp.trailing).offset(10)
            //: make.width.lessThanOrEqualTo((ScreenWidth-128)/2)
            make.width.lessThanOrEqualTo((user_needValue - 128) / 2)
        }
        //: atNickNameLab.snp.makeConstraints { make in
        atNickNameLab.snp.makeConstraints { make in
            //: make.top.equalTo(nickNameLab)
            make.top.equalTo(nickNameLab)
            //: make.leading.equalTo(nickNameLab.snp.trailing).offset(4)
            make.leading.equalTo(nickNameLab.snp.trailing).offset(4)
            //: make.width.lessThanOrEqualTo((ScreenWidth-128)/2)
            make.width.lessThanOrEqualTo((user_needValue - 128) / 2)
        }
        //: statusIcon.snp.makeConstraints { make in
        statusIcon.snp.makeConstraints { make in
            //: make.leading.equalTo(nickNameLab)
            make.leading.equalTo(nickNameLab)
            //: make.top.equalTo(nickNameLab.snp.bottom).offset(7)
            make.top.equalTo(nickNameLab.snp.bottom).offset(7)
            //: make.width.height.equalTo(15)
            make.width.height.equalTo(15)
        }
        //: timeLab.snp.makeConstraints { make in
        timeLab.snp.makeConstraints { make in
            //: make.leading.equalTo(statusIcon.snp.trailing).offset(4)
            make.leading.equalTo(statusIcon.snp.trailing).offset(4)
            //: make.centerY.equalTo(statusIcon)
            make.centerY.equalTo(statusIcon)
        }
        //: replyContentLab.snp.makeConstraints { make in
        replyContentLab.snp.makeConstraints { make in
            //: make.top.equalTo(statusIcon.snp.bottom).offset(10)
            make.top.equalTo(statusIcon.snp.bottom).offset(10)
            //: make.leading.equalTo(nickNameLab)
            make.leading.equalTo(nickNameLab)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
        }
        //: mainContentView.snp.makeConstraints { make in
        mainContentView.snp.makeConstraints { make in
            //: make.top.equalTo(replyContentLab.snp.bottom).offset(10)
            make.top.equalTo(replyContentLab.snp.bottom).offset(10)
            //: make.leading.equalTo(nickNameLab)
            make.leading.equalTo(nickNameLab)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }
        //: mainContentLab.snp.makeConstraints { make in
        mainContentLab.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }
        //: line.snp.makeConstraints { make in
        line.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.top.equalTo(mainContentView.snp.bottom).offset(20)
            make.top.equalTo(mainContentView.snp.bottom).offset(20)
            //: make.height.equalTo(1)
            make.height.equalTo(1)
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}


//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let notiSeatKey:[UInt8] = [0xf6,0xfb,0xf6,0x1,0xb5,0xf0,0xfc,0xf1,0xf2,0xff,0xc7,0xb6,0xad,0xf5,0xee,0x0,0xad,0xfb,0xfc,0x1,0xad,0xef,0xf2,0xf2,0xfb,0xad,0xf6,0xfa,0xfd,0xf9,0xf2,0xfa,0xf2,0xfb,0x1,0xf2,0xf1]

fileprivate func everyoneGroundResent(here num: UInt8) -> UInt8 {
    let value = Int(num) + 115
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FormalMsgCell.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/2/28.
//

//: import UIKit
import UIKit

//: class TalkingChatGiftMsgCell: TalkingChatBaseMsgCell {
class FormalMsgCell: FoundViewCell {
    //: var giftData: OpenceMoreCellData?
    var giftData: OpenceMoreCellData?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: self.bubbleImgView.addSubview(giftContentLab)
        self.bubbleImgView.addSubview(giftContentLab)
        //: self.bubbleImgView.addSubview(giftImgView)
        self.bubbleImgView.addSubview(giftImgView)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: notiSeatKey.map{everyoneGroundResent(here: $0)}, encoding: .utf8)!)
    }

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    //: private lazy var giftContentLab: YYLabel = {
    private lazy var giftContentLab: YYLabel = {
        //: let label = YYLabel.init()
        let label = YYLabel()
        //: label.textColor = UIColor.appTitleColor()
        label.textColor = UIColor.antiquityColor()
        //: label.font = UIFont.pingfangRugularFont(fontSize: 17)
        label.font = UIFont.joinSize(fontSize: 17)
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: return label
        return label
        //: }()
    }()

    //: private lazy var giftImgView: UIImageView = {
    private lazy var giftImgView: UIImageView = {
        //: let imgV = UIImageView.init()
        let imgV = UIImageView()
        //: imgV.contentMode = .scaleAspectFit
        imgV.contentMode = .scaleAspectFit
        //: return imgV
        return imgV
        //: }()
    }()
}

//: extension TalkingChatGiftMsgCell {
extension FormalMsgCell {
    //: override func fill(with data: TCommonCellData) {
    override func hitch(with data: StrainThen) {
        //: super.fill(with: data)
        super.hitch(with: data)
        //: self.giftData = data as? OpenceMoreCellData
        self.giftData = data as? OpenceMoreCellData
        //: guard let giftData = self.giftData else { return }
        guard let giftData = self.giftData else { return }
        //: let gift = giftData.msgModel.gift
        let gift = giftData.msgModel.gift
        //: let imgPreview = gift.imgPreview
        let imgPreview = gift.imgPreview
        //: self.giftImgView.setUrlImage(urlStr: imgPreview)
        self.giftImgView.agreeFinish(urlStr: imgPreview)
        //: self.giftContentLab.attributedText = giftData.attributedString
        self.giftContentLab.attributedText = giftData.attributedString
    }

    //: override public func updateConstraints() {
    override public func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()
        //: guard let giftData = self.giftData else { return }
        guard let giftData = self.giftData else { return }

        //: if self.messageData?.direction == .MsgDirectionIncoming {
        if self.messageData?.direction == .MsgDirectionIncoming {
            //: self.giftContentLab.snp.remakeConstraints { make in
            self.giftContentLab.snp.remakeConstraints { make in
                //: make.top.equalTo(giftData.cellLayout.bubbleInsets.top)
                make.top.equalTo(giftData.cellLayout.bubbleInsets.top)
                //: make.bottom.equalTo(-giftData.cellLayout.bubbleInsets.bottom)
                make.bottom.equalTo(-giftData.cellLayout.bubbleInsets.bottom)
                //: make.leading.equalTo(giftData.cellLayout.bubbleInsets.left)
                make.leading.equalTo(giftData.cellLayout.bubbleInsets.left)
                //: make.trailing.equalToSuperview().offset(-70)
                make.trailing.equalToSuperview().offset(-70)
                //: make.size.equalTo(giftData.textSize)
                make.size.equalTo(giftData.textSize)
            }

            //: self.giftImgView.snp.remakeConstraints { make in
            self.giftImgView.snp.remakeConstraints { make in
                //: make.trailing.equalToSuperview().offset(-14)
                make.trailing.equalToSuperview().offset(-14)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.height.equalTo(44)
                make.width.height.equalTo(44)
            }

            //: } else {
        } else {
            //: self.giftImgView.snp.remakeConstraints { make in
            self.giftImgView.snp.remakeConstraints { make in
                //: make.leading.equalToSuperview().offset(14)
                make.leading.equalToSuperview().offset(14)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.height.equalTo(44)
                make.width.height.equalTo(44)
            }

            //: self.giftContentLab.snp.remakeConstraints { make in
            self.giftContentLab.snp.remakeConstraints { make in
                //: make.top.equalTo(giftData.cellLayout.bubbleInsets.top)
                make.top.equalTo(giftData.cellLayout.bubbleInsets.top)
                //: make.bottom.equalTo(-giftData.cellLayout.bubbleInsets.bottom)
                make.bottom.equalTo(-giftData.cellLayout.bubbleInsets.bottom)
                //: make.leading.equalToSuperview().offset(70)
                make.leading.equalToSuperview().offset(70)
                //: make.trailing.equalToSuperview().offset(-giftData.cellLayout.bubbleInsets.right)
                make.trailing.equalToSuperview().offset(-giftData.cellLayout.bubbleInsets.right)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.size.equalTo(giftData.textSize)
                make.size.equalTo(giftData.textSize)
            }
        }
    }
}

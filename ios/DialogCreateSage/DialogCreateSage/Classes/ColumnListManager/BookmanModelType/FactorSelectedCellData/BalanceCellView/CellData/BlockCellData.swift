
//: Declare String Begin

/*: "bg_talk_other" :*/
fileprivate let const_pressName:String = "bg_talive change"
fileprivate let mainLandBankMsg:String = "sum"

/*: "bg_talk_me" :*/
fileprivate let userAfterMsg:[Character] = ["b","g","_","t","a","l","k","_","m","e"]

/*: "init(coder:) has not been implemented" :*/
fileprivate let userBorderReceiveFormat:[UInt8] = [0x90,0x97,0x90,0x8d,0xd1,0x9a,0x96,0x9d,0x9c,0x8b,0xc3,0xd0,0xd9,0x91,0x98,0x8a,0xd9,0x97,0x96,0x8d,0xd9,0x9b,0x9c,0x9c,0x97,0xd9,0x90,0x94,0x89,0x95,0x9c,0x94,0x9c,0x97,0x8d,0x9c,0x9d]

private func realmGiven(require num: UInt8) -> UInt8 {
    return num ^ 249
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BlockCellData.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/1.
//

//: import UIKit
import UIKit

//: @objcMembers public class TalkingChatMsgBaseCellData: TwoCellData {
@objcMembers public class BlockCellData: TwoCellData {
    //: var bubbleTop: CGFloat = 10
    var bubbleTop: CGFloat = 10
    //: var bubbleImg: UIImage?
    var bubbleImg: UIImage?

    //: override public init(direction: TMsgDirection) {
    override public init(direction: FindExpressionConvertible) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: if direction == .MsgDirectionIncoming {
        if direction == .MsgDirectionIncoming {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_talk_other")
            self.bubbleImg = UIImage.imageCorner(name: (String(const_pressName.prefix(4)) + "alk_othe" + mainLandBankMsg.replacingOccurrences(of: "sum", with: "r")))
            //: self.cellLayout = MessageCellLayout.incommingTextMessageLayout()
            self.cellLayout = CellOuterThen.withoutMessage()
            //: } else {
        } else {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_talk_me")
            self.bubbleImg = UIImage.imageCorner(name: (String(userAfterMsg)))
            //: self.cellLayout = MessageCellLayout.outgoingTextMessageLayout()
            self.cellLayout = CellOuterThen.switchceClick()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: userBorderReceiveFormat.map{realmGiven(require: $0)}, encoding: .utf8)!)
    }
}


//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let user_describeSortFootballStr:[UInt8] = [0x4b,0x4c,0x4b,0x56,0xa,0x41,0x4d,0x46,0x47,0x50,0x18,0xb,0x2,0x4a,0x43,0x51,0x2,0x4c,0x4d,0x56,0x2,0x40,0x47,0x47,0x4c,0x2,0x4b,0x4f,0x52,0x4e,0x47,0x4f,0x47,0x4c,0x56,0x47,0x46]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MidReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/2.
//

//: import UIKit
import UIKit

//: @objcMembers public class MidReactiveCompatible: TalkingChatMsgBaseCellData {
@objcMembers public class MidReactiveCompatible: BlockCellData {
    //: public override var msgModel: AbTalkingChatMsgBaseModel {
    override public var msgModel: SpotModel {
        //: get { return super.msgModel }
        get { return super.msgModel }
        //: set { super.msgModel = newValue }
        set { super.msgModel = newValue }
    }

    //: override public init(direction: TMsgDirection) {
    override public init(direction: FindExpressionConvertible) {
        //: super.init(direction: direction)
        super.init(direction: direction)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: user_describeSortFootballStr.map{$0^34}, encoding: .utf8)!)
    }

    //: public override func contentSize() ->CGSize {
    override public func secretoryPhase() -> CGSize {
        //: let audioWidth = Float(self.voiceModel.audioLength)*2.4 + 90
        let audioWidth = Float(self.voiceModel.audioLength) * 2.4 + 90
        //: return CGSize.init(width: Int(audioWidth), height: 42)
        return CGSize(width: Int(audioWidth), height: 42)
    }

    //: @objc public lazy var voiceModel: TalkingVoiceMsgPlayModel = {
    public lazy var voiceModel: MidPlayModel = {
        //: var model = TalkingVoiceMsgPlayModel()
        var model = MidPlayModel()
        //: return model
        return model
        //: }()
    }()
}

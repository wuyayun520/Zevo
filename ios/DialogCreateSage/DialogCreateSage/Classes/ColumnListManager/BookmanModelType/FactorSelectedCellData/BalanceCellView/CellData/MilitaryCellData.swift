
//: Declare String Begin

/*: ".png" :*/
fileprivate let const_nameMsg:String = "con exposure count child.png"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MilitaryCellData.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/1.
//

//: import UIKit
import UIKit

//: @objcMembers public class MilitaryCellData: TalkingChatMsgBaseCellData {
@objcMembers public class MilitaryCellData: BlockCellData {
    //: @objc public var imageUrl: String?
    public var imageUrl: String?
    //: var imageData: UIImage?
    var imageData: UIImage?

    //: public override var msgModel: AbTalkingChatMsgBaseModel {
    override public var msgModel: SpotModel {
        //: get {
        get {
            //: return super.msgModel
            return super.msgModel
        }
        //: set {
        set {
            //: super.msgModel = newValue
            super.msgModel = newValue
            //: self.imageUrl = self.msgModel.msgInfo.imageUri
            self.imageUrl = self.msgModel.msgInfo.imageUri
            //: if !self.msgModel.msgInfo.imageData.isEmptyString {
            if !self.msgModel.msgInfo.imageData.isEmptyString {
                //: self.imageData = UIImage.base64EncodeImageRestore(imageData: self.msgModel.msgInfo.imageData)
                self.imageData = UIImage.highlight(imageData: self.msgModel.msgInfo.imageData)
            }
        }
    }

    //: public override func contentSize() -> CGSize {
    override public func secretoryPhase() -> CGSize {
        //: return CGSize(width: 120, height: 120)
        return CGSize(width: 120, height: 120)
    }

    //: static func getChatImagePath(image: UIImage) -> String {
    static func overlook(image: UIImage) -> String {
        //: let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
        let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
        //: let filePath = (libraryPath as NSString).appendingPathComponent(imageFileName)
        let filePath = (libraryPath as NSString).appendingPathComponent(show_blockTopUrl)
        //: if !FileManager.default.fileExists(atPath: filePath) {
        if !FileManager.default.fileExists(atPath: filePath) {
            //: try? FileManager.default.createDirectory(atPath: filePath, withIntermediateDirectories: true)
            try? FileManager.default.createDirectory(atPath: filePath, withIntermediateDirectories: true)
        }
        //: let interval = Date().timeIntervalSince1970 * 1000
        let interval = Date().timeIntervalSince1970 * 1000
        //: let imageName = "\(Int(interval))_" + CompositionReactiveCompatible.share.loginUserMode.userID + ".png"
        let imageName = "\(Int(interval))_" + CompositionReactiveCompatible.share.loginUserMode.userID + (String(const_nameMsg.suffix(4)))
        //: let imagePath = (filePath as NSString).appendingPathComponent(imageName)
        let imagePath = (filePath as NSString).appendingPathComponent(imageName)
        //: let imageData = UIImage.compressImage(image, toFileSize: 2*1024)
        let imageData = UIImage.acquire(image, background: 2 * 1024)
        //: FileManager.default.createFile(atPath: imagePath, contents: imageData)
        FileManager.default.createFile(atPath: imagePath, contents: imageData)
        //: return imagePath
        return imagePath
    }
}

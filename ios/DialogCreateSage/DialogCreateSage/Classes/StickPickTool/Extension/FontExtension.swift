
//: Declare String Begin

/*: "PingFangSC-Regular" :*/
fileprivate let app_certainStr:String = "cap another fair reducePing"
fileprivate let const_humanName:[Character] = ["R","e","g","u","l","a","r"]

/*: "PingFangSC-Medium" :*/
fileprivate let noti_chinUrl:String = "PingFexit analysis"
fileprivate let show_resultId:String = "edipanelm"

/*: "PingFangSC-Semibold" :*/
fileprivate let noti_myHeavyFormat:[Character] = ["P","i","n","g","F","a","n"]
fileprivate let app_displayMsg:String = "gSC-whether behavior zz personal"

/*: "PingFangSC-Thin" :*/
fileprivate let kEnablelyMsg:[Character] = ["P","i","n","g","F","a","n","g","S","C","-","T"]
fileprivate let constInstanceTitle:String = "hidetail"

/*: "PingFangSC-Light" :*/
fileprivate let main_egoMsg:[Character] = ["P","i","n","g","F","a","n","g","S","C","-"]
fileprivate let k_canvasMsg:[Character] = ["L","i","g","h","t"]

/*: "PingFangSC-Ultralight" :*/
fileprivate let appFingerId:String = "translation visible authorPing"
fileprivate let main_situationKey:String = "player logSC-Ult"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FontExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/25.
//

//: import Foundation
import Foundation
//: import UIKit
import UIKit

//: extension UIFont {
public extension UIFont {
    //: static func pingfangFont(type: PingFangFontType, fontSize: CGFloat) -> UIFont {
    internal static func processAcross(type: ExFontType, fontSize: CGFloat) -> UIFont {
        //: var font: UIFont?
        var font: UIFont?
        //: switch type {
        switch type {
        //: case .Regular:
        case .Regular:
            //: font = UIFont(name: "PingFangSC-Regular", size: fontSize)
            font = UIFont(name: (String(app_certainStr.suffix(4)) + "FangSC-" + String(const_humanName)), size: fontSize)
        //: break
        //: case .Medium:
        case .Medium:
            //: font = UIFont(name: "PingFangSC-Medium", size: fontSize)
            font = UIFont(name: (String(noti_chinUrl.prefix(5)) + "angSC-M" + show_resultId.replacingOccurrences(of: "panel", with: "u")), size: fontSize)
        //: break
        //: case .Semibold:
        case .Semibold:
            //: font = UIFont(name: "PingFangSC-Semibold", size: fontSize)
            font = UIFont(name: (String(noti_myHeavyFormat) + String(app_displayMsg.prefix(4)) + "Semibold"), size: fontSize)
        //: break
        //: case .Thin:
        case .Thin:
            //: font = UIFont(name: "PingFangSC-Thin", size: fontSize)
            font = UIFont(name: (String(kEnablelyMsg) + constInstanceTitle.replacingOccurrences(of: "detail", with: "n")), size: fontSize)
        //: break
        //: case .Light:
        case .Light:
            //: font = UIFont(name: "PingFangSC-Light", size: fontSize)
            font = UIFont(name: (String(main_egoMsg) + String(k_canvasMsg)), size: fontSize)
        //: break
        //: case .Ultralight:
        case .Ultralight:
            //: font = UIFont(name: "PingFangSC-Ultralight", size: fontSize)
            font = UIFont(name: (String(appFingerId.suffix(4)) + "Fang" + String(main_situationKey.suffix(6)) + "ralight"), size: fontSize)
            //: break
        }
        //: return font ?? UIFont.systemFont(ofSize: fontSize)
        return font ?? UIFont.systemFont(ofSize: fontSize)
    }

    //: @objc static public func pingfangRugularFont(fontSize: CGFloat) -> UIFont {
    @objc static func joinSize(fontSize: CGFloat) -> UIFont {
        //: return UIFont.pingfangFont(type: .Regular, fontSize: fontSize)
        return UIFont.processAcross(type: .Regular, fontSize: fontSize)
    }

    //: @objc static public func pingfangMediumFont(fontSize: CGFloat) -> UIFont {
    @objc static func counteraction(fontSize: CGFloat) -> UIFont {
        //: return UIFont.pingfangFont(type: .Medium, fontSize: fontSize)
        return UIFont.processAcross(type: .Medium, fontSize: fontSize)
    }
}

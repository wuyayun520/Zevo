
//: Declare String Begin

/*: "#8A79F9" :*/
fileprivate let data_whetherSortBottomFormat:String = "lab without#8A79F9"

/*: "#E6BD8B" :*/
fileprivate let mainSourceGraduateMsg:[Character] = ["#","E","6","B","D","8","B"]

/*: "#F5F5F8" :*/
fileprivate let data_livingValue:[Character] = ["#","F","5","F","5","F","8"]

/*: "333333" :*/
fileprivate let show_blanketFallData:String = "333333"

/*: "FF2348" :*/
fileprivate let show_enoughText:[Character] = ["F","F","2","3","4","8"]

/*: "666666" :*/
fileprivate let constCharacteristicData:String = "goodgoodgood"

/*: "999999" :*/
fileprivate let main_draftTitle:String = "dominantdominantdominant"

/*: "7C74F4" :*/
fileprivate let dataAssistantPath:[Character] = ["7"]
fileprivate let notiOrangeKey:String = "C74enterprise4"

/*: "B97AF8" :*/
fileprivate let userMentionTitle:String = "b97af"
fileprivate let kConditionData:String = "equally"

/*: "#FF5C9D" :*/
fileprivate let showCancelMessage:[Character] = ["#","F","F","5","C","9","D"]

/*: "#EEEEEE" :*/
fileprivate let userCarveData:String = "#EEEEhistory phone local frank"
fileprivate let user_mixPath:String = "burnburn"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import Foundation
import Foundation
//: import UIKit
import UIKit

//: extension UIColor {
extension UIColor {
    //: @objc convenience init?(hex: String) {
    @objc convenience init?(hex: String) {
        //: var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        //: hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        //: var rgb: UInt64 = 0
        var rgb: UInt64 = 0
        //: var r: CGFloat = 0.0
        var r: CGFloat = 0.0
        //: var g: CGFloat = 0.0
        var g: CGFloat = 0.0
        //: var b: CGFloat = 0.0
        var b: CGFloat = 0.0
        //: var a: CGFloat = 1.0
        var a: CGFloat = 1.0

        //: let length = hexSanitized.count
        let length = hexSanitized.count
        //: guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }
        guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }

        //: if length == 6 {
        if length == 6 {
            //: r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            //: g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            //: b = CGFloat(rgb & 0x0000FF) / 255.0
            b = CGFloat(rgb & 0x0000FF) / 255.0
            //: } else if length == 8 {
        } else if length == 8 {
            //: r = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
            r = CGFloat((rgb & 0xFF00_0000) >> 24) / 255.0
            //: g = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
            g = CGFloat((rgb & 0x00FF_0000) >> 16) / 255.0
            //: b = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
            b = CGFloat((rgb & 0x0000_FF00) >> 8) / 255.0
            //: a = CGFloat(rgb & 0x000000FF) / 255.0
            a = CGFloat(rgb & 0x0000_00FF) / 255.0
            //: } else {
        } else {
            //: return nil
            return nil
        }
        //: self.init(red: r, green: g, blue: b, alpha: a)
        self.init(red: r, green: g, blue: b, alpha: a)
    }

    //: class func RGBA(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
    class func pushDown(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
        //: return UIColor.init(red: (r/255.0), green: (g/255.0), blue: (b/255.0), alpha: a)
        return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
    }

    //: @objc static func appThemeColor() -> UIColor {
    @objc static func rawMonthCombine() -> UIColor {
        //: return UIColor.init(hex: "#8A79F9")!
        return UIColor(hex: (String(data_whetherSortBottomFormat.suffix(7))))!
    }

    //: @objc static func userVipColor() -> UIColor {
    @objc static func colorful() -> UIColor {
        //: return UIColor(hex: "#E6BD8B")!
        return UIColor(hex: (String(mainSourceGraduateMsg)))!
    }

    //: @objc static func appBgColor() -> UIColor {
    @objc static func wateringPot() -> UIColor {
        //: return UIColor.init(hex: "#F5F5F8")!
        return UIColor(hex: (String(data_livingValue)))!
    }

    //: @objc static func appTitleColor() ->UIColor {
    @objc static func antiquityColor() -> UIColor {
        //: return UIColor.init(hex: "333333")!
        return UIColor(hex: (show_blanketFallData.capitalized))!
    }

    //: @objc static func msgTipsColor() ->UIColor {
    @objc static func spendColor() -> UIColor {
        //: return UIColor.init(hex: "FF2348")!
        return UIColor(hex: (String(show_enoughText)))!
    }

    //: @objc static func appValueColor() ->UIColor {
    @objc static func submaxilla() -> UIColor {
        //: return UIColor.init(hex: "666666")!
        return UIColor(hex: (constCharacteristicData.replacingOccurrences(of: "good", with: "66")))!
    }

    //: @objc static func appValueDetailColor() ->UIColor {
    @objc static func pointOfTotalersection() -> UIColor {
        //: return UIColor.init(hex: "999999")!
        return UIColor(hex: (main_draftTitle.replacingOccurrences(of: "dominant", with: "99")))!
    }

    //: class func appGradientColor() ->[CGColor] {
    class func sumerpretation() -> [CGColor] {
        //: return [UIColor.init(hex: "7C74F4")!.cgColor, UIColor.init(hex: "B97AF8")!.cgColor]
        return [UIColor(hex: (String(dataAssistantPath) + notiOrangeKey.replacingOccurrences(of: "enterprise", with: "F")))!.cgColor, UIColor(hex: (userMentionTitle.uppercased() + kConditionData.replacingOccurrences(of: "equally", with: "8")))!.cgColor]
    }

    //: class func appGradientDisableColor() ->[CGColor] {
    class func stageElementColor() -> [CGColor] {
        //: return [UIColor.init(hex: "#FF5C9D")!.withAlphaComponent(0.4).cgColor, UIColor.init(hex: "#FF5C9D")!.withAlphaComponent(0.4).cgColor]
        return [UIColor(hex: (String(showCancelMessage)))!.withAlphaComponent(0.4).cgColor, UIColor(hex: (String(showCancelMessage)))!.withAlphaComponent(0.4).cgColor]
    }

    //: class func separatorLineColor() -> UIColor {
    class func taskTheme() -> UIColor {
        //: return UIColor.init(hex: "#EEEEEE")!
        return UIColor(hex: (String(userCarveData.prefix(5)) + user_mixPath.replacingOccurrences(of: "burn", with: "E")))!
    }

    //: class func getRandomColor() -> UIColor {
    class func verticalIn() -> UIColor {
        //: let red = CGFloat(arc4random_uniform(256)) / 255.0
        let red = CGFloat(arc4random_uniform(256)) / 255.0
        //: let green = CGFloat(arc4random_uniform(256)) / 255.0
        let green = CGFloat(arc4random_uniform(256)) / 255.0
        //: let blue = CGFloat(arc4random_uniform(256)) / 255.0
        let blue = CGFloat(arc4random_uniform(256)) / 255.0
        //: return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}

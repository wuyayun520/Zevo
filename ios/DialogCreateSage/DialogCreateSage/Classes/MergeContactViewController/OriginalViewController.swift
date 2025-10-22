
//: Declare String Begin

/*: "LaunchImage" :*/
fileprivate let const_ionName:[Character] = ["L","a","u","n","c","h","I","m"]
fileprivate let user_exContent:String = "adelivere"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OriginalViewController.swift
//  DialogCreateSage
//
//  Created by DouXiu on 2025/1/16.
//

//: import UIKit
import UIKit

//: public class NormalWaitingController: UIViewController {
public class OriginalViewController: UIViewController {
    //: public override func viewDidLoad() {
    override public func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: let bgImgV = UIImageView()
        let bgImgV = UIImageView()
        //: bgImgV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        bgImgV.frame = CGRect(x: 0, y: 0, width: user_needValue, height: kStreamTitle)
        //: bgImgV.image = UIImage(named: "LaunchImage")
        bgImgV.image = UIImage(named: (String(const_ionName) + user_exContent.replacingOccurrences(of: "deliver", with: "g")))
        //: view.addSubview(bgImgV)
        view.addSubview(bgImgV)
    }
}

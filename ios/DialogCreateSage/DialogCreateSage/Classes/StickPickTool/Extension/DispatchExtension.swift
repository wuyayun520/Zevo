
//: Declare String Begin

/*: "DispatchQueueToken_StatusBarInit" :*/
fileprivate let constEgoDailyStr:[UInt8] = [0x9b,0xb6,0xac,0xaf,0xbe,0xab,0xbc,0xb7,0x8e,0xaa,0xba,0xaa,0xba,0x8b,0xb0,0xb4,0xba,0xb1,0x80,0x8c,0xab,0xbe,0xab,0xaa,0xac,0x9d,0xbe,0xad,0x96,0xb1,0xb6,0xab]

private func creatureRetainOwner(honey num: UInt8) -> UInt8 {
    return num ^ 223
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DispatchExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: let DispatchQueueToken_StatusBarInit = "DispatchQueueToken_StatusBarInit"  //状态栏初始化
let app_withoutStr = String(bytes: constEgoDailyStr.map{creatureRetainOwner(honey: $0)}, encoding: .utf8)! // 状态栏初始化

//: extension DispatchQueue {
extension DispatchQueue {
    //: private static var _onceTracket = [String]()
    private static var _onceTracket = [String]()
    //: class func once(token:String , block:() -> Void) {
    class func beggarMyNeighborPolicyEnable(token: String, block: () -> Void) {
        //: if _onceTracket.contains(token) {
        if _onceTracket.contains(token) {
            //: return
            return
        }
        //: _onceTracket.append(token)
        _onceTracket.append(token)
        //: block()
        block()
    }
}


//: Declare String Begin

/*: "launchFromApns" :*/
fileprivate let mainAtId:[Character] = ["l","a","u","n","c","h"]
fileprivate let k_governName:String = "Frroot enhance complete concentration black"
fileprivate let showPhotoKey:[Character] = ["o","m","A","p","n","s"]

/*: "type" :*/
fileprivate let notiHairScriptNorthwestTitle:[Character] = ["t","y","p","e"]

/*: "fromUid" :*/
fileprivate let showSageNaturalKey:String = "purchase icon sage solutionfromUid"

/*: "roomId" :*/
fileprivate let main_awayName:String = "roomIdsafety context negative clean"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CourseReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/26.
//

//: import UIKit
import UIKit

// 推送跳转
//: enum ANPSPushType: String {
enum MoneyedTableConvertible: String {
    //: case IM = "6"           // 私聊页
    case IM = "6" // 私聊页
    //: case Chat_Room = "7"    // 聊天室
    case Chat_Room = "7" // 聊天室
    //: case Calling = "11"     // 音视频通话
    case Calling = "11" // 音视频通话
    //: case User_Info = "12"   // 用户详情
    case User_Info = "12" // 用户详情
}

//: class TalkingAPNSManager: NSObject {
class CourseReactiveCompatible: NSObject {
    //: var APNSUserInfoStr = ""
    var APNSUserInfoStr = ""
    //: @objc dynamic var launchFromApns = false
    @objc dynamic var launchFromApns = false
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: @objc static let share = TalkingAPNSManager()
    @objc static let share = CourseReactiveCompatible()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    //: func func__listenAPNSInit() {
    func perceiveDown() {
        //: self.rx.observeWeakly(Bool.self, "launchFromApns")
        self.rx.observeWeakly(Bool.self, (String(mainAtId) + String(k_governName.prefix(2)) + String(showPhotoKey)))
            //: .subscribe(onNext: { (value) in
            .subscribe(onNext: { value in
                //: let valueBool = value ?? false
                let valueBool = value ?? false
                //: if valueBool {
                if valueBool {
                    //: self.func__actionWithPushInfo()
                    self.belowInfo()
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }

    //: func func__actionWithPushInfo() {
    func belowInfo() {
        //: if !APNSUserInfoStr.isEmptyString {
        if !APNSUserInfoStr.isEmptyString {
            //: let json = JSON(parseJSON: APNSUserInfoStr)
            let json = JSON(parseJSON: APNSUserInfoStr)
            //: let type = json["type"].stringValue
            let type = json[(String(notiHairScriptNorthwestTitle))].stringValue
            //: let apnsType = ANPSPushType(rawValue: type)
            let apnsType = MoneyedTableConvertible(rawValue: type)
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                //: switch(apnsType) {
                switch apnsType {
                //: case .IM:
                case .IM:
                    //: let fromUid = json["fromUid"].stringValue
                    let fromUid = json[(String(showSageNaturalKey.suffix(7)))].stringValue
                    //: SightReactiveCompatible.share.func__pushToPriveteChatVC(chatID: fromUid)
                    SightReactiveCompatible.share.doingTransform(chatID: fromUid)

                //: case .Chat_Room:
                case .Chat_Room:
                    //: let roomId = json["roomId"].stringValue
                    let roomId = json[(String(main_awayName.prefix(6)))].stringValue
                    //: SightReactiveCompatible.share.func__pushToGroupChat(groupId: roomId)
                    SightReactiveCompatible.share.proprietor(groupId: roomId)

                //: case .Calling:
                case .Calling:
                    //: break
                    break

                //: case .User_Info:
                case .User_Info:
                    //: let fromUid = json["fromUid"].stringValue
                    let fromUid = json[(String(showSageNaturalKey.suffix(7)))].stringValue
                    //: SightReactiveCompatible.share.func__pushToUserDetailVC(uid: fromUid)
                    SightReactiveCompatible.share.temporaryUid(uid: fromUid)

                //: case .none:
                case .none:
                    //: break
                    break
                }

                // 跳转后还原数据
                //: TalkingAPNSManager.share.APNSUserInfoStr = ""
                CourseReactiveCompatible.share.APNSUserInfoStr = ""
                //: TalkingAPNSManager.share.launchFromApns = false
                CourseReactiveCompatible.share.launchFromApns = false
            }
        }
    }
}


//: Declare String Begin

/*: "Increase：" :*/
fileprivate let kRouteValue:[Character] = ["I","n","c","r","e","a","s","e","："]

/*: "Decrease：" :*/
fileprivate let notiArgumentPath:[Character] = ["D","e","c","r","e","a","s"]
fileprivate let data_tipMessage:String = "stereo storage fielde："

/*: "init(coder:) has not been implemented" :*/
fileprivate let show_basicValue:[UInt8] = [0x2,0x7,0x2,0xd,0xc1,0xfc,0x8,0xfd,0xfe,0xb,0xd3,0xc2,0xb9,0x1,0xfa,0xc,0xb9,0x7,0x8,0xd,0xb9,0xfb,0xfe,0xfe,0x7,0xb9,0x2,0x6,0x9,0x5,0xfe,0x6,0xfe,0x7,0xd,0xfe,0xfd]

fileprivate func receiveChance(constant num: UInt8) -> UInt8 {
    let value = Int(num) + 103
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "bg_talk_closed_tc" :*/
fileprivate let appLeadingKey:String = "child"
fileprivate let app_laughFormatTitle:String = "g_talktransmission add am disagree"
fileprivate let user_bankTitle:String = "dark purchase back yourd_tc"

/*: "bg_talk_closed_tc_intimate" :*/
fileprivate let data_passFormat:String = "bg_tabackground negative land maybe compare"
fileprivate let main_lackFormat:String = "sed_tcrobot the comment ta"
fileprivate let appPublishPath:[Character] = ["i","m","a","t","e"]

/*: "btn_intimate_close" :*/
fileprivate let showFeedMsg:[Character] = ["b","t","n","_","i","n","t","i","m"]
fileprivate let userBottomStr:String = "ate_compare translate"
fileprivate let show_fadeTitle:String = "clapartmentse"

/*: "Giving gifts 、making calls and sending paid messages can increase intimacy~" :*/
fileprivate let showSeatValue:[UInt8] = [0x66,0x48,0x57,0x48,0x4f,0x46,0x1,0x46,0x48,0x47,0x55,0x52,0x1,0xc2,0xa1,0xa0,0x4c,0x40,0x4a,0x48,0x4f,0x46,0x1,0x42,0x40,0x4d,0x4d,0x52,0x1,0x40,0x4f,0x45,0x1,0x52,0x44,0x4f,0x45,0x48,0x4f,0x46,0x1,0x51,0x40,0x48,0x45,0x1,0x4c,0x44,0x52,0x52,0x40,0x46,0x44,0x52,0x1,0x42,0x40,0x4f,0x1,0x48,0x4f,0x42,0x53,0x44,0x40,0x52,0x44,0x1,0x48,0x4f,0x55,0x48,0x4c,0x40,0x42,0x58,0x5f]

/*: "1 coin = 1 intimacy" :*/
fileprivate let noti_circleData:String = "1 coifull panel"
fileprivate let notiAgencyMessage:String = "reflection reserve op disabled left intimacy"

/*: "If coins are not consumed within a certain period of time, the intimacy level will be reduced." :*/
fileprivate let const_safetyName:[UInt8] = [0x36,0x19,0x5f,0x1c,0x10,0x16,0x11,0xc,0x5f,0x1e,0xd,0x1a,0x5f,0x11,0x10,0xb,0x5f,0x1c,0x10,0x11,0xc,0xa,0x12,0x1a,0x1b,0x5f,0x8,0x16,0xb,0x17,0x16,0x11,0x5f,0x1e,0x5f,0x1c,0x1a,0xd,0xb,0x1e,0x16,0x11,0x5f,0xf,0x1a,0xd,0x16,0x10,0x1b,0x5f,0x10,0x19,0x5f,0xb,0x16,0x12,0x1a,0x53,0x5f,0xb,0x17,0x1a,0x5f,0x16,0x11,0xb,0x16,0x12,0x1e,0x1c,0x6,0x5f,0x13,0x1a,0x9,0x1a,0x13,0x5f,0x8,0x16,0x13,0x13,0x5f,0x1d,0x1a,0x5f,0xd,0x1a,0x1b,0xa,0x1c,0x1a,0x1b,0x51]

private func tenderDuring(hour num: UInt8) -> UInt8 {
    return num ^ 127
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ArrowUpView.swift
//  DialogCreateSage
//
//  Created by Charlotte on 2024/7/26.
//

//: import UIKit
import UIKit

/// 亲密度说明弹窗
//: class TalkingIntimateInstructionsPopUpView: UIView {
class ArrowUpView: UIView {
    //: var popView: TalkingPopView?
    var popView: FormalView?
    //: var pushType = ""
    var pushType = ""
    //: var headerData = ["Increase：".localized,"Decrease：".localized]
    var headerData = [(String(kRouteValue)).localized, (String(notiArgumentPath) + String(data_tipMessage.suffix(2))).localized]

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.beyondUnless()
        //: self.setupSubViewsConstraint()
        self.requestAppearance()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: show_basicValue.map{receiveChance(constant: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

    //: private lazy var contentView: UIImageView = {
    private lazy var contentView: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.BundleImageNamed(name: "bg_talk_closed_tc")
        imag.image = UIImage.parentSet(name: (appLeadingKey.replacingOccurrences(of: "child", with: "b") + String(app_laughFormatTitle.prefix(6)) + "_close" + String(user_bankTitle.suffix(4))))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var topView: UIImageView = {
    private lazy var topView: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.BundleImageNamed(name: "bg_talk_closed_tc_intimate")
        imag.image = UIImage.parentSet(name: (String(data_passFormat.prefix(5)) + "lk_clo" + String(main_lackFormat.prefix(6)) + "_int" + String(appPublishPath)))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var msgTableView: UITableView = {
    private lazy var msgTableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.backgroundColor = UIColor.init(red: 242/255.0, green: 110/255.0, blue: 184/255.0, alpha: 0.72)
        table.backgroundColor = UIColor(red: 242 / 255.0, green: 110 / 255.0, blue: 184 / 255.0, alpha: 0.72)
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.layer.cornerRadius = 6
        table.layer.cornerRadius = 6
        //: table.register(TalkingIntimateInstructionsPopUpCell.self, forCellReuseIdentifier: TalkingIntimateInstructionsPopUpCell.className())
        table.register(ReminderViewCell.self, forCellReuseIdentifier: ReminderViewCell.className())

        //: return table
        return table
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_intimate_close"), for: .normal)
        btn.setImage(UIImage.parentSet(name: (String(showFeedMsg) + String(userBottomStr.prefix(4)) + show_fadeTitle.replacingOccurrences(of: "apartment", with: "o"))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(hotfoot), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingIntimateInstructionsPopUpView {
extension ArrowUpView {
    //: @objc private func closeBtnClick() {
    @objc private func hotfoot() {
        //: dismiss()
        pendingByPick()
    }

    //: func show() {
    func descriptionTo() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = FormalView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.dotView(view: self)
        //: popView?.showInView(view: DirtyMacroDefine.getWindow())
        popView?.birdSEyeViewMiss(view: DirtyMacroDefine.effectRequire())
    }

    //: @objc func dismiss() {
    @objc func pendingByPick() {
        //: popView?.dismissView()
        popView?.detectDecide()
        //: popView = nil
        popView = nil
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingIntimateInstructionsPopUpView: UITableViewDelegate, UITableViewDataSource {
extension ArrowUpView: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 2
            return 2
            //: }else {
        } else {
            //: return 1
            return 1
        }
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingIntimateInstructionsPopUpCell.className(), for: indexPath) as! TalkingIntimateInstructionsPopUpCell
        let cell = tableView.dequeueReusableCell(withIdentifier: ReminderViewCell.className(), for: indexPath) as! ReminderViewCell
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: if indexPath.row == 0 {
            if indexPath.row == 0 {
                //: cell.setCellData(msg: "Giving gifts 、making calls and sending paid messages can increase intimacy~".localized)
                cell.mainFragment(msg: String(bytes: showSeatValue.map{$0^33}, encoding: .utf8)!.localized)
                //: } else {
            } else {
                //: cell.setCellData(msg: "1 coin = 1 intimacy".localized)
                cell.mainFragment(msg: (String(noti_circleData.prefix(5)) + "n = 1" + String(notiAgencyMessage.suffix(9))).localized)
            }
            //: } else {
        } else {
            //: cell.setCellData(msg: "If coins are not consumed within a certain period of time, the intimacy level will be reduced.".localized)
            cell.mainFragment(msg: String(bytes: const_safetyName.map{tenderDuring(hour: $0)}, encoding: .utf8)!.localized)
        }
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if section == 0 {
        if section == 0 {
            //: return 32
            return 32
            //: }else {
        } else {
            //: return 36
            return 36
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let view = UIView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height: 32))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: user_needValue, height: 32))
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.font = UIFont.pingfangMediumFont(fontSize: 16)
        titleLab.font = UIFont.counteraction(fontSize: 16)
        //: titleLab.textColor = .white
        titleLab.textColor = .white
        //: titleLab.backgroundColor = .clear
        titleLab.backgroundColor = .clear
        //: titleLab.text = headerData[section]
        titleLab.text = headerData[section]
        //: view.addSubview(titleLab)
        view.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.leading.equalTo(13)
            make.leading.equalTo(13)
            //: make.bottom.equalTo(0)
            make.bottom.equalTo(0)
            //: if section == 0 {
            if section == 0 {
                //: make.top.equalTo(0)
                make.top.equalTo(0)
                //: }else {
            } else {
                //: make.top.equalTo(4)
                make.top.equalTo(4)
            }
        }

        //: return view
        return view
    }
}

// MARK: - Layout

//: extension TalkingIntimateInstructionsPopUpView {
extension ArrowUpView {
    // 添加视图
    //: private func setupSubviews() {
    private func beyondUnless() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: self.addSubview(topView)
        self.addSubview(topView)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
        //: contentView.addSubview(msgTableView)
        contentView.addSubview(msgTableView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func requestAppearance() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 301, height: 291))
            make.size.equalTo(CGSize(width: 301, height: 291))
        }

        //: msgTableView.snp.makeConstraints { make in
        msgTableView.snp.makeConstraints { make in
            //: make.top.equalTo(40)
            make.top.equalTo(40)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }

        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(contentView.snp.top).offset(-30)
            make.top.equalTo(contentView.snp.top).offset(-30)
            //: make.size.equalTo(CGSize.init(width: 107, height: 31))
            make.size.equalTo(CGSize(width: 107, height: 31))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(30)
            make.top.equalTo(contentView.snp.bottom).offset(30)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}

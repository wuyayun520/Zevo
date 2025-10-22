// __DEBUG__
// __CLOSE_PRINT__
//: import UIKit
import UIKit

//: protocol QYSlideNavigationDelegate: AnyObject {
protocol SerialNavigationDelegate: AnyObject {
    /// current selected information.
    /// - Parameters:
    ///   - viewController: selected VC.
    ///   - index: current
    //: func selectedViewController(_ viewController: UIViewController, index: Int)
    func light(_ viewController: UIViewController, index: Int)
}

//: class QYSlideNavigationViewController: UIViewController {
class ExThen: UIViewController {
    //: var titleItems = [String]()
    var titleItems = [String]()
    //: var titleViewBackgroundColor = UIColor.white
    var titleViewBackgroundColor = UIColor.white
    //: var titleFont = UIFont.systemFont(ofSize: 16)
    var titleFont = UIFont.systemFont(ofSize: 16)
    //: var selectTitleFont = UIFont.systemFont(ofSize: 20)
    var selectTitleFont = UIFont.systemFont(ofSize: 20)
    //: var normalColor = UIColor.lightGray
    var normalColor = UIColor.lightGray
    //: var selectedColor = UIColor.blue
    var selectedColor = UIColor.blue
    //: var makeScale = 1.0
    var makeScale = 1.0
    //: var hasBttomTabBar = false
    var hasBttomTabBar = false
    //: var allBtn = [UIButton]()
    var allBtn = [UIButton]()
    //: var isHidenBottomLine = false
    var isHidenBottomLine = false
    //: var topDistance = 0.0
    var topDistance = 0.0
    //: var isBisect = false
    var isBisect = false
    //: var rightSpace = 0.0
    var rightSpace = 0.0
    //: weak var delegate: QYSlideNavigationDelegate?
    weak var delegate: SerialNavigationDelegate?
    //: var scrollEnabled: Bool = true {
    var scrollEnabled: Bool = true {
        //: didSet {
        didSet {
            //: controllerScrollView.isScrollEnabled = scrollEnabled
            controllerScrollView.isScrollEnabled = scrollEnabled
        }
    }
    //: var viewHeight: CGFloat = 0 {
    var viewHeight: CGFloat = 0 {
        //: didSet {
        didSet {
            //: self.controllerScrollView.height = viewHeight - kTitle_H
            self.controllerScrollView.height = viewHeight - kTitle_H
        }
    }
    
    //: var controllerItems = [UIViewController]() {
    var controllerItems = [UIViewController]() {
        //: didSet {
        didSet {
            //: controllerItems.enumerated().forEach { [weak self] _, obj in
            controllerItems.enumerated().forEach { [weak self] _, obj in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.addChild(obj)
                self.addChild(obj)
            }
        }
    }

    //: private let kTitle_W = 80.0
    private let kTitle_W = 80.0
    //: private let kTitle_H = 44.0
    private let kTitle_H = 44.0
    //: private var firstTitleBtn: UIButton?
    private var firstTitleBtn: UIButton?
    //: private var selectedBtn: UIButton?
    private var selectedBtn: UIButton?
    
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: view.addSubview(titleScrollView)
        view.addSubview(titleScrollView)
        //: if selectedBtn != nil {
        if selectedBtn != nil {
            //: titleButtonClick(selectedBtn!)
            loadSpeaker(selectedBtn!)
        }
        //: titleScrollView.addSubview(bottomLine)
        titleScrollView.addSubview(bottomLine)
        //: view.addSubview(controllerScrollView)
        view.addSubview(controllerScrollView)
    }
    
    // MARK: - Lazy Load
    //: private lazy var controllerScrollView: UIScrollView = {
    private lazy var controllerScrollView: UIScrollView = {
        //: let count = min(self.controllerItems.count, self.titleItems.count)
        let count = min(self.controllerItems.count, self.titleItems.count)
        //: var height = DirtyMacroDefine.getScreenHeight() - (topDistance + kTitle_H)
        var height = DirtyMacroDefine.highness() - (topDistance + kTitle_H)
        //: if self.hasBttomTabBar {
        if self.hasBttomTabBar {
            //: height -= TabBarViewHeight
            height -= mainExplainFaceName
        }
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: UIScrollView.appearance().contentInsetAdjustmentBehavior = .never
            UIScrollView.appearance().contentInsetAdjustmentBehavior = .never
        }
        //: let rect = CGRect(x: 0, y: topDistance + kTitle_H, width: DirtyMacroDefine.getScreenWidth(), height: height)
        let rect = CGRect(x: 0, y: topDistance + kTitle_H, width: DirtyMacroDefine.expressStackWidth(), height: height)
        //: let scrollView = UIScrollView(frame: rect)
        let scrollView = UIScrollView(frame: rect)
        //: scrollView.contentSize = CGSize(width: count * Int(DirtyMacroDefine.getScreenWidth()), height: 0)
        scrollView.contentSize = CGSize(width: count * Int(DirtyMacroDefine.expressStackWidth()), height: 0)
        //: scrollView.isPagingEnabled = true
        scrollView.isPagingEnabled = true
        //: scrollView.showsVerticalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        //: scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = false
        //: scrollView.bounces = false
        scrollView.bounces = false
        //: scrollView.delegate = self
        scrollView.delegate = self
        //: scrollView.isScrollEnabled = true
        scrollView.isScrollEnabled = true
        //: scrollView.semanticContentAttribute = LanguageManager.shared.direction == .leftToRight ? .forceLeftToRight:.forceRightToLeft
        scrollView.semanticContentAttribute = ReadingLanguageManager.shared.direction == .leftToRight ? .forceLeftToRight:.forceRightToLeft
        //: return scrollView
        return scrollView
    //: }()
    }()

    //: private lazy var titleScrollView: UIScrollView = {
    private lazy var titleScrollView: UIScrollView = {
        //: var rect = CGRect(x: 15, y: topDistance, width: DirtyMacroDefine.getScreenWidth()-rightSpace, height: kTitle_H)
        var rect = CGRect(x: 15, y: topDistance, width: DirtyMacroDefine.expressStackWidth()-rightSpace, height: kTitle_H)
        //: if isBisect {
        if isBisect {
            //: rect = CGRect(x: 0, y: topDistance, width: DirtyMacroDefine.getScreenWidth()-rightSpace, height: kTitle_H)
            rect = CGRect(x: 0, y: topDistance, width: DirtyMacroDefine.expressStackWidth()-rightSpace, height: kTitle_H)
        }
        //: let scrollView = UIScrollView(frame: rect)
        let scrollView = UIScrollView(frame: rect)
        //: scrollView.backgroundColor = self.titleViewBackgroundColor
        scrollView.backgroundColor = self.titleViewBackgroundColor
        //: scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = false
        //: scrollView.showsVerticalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        //: scrollView.semanticContentAttribute = LanguageManager.shared.direction == .leftToRight ? .forceLeftToRight:.forceRightToLeft
        scrollView.semanticContentAttribute = ReadingLanguageManager.shared.direction == .leftToRight ? .forceLeftToRight:.forceRightToLeft
        //: scrollView.bounces = false
        scrollView.bounces = false
        //: var originX: CGFloat = LanguageManager.shared.direction == .leftToRight ? 0:25
        var originX: CGFloat = ReadingLanguageManager.shared.direction == .leftToRight ? 0:25
        //: self.titleItems.enumerated().forEach { [weak self] index, obj in
        self.titleItems.enumerated().forEach { [weak self] index, obj in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: let titleBtn = UIButton(type: .custom)
            let titleBtn = UIButton(type: .custom)
            //: titleBtn.tag = index + 1000
            titleBtn.tag = index + 1000
            //: titleBtn.setTitle(obj, for: .normal)
            titleBtn.setTitle(obj, for: .normal)
            //: titleBtn.setTitleColor(self.normalColor, for: .normal)
            titleBtn.setTitleColor(self.normalColor, for: .normal)
            //: titleBtn.titleLabel?.font = self.titleFont
            titleBtn.titleLabel?.font = self.titleFont
            //: titleBtn.addTarget(self, action: #selector(titleButtonClick), for: .touchDown)
            titleBtn.addTarget(self, action: #selector(loadSpeaker), for: .touchDown)
            //: var titleWidth = 0.0
            var titleWidth = 0.0
            //: if isBisect {
            if isBisect {
                //: titleWidth = DirtyMacroDefine.getScreenWidth() / Double(self.titleItems.count)
                titleWidth = DirtyMacroDefine.expressStackWidth() / Double(self.titleItems.count)
            //: } else {
            } else {
                //: titleWidth = (titleBtn.titleLabel?.sizeThatFits(CGSize(width: CGFLOAT_MAX, height: kTitle_H)).width ?? 0) + 22
                titleWidth = (titleBtn.titleLabel?.sizeThatFits(CGSize(width: CGFLOAT_MAX, height: kTitle_H)).width ?? 0) + 22
            }
            //: let x = LanguageManager.shared.direction == .leftToRight ? originX:(DirtyMacroDefine.getScreenWidth()-originX-titleWidth)
            let x = ReadingLanguageManager.shared.direction == .leftToRight ? originX:(DirtyMacroDefine.expressStackWidth()-originX-titleWidth)
            //: let rect = CGRect(x: x, y: 0, width: titleWidth, height: kTitle_H)
            let rect = CGRect(x: x, y: 0, width: titleWidth, height: kTitle_H)
            //: titleBtn.frame = rect
            titleBtn.frame = rect
            //: originX += titleWidth
            originX += titleWidth
            //: self.allBtn.append(titleBtn)
            self.allBtn.append(titleBtn)
            //: scrollView.addSubview(titleBtn)
            scrollView.addSubview(titleBtn)
            //: if index == 0 {
            if index == 0 {
                //: selectedBtn = titleBtn
                selectedBtn = titleBtn
            }
        }
        //: scrollView.contentSize = CGSize(width: originX + 15, height: 0)
        scrollView.contentSize = CGSize(width: originX + 15, height: 0)
        //: return scrollView
        return scrollView
    //: }()
    }()

    //: lazy var bottomLine: UIView = {
    lazy var bottomLine: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.center = CGPoint(x: self.selectedBtn?.center.x ?? 0, y: kTitle_H - 5)
        view.center = CGPoint(x: self.selectedBtn?.center.x ?? 0, y: kTitle_H - 5)
        //: view.bounds = CGRect(x: 0, y: 0, width: 12, height: 4)
        view.bounds = CGRect(x: 0, y: 0, width: 12, height: 4)
        //: view.backgroundColor = self.selectedColor
        view.backgroundColor = self.selectedColor
        //: view.layer.cornerRadius = 2
        view.layer.cornerRadius = 2
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.isHidden = self.isHidenBottomLine
        view.isHidden = self.isHidenBottomLine
        //: return view
        return view
    //: }()
    }()
}

// MARK: - Event
//: extension QYSlideNavigationViewController {
extension ExThen {
    //: @objc private func titleButtonClick(_ sender: UIButton) {
    @objc private func loadSpeaker(_ sender: UIButton) {
        //: currentSelectedTitleButton(sender)
        bodyUser(sender)
        //: let index = sender.tag - 1000
        let index = sender.tag - 1000
        //: let offset_x = CGFloat(index) * DirtyMacroDefine.getScreenWidth()
        let offset_x = CGFloat(index) * DirtyMacroDefine.expressStackWidth()
        //: controllerScrollView.contentOffset = CGPoint(x: offset_x, y: 0)
        controllerScrollView.contentOffset = CGPoint(x: offset_x, y: 0)
        //: addControllerView(withIndex: index)
        controller(withIndex: index)
        //: seletedViewController(withIndex: index)
        availableAcrossRemind(withIndex: index)
    }
    
    //: private func addControllerView(withIndex index: Int) {
    private func controller(withIndex index: Int) {
        //: if index >= children.count {
        if index >= children.count {
            //: return
            return
        }
        //: let origin_x = CGFloat(index) * DirtyMacroDefine.getScreenWidth()
        let origin_x = CGFloat(index) * DirtyMacroDefine.expressStackWidth()
        //: let vc = children[index]
        let vc = children[index]
        //: if vc.view.superview != nil {
        if vc.view.superview != nil {
            //: return
            return
        }
        //: vc.view.frame = CGRect(x: origin_x, y: 0, width: DirtyMacroDefine.getScreenWidth(), height: controllerScrollView.frame.size.height)
        vc.view.frame = CGRect(x: origin_x, y: 0, width: DirtyMacroDefine.expressStackWidth(), height: controllerScrollView.frame.size.height)
        //: controllerScrollView.addSubview(vc.view)
        controllerScrollView.addSubview(vc.view)
    }
    
    //: private func currentSelectedTitleButton(_ button: UIButton) {
    private func bodyUser(_ button: UIButton) {
        //: selectedBtn?.setTitleColor(normalColor, for: .normal)
        selectedBtn?.setTitleColor(normalColor, for: .normal)
        //: selectedBtn?.titleLabel?.font = titleFont
        selectedBtn?.titleLabel?.font = titleFont

        //: button.setTitleColor(selectedColor, for: .normal)
        button.setTitleColor(selectedColor, for: .normal)
        //: button.titleLabel?.font = selectTitleFont
        button.titleLabel?.font = selectTitleFont
        
        //: selectedBtn = button
        selectedBtn = button
        //: setupTitleCenter(button)
        adjustInnerCity(button)
        
        //: UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseInOut, animations: {
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseInOut, animations: {
            //: let titleWidth = (self.selectedBtn!.titleLabel?.sizeThatFits(CGSize(width: CGFLOAT_MAX, height: self.kTitle_H)).width ?? 0) + 22
            let titleWidth = (self.selectedBtn!.titleLabel?.sizeThatFits(CGSize(width: CGFLOAT_MAX, height: self.kTitle_H)).width ?? 0) + 22
            //: self.bottomLine.center = CGPoint(x: titleWidth / 2 + self.selectedBtn!.frame.origin.x, y: self.kTitle_H - 5)
            self.bottomLine.center = CGPoint(x: titleWidth / 2 + self.selectedBtn!.frame.origin.x, y: self.kTitle_H - 5)
        //: }, completion: nil)
        }, completion: nil)
    }
    
    //: func setupTitleCenter(_ sender: UIButton) {
    func adjustInnerCity(_ sender: UIButton) {
        //: if titleScrollView.contentSize.width <= DirtyMacroDefine.getScreenWidth() {
        if titleScrollView.contentSize.width <= DirtyMacroDefine.expressStackWidth() {
            //: return
            return
        }
        //: var offset_x = sender.center.x - DirtyMacroDefine.getScreenWidth() * 0.5
        var offset_x = sender.center.x - DirtyMacroDefine.expressStackWidth() * 0.5
        //: if offset_x < 0 {
        if offset_x < 0 {
            //: offset_x = 0
            offset_x = 0
        }
        //: let maxOffset = titleScrollView.contentSize.width - DirtyMacroDefine.getScreenWidth()
        let maxOffset = titleScrollView.contentSize.width - DirtyMacroDefine.expressStackWidth()
        //: if offset_x > maxOffset {
        if offset_x > maxOffset {
            //: offset_x = maxOffset
            offset_x = maxOffset
        }
        //: titleScrollView.setContentOffset(CGPoint(x: offset_x, y: 0), animated: true)
        titleScrollView.setContentOffset(CGPoint(x: offset_x, y: 0), animated: true)
    }
    
    //: override var prefersStatusBarHidden: Bool {
    override var prefersStatusBarHidden: Bool {
        //: return false
        return false
    }
}

// MARK: - MLSlideNavigationDelegate
//: extension QYSlideNavigationViewController {
extension ExThen {
    //: func seletedViewController(withIndex index: Int) {
    func availableAcrossRemind(withIndex index: Int) {
        //: guard index < children.count else { return }
        guard index < children.count else { return }
        //: delegate?.selectedViewController(children[index], index: index)
        delegate?.light(children[index], index: index)
    }
}

// MARK: - UIScrollViewDelegate
//: extension QYSlideNavigationViewController: UIScrollViewDelegate {
extension ExThen: UIScrollViewDelegate {
    //: func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        //: let index = Int(controllerScrollView.contentOffset.x / DirtyMacroDefine.getScreenWidth())
        let index = Int(controllerScrollView.contentOffset.x / DirtyMacroDefine.expressStackWidth())
        //: if let selectedBtn = titleScrollView.viewWithTag(index + 1000) as? UIButton {
        if let selectedBtn = titleScrollView.viewWithTag(index + 1000) as? UIButton {
            //: currentSelectedTitleButton(selectedBtn)
            bodyUser(selectedBtn)
        }
        //: addControllerView(withIndex: index)
        controller(withIndex: index)
        //: seletedViewController(withIndex: index)
        availableAcrossRemind(withIndex: index)
    }
    
    //: func scrollViewDidScroll(_ scrollView: UIScrollView) {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //: if makeScale == 1 { return }
        if makeScale == 1 { return }
        
        //: let index = Int(scrollView.contentOffset.x / DirtyMacroDefine.getScreenWidth())
        let index = Int(scrollView.contentOffset.x / DirtyMacroDefine.expressStackWidth())
        //: if index >= (titleItems.count - 1) {
        if index >= (titleItems.count - 1) {
            //: return
            return
        }
        //: guard let leftButton = titleScrollView.viewWithTag(index + 1000) as? UIButton,
        guard let leftButton = titleScrollView.viewWithTag(index + 1000) as? UIButton,
              //: let rightButton = titleScrollView.viewWithTag(index + 1 + 1000) as? UIButton
              let rightButton = titleScrollView.viewWithTag(index + 1 + 1000) as? UIButton
        //: else {
        else {
            //: return
            return
        }
        
        //: let scaleR = scrollView.contentOffset.x / DirtyMacroDefine.getScreenWidth() - CGFloat(index)
        let scaleR = scrollView.contentOffset.x / DirtyMacroDefine.expressStackWidth() - CGFloat(index)
        //: let scaleL = 1 - scaleR
        let scaleL = 1 - scaleR
        //: let transScale = makeScale - 1
        let transScale = makeScale - 1
        //: leftButton.transform = CGAffineTransform(scaleX: scaleL * transScale + 1, y: scaleL * transScale + 1)
        leftButton.transform = CGAffineTransform(scaleX: scaleL * transScale + 1, y: scaleL * transScale + 1)
        //: rightButton.transform = CGAffineTransform(scaleX: scaleR * transScale + 1, y: scaleR * transScale + 1)
        rightButton.transform = CGAffineTransform(scaleX: scaleR * transScale + 1, y: scaleR * transScale + 1)
        //: bottomLine.center = CGPoint(x: leftButton.center.x, y: kTitle_H - 5)
        bottomLine.center = CGPoint(x: leftButton.center.x, y: kTitle_H - 5)
    }
}

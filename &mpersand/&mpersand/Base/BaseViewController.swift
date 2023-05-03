import Foundation
import UIKit

class BaseViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // view.backgroundColor = .white
        self.view.backgroundColor = .white
        // 두 코드는 모두 똑같이 결과가 나오지만 self.view로 하게 되면
        // BaseViewController 클래스에서 view 프로퍼티를 오버라이딩한 경우에도
        // BaseViewController의 view를 참조할 수 있음
        
        setUp()
        addView()
        setFrame()
    }
    
    func setUp() {}
    func addView() {}
    func setFrame() {}
}

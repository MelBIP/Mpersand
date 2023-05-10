import UIKit

class CheckViewController: BaseViewController {
    let checkLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func setUp() {
        checkLabel.text = "입력하신 아이디의 유저 정보"
        checkLabel.textColor = .black
        checkLabel.font = UIFont.systemFont(ofSize: 25)
    }
    
    override func addView() {
        view.addSubview(checkLabel)
    }
    
    override func setFrame() {
        checkLabel.frame = CGRect(x: 60, y: 92, width: 300, height: 40)
    }
}

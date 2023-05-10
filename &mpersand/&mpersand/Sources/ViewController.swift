import UIKit

class ViewController: BaseViewController {
    
    let mpersand = UILabel()
    let nameLabel = UILabel()
    let nameTextField = UITextField()
    let checkButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func setUp() {
        mpersand.text = "&mpersand 과제"
        mpersand.textColor = .black
        mpersand.font = UIFont.systemFont(ofSize: 32)
        
        nameLabel.text = "유저의 아이디를 입력해주세요"
        nameLabel.textColor = .black
        
        nameTextField.borderStyle = .roundedRect
        nameTextField.placeholder = "입력해주세요"
        
        checkButton.setTitle("확인", for: .normal)
        checkButton.setTitleColor(.black, for: .normal)
        checkButton.backgroundColor = .lightGray
        checkButton.layer.cornerRadius = 8
        checkButton.addTarget(self, action: #selector(checkButtonTap), for: .touchUpInside)
    }
    
    override func addView() {
        self.view.addSubview(mpersand)
        self.view.addSubview(nameLabel)
        self.view.addSubview(nameTextField)
        self.view.addSubview(checkButton)
    }
    
    override func setFrame() {
        mpersand.frame = CGRect(x: 85, y: 92, width: 300, height: 40)
        nameLabel.frame = CGRect(x: 20, y: 360, width: 300, height: 50)
        nameTextField.frame = CGRect(x: 20, y: 400, width: 353, height: 46)
        checkButton.frame = CGRect(x: 118, y: 473, width: 157, height: 46)
    }
    
    @objc func checkButtonTap() {
        let contorller = CheckViewController()
        navigationController?.pushViewController(contorller, animated: true)
    }
}


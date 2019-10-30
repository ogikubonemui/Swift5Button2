import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        countLabel.text = "0"

    }

    @IBAction func plus(_ sender: Any) {
        // カウントアップ
         count = count + 1
        // ラベルに文字を反映したい（数字）
        countLabel.text = String(count)


        // 10以上になったら黄色に
        if count >= 10 {
                  changeTextColor()
              }
    }
    
    @IBAction func minus(_ sender: Any) {
        // カウントアップ
        count = count - 1

        // ラベルに文字を反映したい（数字）
        countLabel.text = String(count)

        // 0以下になったら白色に
        if count <= 0 {
            resetTextColor()
        }
        
    }
    
    // 新しくメソッドが作成された
    func changeTextColor(){
        countLabel.textColor = .yellow
    }
    
    func resetTextColor(){
        countLabel.textColor = .white
    }
    
}


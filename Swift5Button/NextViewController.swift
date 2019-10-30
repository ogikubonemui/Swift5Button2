
import UIKit

class NextViewController: UIViewController {

    @IBOutlet var changeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func change(_ sender: Any) {
        changeLabel.text = "暗号が解除されました"
    }
    
}

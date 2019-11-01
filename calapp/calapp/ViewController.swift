
import UIKit

class ViewController: UIViewController {
    
    var carModel = Car()

    override func viewDidLoad() {
        super.viewDidLoad()
        carModel.frontwheel = 10
        carModel.rearwheel = 10

    }

    @IBAction func doAction(_ sender: Any) {
        
        carModel.drive()
        carModel.move(toBack: "うしろにいくよ！")
        let total = carModel.plusAndMinus(num1: carModel.frontwheel, num2: carModel.rearwheel)
        print("タイヤの合計数 \(total)")
    }
    
}


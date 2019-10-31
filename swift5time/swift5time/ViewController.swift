

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        count = 0

        //stopボタンを押せなくする
        stopButton.isEnabled = false
        
        for i in 0..<5{
            print(i)
            
            let image = UIImage(named: "\(i)")
            imageArray.append(image!)
        }
        
        imageView.image = UIImage(named: "0")
        
    }
    
    func startTimer(){
        // タイマーを回す 0.2秒ごとにメソッドを呼ぶ
        // 0.2秒ごとにtimerUpdateというメソッドを呼ぶ
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)
    }
    
    // 0.2秒ごとに呼ばれるメソッド
    @objc func timerUpdate(){
        count = count + 1
        
        if count > 4 {
            count = 0
        }
        imageView.image = imageArray[count]
    }
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var timer = Timer()
    var count = Int()
    var imageArray = [UIImage]()
    
    @IBAction func start(_ sender: Any) {
        // imageViewのimageに画像を反映
        startTimer()

        //startボタンを押せなくする
        startButton.isEnabled = false
        
        // stopボタンを押せるようにする
        stopButton.isEnabled = true
    }
    
    @IBAction func stop(_ sender: Any) {
        // imageViewのimageの流れをストップする
        //startボタンを押せるようにする
        startButton.isEnabled = true
        
        // stopボタンを押せなくする
        stopButton.isEnabled = false
        
        // タイマーをとめる
        timer.invalidate()
    }
}


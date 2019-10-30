//
//  ViewController.swift
//  Swift5Button
//
//  Created by Yasuyuki Takeshita on 2019/10/29.
//  Copyright © 2019 Yasuyuki Takeshita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // countという変数の中に5が入っている
    // countという変数を下で使えるようになる
    var count = 5
    var moji = "あいうえお"

    override func viewDidLoad() {
        super.viewDidLoad()

        count = 10
        print(count)
        
    }

    @IBAction func tap(_ sender: Any) {
    }
    
}


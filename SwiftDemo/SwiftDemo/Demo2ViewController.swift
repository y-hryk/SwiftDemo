//
//  Demo2ViewController.swift
//  SwiftDemo
//
//  Created by yamaguchi on 2016/11/09.
//  Copyright © 2016年 h.yamaguchi. All rights reserved.
//

import UIKit

// すべてのプロパティが初期化されている必要あり
struct Time {
    let in24h: Bool
    var hour = 0 {
        didSet {
            
        }
    }
    
//    init() {
//        in24h = false
//    }
}

class Demo2ViewController: UIViewController {

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.brown
     
//        let time = Time()
    }

}

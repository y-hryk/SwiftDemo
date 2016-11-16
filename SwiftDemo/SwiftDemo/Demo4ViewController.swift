//
//  Demo4ViewController.swift
//  SwiftDemo
//
//  Created by yamaguchi on 2016/11/16.
//  Copyright © 2016年 h.yamaguchi. All rights reserved.
//

import UIKit

class Demo4ViewController: UIViewController {

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // MAP(配列用) ---------------------------------------
        // 全要素に処理をかけられる
        do {
            let double_array = [1, 2, 3].map { (num) -> Int in
                return num * 2
            }
            print("MAP(配列用) \(double_array)")
            
            let str_array = ["1", "2", "3"].map { (num) -> Int? in
                Int(num)
            }
            print("MAP(配列用) \(str_array)")
        }
        // --------------------------------------------------
        
        // MAP(Optional用) ----------------------------------
        // 対象が nil ではない場合に処理をする
        do {
            let value: Int? = 1
            let result = value.map { (num) -> Int? in
                return num + 1
            }
            print("MAP(Optional用) \(result)")
        }
        // --------------------------------------------------
        
        
        
    }
    
}

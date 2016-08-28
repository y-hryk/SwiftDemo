//
//  ViewController.swift
//  SwiftDemo
//
//  Created by yamaguchi on 2016/08/25.
//  Copyright © 2016年 h.yamaguchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    typealias SInteger = Int32

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.testLoop()
        
    }
    
    private func testLoop() {
        let array = [1,2,3,4,9,6]
        
        // forEach
        array.forEach { (idx) in
            print("\(idx)")
        }
        
        for (idx,item) in array.enumerate() {
            print("obj.element: \(item) index: \(idx)")
        }
        
        
        for i in 1..<5 {
            NSLog("\(i)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


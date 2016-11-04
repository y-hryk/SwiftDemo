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
        
//        self.testLoop()
        self.testSwitch()
        
        
        
        // closure
        let c1 = { () -> () in
            print(">>>>>> Closure")
        }
        
        c1()
        
        let c2 = {
            print("aaa")
            print("bbb")
        } ()
        
        
        typealias myClosure = (Int, Int) -> Double
        
        var ca3 = [myClosure]()
        
        print(">>>< \(ca3)")
        
        
        let list = ["aaa","bbb"]
        
        let source = list.filter() { $0.hasSuffix("aaa") }
        print("source  \(source)")
        
        
        // generics
        
    }
    
    fileprivate func testLoop() {
        let array = [1,2,3,4,9,6]
        
        // forEach
        array.forEach { (idx) in
            print("\(idx)")
        }
        
        for (idx,item) in array.enumerated() {
            print("obj.element: \(item) index: \(idx)")
        }
        
        
        for i in 1..<5 {
            NSLog("\(i)")
        }
    }
    
    fileprivate func testSwitch() {
        let section = 1
        switch section {
        case 1:
            print("\(section)")
        default:
            break
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


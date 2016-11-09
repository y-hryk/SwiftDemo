//
//  Demo1ViewController.swift
//  SwiftDemo
//
//  Created by yamaguchi on 2016/11/08.
//  Copyright © 2016年 h.yamaguchi. All rights reserved.
//

import UIKit

// エラー定義
enum DemoError: Error {
    case network
    case database
    case code(String)
}

class Demo1ViewController: UIViewController {

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func errorMethod(x: Int) throws -> Int {
        guard x != 0 else {
            throw DemoError.network
        }
        return 10
    }
    
    func method1st(x: Int) {
        var k = 0
        
        do {
            k = try self.errorMethod(x: x)
        } catch DemoError.network {
            print(">> network error")
        } catch {
            
            print(">> その他")
        }
        
        print(">> \(k)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var point = 5
        defer {
            print("defer point : \(point)")
        }
        
        self.view.backgroundColor = UIColor.yellow

        self.method1st(x: 0)
        
        if let x = try? self.errorMethod(x: 1) {
            print("計算結果 \(x)");
        }
        
        point = 7
    }
    
}

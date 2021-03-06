//
//  ViewController.swift
//  SwiftDemo
//
//  Created by yamaguchi on 2016/08/25.
//  Copyright © 2016年 h.yamaguchi. All rights reserved.
//

import UIKit


protocol VectorType {
    associatedtype Element
    var x : Element { get set }
    var y : Element { get set }
}

struct Vector<T> : VectorType {
    typealias Element = T
    var x, y : Element
}

extension VectorType where Element == Double {
    func abs() -> Double {
        return sqrt( x * x + y * y )
    }
}

extension Vector where T : FloatingPoint {
    
}

protocol Personal {
    
    static func test()
    var name: String { get }
    
}

class ViewController: UIViewController {
    
    typealias SInteger = Int32

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.testLoop()
        self.testSwitch()
        
        
        /*
         *Colosureの省略
         */
        let c5: Int = { () -> Int in    // 省略なし
            return 5
        } ()
        
        let c6: Int = { () in           // 型推論で戻り値を省略できる
            return 5
        } ()
        
        let c7: Int = { return 3 } ()   // 引数と戻り値を省略
        let c8: Int = { 3 } ()          // 一行なので returnを省力

        // 戻り値がないので変数に入れてから実装できる
        let c1 = { () -> () in
            print(">>>>>> Closure")
        }
        
        c1()
        
        // 戻り値があるため即時実行しないといけない
        let c2: Int = {
            print("aaa")
            print("bbb")
            return 2
        } ()

        
        typealias myClosure = (Int, Int) -> Double
        
        // 配列の型をクロージャーにして空の配列を初期化する
        var ca3 = [myClosure]()
        
        print(">>> \(ca3)")
        
        
        let list = ["aaa","bbb"]
        
        let source = list.filter() { $0.hasSuffix("aaa") }
        print("source  \(source)")
        
        
        // generics
        
        // 型が推論できない場合はコンパイルエラー
        let a:[Int?] = f(n: 3)
        print(">>>> \(a)")
        
        let vector: Vector<Int> = Vector(x: 12, y: 3)
        print("\(vector.x)")
        
        let vector_double: Vector<Double> = Vector(x: 12, y: 3)
        print("\(vector_double.abs())")
        
    }
    
    fileprivate func f<T>(n: Int) -> [T?] {
        return [T?](repeating:nil, count:n)
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


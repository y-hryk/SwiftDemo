//
//  Demo3ViewController.swift
//  SwiftDemo
//
//  Created by yamaguchi on 2016/11/09.
//  Copyright © 2016年 h.yamaguchi. All rights reserved.
//

import UIKit

// 値型の列挙型
enum Direction: Int {
    case up
    case right
    case down
    case left
    
    // イニシャライザも定義可能
    init() {
        self = .right
    }
    
    /* 無名クロージャーで定義
     * static let で定義できるため、初回アクセス時のみループが走り
     * 以降は読み込みが発生しないメリットがある
     * 関数を生やしたして、以下のようにも定義可能
     * static let count2: Int = calc()
    */
    static let count: Int =  {
        var i = 0
        while let _ = Direction(rawValue: i) {
            i = i + 1
        }
        return i
    }()
    
    // メソッドでもおk
    static func calc() -> Int {
        var i = 0
        while let _ = Direction(rawValue: i) {
            i = i + 1
        }
        return i
    }
    
    // 計算型プロパティーで定期する
//    static var count: Int {
//        var i = 0
//        while let _ = Direction(rawValue: i) {
//            i = i + 1
//        }
//        return i
//    }
    
    func clockwise() -> Direction {
        let t = (self.rawValue + 1) % 4
        return Direction(rawValue: t)!
    }
}

// 共用型の列挙型


class Demo3ViewController: UIViewController {

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let a = Direction.left
        let b = a.rawValue
        
        print("Direction.right type : \(type(of: a))")
        print("Direction.right : \(a)")
        print("rawValue : \(b)")
        
        print("\(a.clockwise())")
        

        print("\(Direction.count)")
        print("\(Direction.count)")
        
        print("\(Direction())")
    }

}

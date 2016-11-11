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
enum Ticket {
    case 切手(価格: Int, 大人: Bool, 回数券: Bool)
    case カード(価格: Int, 大人: Bool)
    case 敬老パス
}

enum Status {
    case Success
    case Error(code: Int)
}


class Demo3ViewController: UIViewController {

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let status = Status.Error(code: 400)
        switch status {
        case .Success:
            print("成功")
        case .Error(code: 400):
            print("Bad Request")
        case .Error(code: 500):
            print("Internal Server Error")
        default:
            print("何かのエラー")
        }

        let a = Direction.left
        let b = a.rawValue
        
        print("Direction.right type : \(type(of: a))")
        print("Direction.right : \(a)")
        print("rawValue : \(b)")
        
        print("\(a.clockwise())")
        

        print("\(Direction.count)")
        print("\(Direction.count)")
        
        print("\(Direction())")
        
        // 共用型のSwitch文
        
        let ticket = Ticket.切手(価格: 1000, 大人: false, 回数券: false)
        
        switch ticket {
        case let .切手(fare, _, _):
            print("価格: \(fare) ")
        case .カード(let fare, _) where fare < 149:
            print("カード \(fare)")
        case .カード(let fare, _) where fare > 150:
            print("カード \(fare)")
        case .敬老パス:
            print("敬老パス")
//        default:
//            print("例外")
        }
        
        
        // パターンマッチ例
        
        if case .敬老パス = ticket {
            
        }
        
        let tickets: [String: Ticket] = ["test1" : .カード(価格: 100, 大人: true),
                                         "test2" : .カード(価格: 100, 大人: true)]
        if let t = tickets["test1"], case .カード = t {
            
        }
        
        if case .カード? = tickets["test1"] {
            
        }
        
        
        let passes: [Ticket] = [.カード(価格: 100, 大人: true),.カード(価格: 50, 大人: true)]
        
        
        passes.forEach { (ticket) in
            if case .カード(let kakaku, _) = ticket , kakaku >= 100 {
                print(ticket)
            }
        }
        
        for case .カード(let kakaku, _) in passes where kakaku >= 100 {
            print(ticket)
        }
        
        
        switch a {
        case .up: break
        case .down: break
        case .left: break
        case .right: break
        }
        
        
        var nagano = 1988
        if nagano < 2000, let tokyo = Int("2020") , tokyo > 2000 {
            
        }
        
        let itemCount: Int? = 12
        
        guard let itemCount2 = itemCount , itemCount2 > 0 else {
            return
        }
        
    }

}

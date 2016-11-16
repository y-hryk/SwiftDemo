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
        

        print("\n\nMAP(配列用)\n")
        // MAP(配列用) ---------------------------------------
        // 全要素に処理をかけられる
        do {
            
            print("\([1, 2, 3].map { (num) -> Int in return num * 2 })")
            
            let str_array = ["1", "2", "3"].map { (num) -> Int? in
                Int(num)
            }
            print("\(str_array)")
        }
        // --------------------------------------------------
        
        print("\n\nMAP(Optional用)\n")
        // MAP(Optional用) ----------------------------------
        // 対象が nil ではない場合に処理をする
        do {
            let value: Int? = 1
            let result = value.map { num -> Int in
                num + 1
            }
            print("\(result)")
        }
        // --------------------------------------------------
        
        print("\n\nflatMap(2重の配列用)\n")
        // flatMap(2重の配列用) -------------------------------
        // 2重の配列を1重に
        do {
            print("\([[1, 2], [1]].flatMap { $0 })")
        }
        // --------------------------------------------------
        
        
        
        print("\n\nflatMap(Optional用)\n")
        // flatMap(Optional用) -------------------------------
        // 対象が nil ではない場合に処理をする + アンラップ
        do {
            let value: String? = "1"
            print("\(value.map { Int($0) })")
            print("\(value.flatMap { Int($0) })")
        }
        
        // クロージャが nil を返さない場合は map と同じ挙動
        do {
            let value: Int? = 1
            print("\(value.map { $0 })")
            print("\(value.flatMap { $0 })")
        }
        
        // --------------------------------------------------
        
        print("\n\nflatMap(中身がオプショナルな配列)\n")
        // flatMap(中身がオプショナルな配列) ----------------------
        // アンラップする
        do {
            print("\(["1", "2" , "3"].map { Int($0) })")
            print("\(["1", "2" , "3"].flatMap { Int($0) })")
            
            // nil がある場合は除外する
            print("\(["1", "string" , "3"].map { Int($0) })")
            print("\(["1", "string" , "3"].flatMap { Int($0) })")
            
            // 中身にオプショナルがある場合、アンラップする
            let aaa: Int? = 1
            print("\([aaa, 1 , 2].map { $0 })")
            print("\([aaa, 1 , 2].flatMap { $0 })")
            
            // 2重で中身がOptionalな配列にflatMap
            // アンラップ < １重 の順番
            print("\([[1], [2,3], nil].flatMap { $0 })")
            print("\([[1], [2,3], nil].flatMap { $0 }.flatMap { $0 })")
        }
        // --------------------------------------------------
        
    }
    
}

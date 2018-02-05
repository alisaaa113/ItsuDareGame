//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by arisa isshiki on 2018/02/01.
//  Copyright © 2018年 alisa. All rights reserved.
//
//aaaa

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    let itsuArray:[String] = ["十年前","五年前","一年前","一週間前","昨日","今日"]
    let dokodeArray:[String] = ["家で","日本で","山の上で","アメリカで","学校で","クラスで"]
    let daregaArray:[String] = ["犬が","私が","僕が","大統領が","先生が","友達が"]
    let doshitaArray:[String] = ["寝た","転んだ","叫んだ","演説した","怒った","踊った"]
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func change(){
        
        //それぞれのラベルに配列の要素を追加する
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        //index +1
        index = index + 1
        
        //3より大きくなったら元に
        if index > 5 {
            index = 0
        }
    }
    @IBAction func reset(){
        
        //それぞれのラベル元に
        itsuLabel.text = "---"
        dokodeLabel.text = "---"
        daregaLabel.text = "---"
        doshitaLabel.text = "---"
        
        //index初期化
        index = 0
        
    }
    @IBAction func random(){
        
        //乱数を生成し、indexに入れる
        let itsuIndex = Int(arc4random_uniform(6))
        let dokodeIndex = Int(arc4random_uniform(6))
        let daregaIndex = Int(arc4random_uniform(6))
        let doshitaIndex = Int(arc4random_uniform(6))
        
        //コンソールに出力
        print("いつ: \(itsuIndex)")
        print("どこで: \(dokodeIndex)")
        print("誰が: \(daregaIndex)")
        print("どうした: \(doshitaIndex)")
        
        //それぞれのラベルに配列の要素を追加する
        itsuLabel.text = itsuArray[itsuIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]
        
    }
}


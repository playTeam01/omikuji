//
//  ViewController.swift
//  MyOmikujiApp
//
//  Created by takuro taniyama on 2016/09/25.
//  Copyright © 2016年 takuro taniyama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func getOmikuji(sender: AnyObject) {
        let results = [
        "やきとり大吉",
        "吉田",
        "中本",
        "凶は明日を生きるため",
        "大凶なのは今だけ",
        "至高"]
        //乱数を生成
        //0 - n
        let random = arc4random_uniform(UInt32(results.count))
        //大吉の時に赤文字
        if random == 5 {
            self.myLabel.textColor = UIColor.redColor()
        }else{
            self.myLabel.textColor = UIColor.blackColor()
        }
        
        //resultsをmaLabelに表示
        self.myLabel.text = results[Int(random)]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


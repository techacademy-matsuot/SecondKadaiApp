//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by m20 on 2016/02/24.
//  Copyright © 2016年 takashi.matsuo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textNameBox: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destinationViewController as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているresultLabelにtext入力文字を渡す
        resultViewController.name = textNameBox.text!
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
    }

}


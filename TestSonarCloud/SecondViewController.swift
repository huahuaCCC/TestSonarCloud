//
//  SecondViewController.swift
//  TestSonarCloud
//
//  Created by Cassie on 2020/3/1.
//  Copyright © 2020 Cassie. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    
    override func viewDidLoad() {
        detailLabel.text = "Detail Text"
        imgView.image = UIImage.init(named: "zzpic")
        imgView.layer.borderWidth = 2
        let color = self.getBorderColor()
        imgView.layer.borderColor = color.cgColor
    }
    
    func getBorderColor() -> UIColor {
        let c = Int.random(in: 0..<100)
        return c % 2 == 0 ? UIColor.red : UIColor.brown
    }
    
    func getAddress() -> String {
        return "Shanghai"
    }
}

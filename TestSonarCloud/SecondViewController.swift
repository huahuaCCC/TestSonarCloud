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
    }
}

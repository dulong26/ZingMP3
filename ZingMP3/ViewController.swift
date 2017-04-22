//
//  ViewController.swift
//  ZingMP3
//
//  Created by Nguyen Quynh Chi on 4/19/17.
//  Copyright © 2017 silverpear. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imLogo: UIImageView!
    @IBOutlet weak var lbText: UILabel!
    @IBOutlet weak var lbName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imLogo!.alpha = 0
        lbText!.alpha = 0
        lbName!.alpha = 0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animate(withDuration: 4, animations: {
            self.imLogo!.alpha = 1
        }, completion: { (finished) in
            UIView.animate(withDuration: 3, animations: {
                self.lbText!.center = CGPoint(x: self.imLogo!.center.x, y: 60)
                self.lbText!.alpha = 1
            }, completion: { (finished) in
                UIView.animate(withDuration: 3, animations: {
                    self.lbName!.center = CGPoint(x: self.imLogo!.center.x, y: 600)
                    self.lbName!.alpha = 1
                })
            })
        })
    }
    
}

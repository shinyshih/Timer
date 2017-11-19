//
//  ViewController.swift
//  Timer
//
//  Created by 施馨檸 on 19/11/2017.
//  Copyright © 2017 施馨檸. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true)
        { (timer) in
            let time = Date()
            let dateFormatter = DateFormatter()
            let timeFormatter = DateFormatter()
            dateFormatter.dateStyle = .full
            dateFormatter.locale = Locale(identifier: "Chinese") // 中文顯示
            timeFormatter.timeStyle = .medium
            timeFormatter.locale = Locale(identifier: "Chinese") // 中文顯示
            
            self.dateLabel.text = dateFormatter.string(for: time)
            self.timeLabel.text = timeFormatter.string(from: time)
            
            timeFormatter.dateFormat = "hh"
            let hour = timeFormatter.string(from: time)
            self.imageView.image = UIImage(named: hour)
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


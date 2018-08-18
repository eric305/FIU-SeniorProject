//
//  PassionVC.swift
//  LifeManagementApp
//
//  Created by Eric Rado on 10/30/17.
//  Copyright © 2017 SeniorProject. All rights reserved.
//

import UIKit
import Firebase


class PassionVC: EmotionVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emotionChoice = "Passion"
        self.emotionLabel.text = "Passion Score"
        
        // set URL to download activity images
        let choiceStr = "\(emotionChoice)Activities"
        self.imgUrlDbRef = dbRef.child("ActivityImgs/\(choiceStr)")
        
        // retrieve most recent passion sprint
        getCategoryKey(userId: delegate.user.id)
        
        NotificationCenter.default
            .addObserver(self,
                         selector: #selector(didReceiveNotification(_:)),
                         name: .didReceiveNotification,
                         object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("PASSION view is about to appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("PASSION view is disappearing")
        NotificationCenter.default.post(name: .didReceiveNotification, object: self, userInfo: ["overallAverage" : self.emotionAverage!])
    }
    
    @objc func didReceiveNotification(_ notification: Notification) {
        print("Got it ROGER DODGER JOY")
        if let dict = notification.userInfo {
            let avg = dict["overallAverage"] ?? 0.0
            print("This is the avg from notification : \(avg)")
        }
    }

}











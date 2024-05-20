//
//  ViewController.swift
//  Emotion_Assignment
//
//  Created by 강석호 on 5/17/24.
//

import UIKit

class EmotionDiaryViewController: UIViewController {

    //MARK: - Outlet Property
    @IBOutlet var happyLabel: UILabel!
    @IBOutlet var loveLabel: UILabel!
    @IBOutlet var likeLabel: UILabel!
    @IBOutlet var embarrassLabel: UILabel!
    @IBOutlet var sadLabel: UILabel!
    @IBOutlet var depressLabel: UILabel!
    @IBOutlet var boredLabel: UILabel!
    @IBOutlet var sickLabel: UILabel!
    @IBOutlet var sleepyLabel: UILabel!
    
    @IBOutlet var resetButton: UIButton!
    
    @IBOutlet var labelList: [UILabel]!
    
    var points = [0,0,0,0,0,0,0,0,0]
    var emotions = ["행복해", "사랑해", "좋아해", "당황해", "속상해","우울해", "지루해", "아프다", "졸리다"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLabel()
        setButton()
    }
    
    //MARK: - UI Setting
    func setLabel() {
        for i in 0...8 {
            labelList[i].text = "\(emotions[i]) \((points[0]))"
        }
    }
    
    func setButton() {
        resetButton.layer.cornerRadius = 10
    }
    
    //MARK: - Action
    @IBAction func emotionCount(_ sender: UIButton) {
        points[sender.tag] += 1
        labelList[sender.tag].text = "\(emotions[sender.tag]) \(points[sender.tag])"
    }
    
    //리셋 기능
    @IBAction func resetButtonClicked(_ sender: UIButton) {
        points = [0,0,0,0,0,0,0,0,0]
        for i in 0...8 {
            labelList[i].text = "\(emotions[i]) \((points[0]))"
        }
    }
}


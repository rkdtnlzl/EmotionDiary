//
//  NewWordViewController.swift
//  Emotion_Assignment
//
//  Created by 강석호 on 5/18/24.
//

import UIKit

class NewWordViewController: UIViewController {
    
    //MARK: - Outlet Property
    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var searchButton: UIButton!
    @IBOutlet var firstButton: UIButton!
    @IBOutlet var secondButton: UIButton!
    @IBOutlet var thirdButton: UIButton!
    @IBOutlet var fourthButton: UIButton!
    
    @IBOutlet var resultLabel: UILabel!
    
    var newWordList = ["윰차":"구독자 유뮤를 차별한다는 뜻" ,
                       "실매":"실시간 매니저라는 뜻",
                       "만반잘부":"만나서 반갑고 잘 부탁해 라는 뜻",
                       "꾸안꾸":"꾸민듯 안꾸민듯 이란 뜻",
                       "긁" : "긁혔냐? 라는 뜻",
                       "킹받네" : "열받았다 라는 뜻",
                       "당모치" : "당연히 모든 치킨은 옳다 라는 뜻"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTextFieldUI()
        setButtonUI()
    }
    
    //MARK: - UI Setting
    func setTextFieldUI() {
        searchTextField.attributedPlaceholder = NSAttributedString(string: "신조어를 검색하시오", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
    }
    
    func setButtonUI() {
        baseButtonSetting(btn: firstButton, title: "윰차")
        baseButtonSetting(btn: secondButton, title: "실매")
        baseButtonSetting(btn: thirdButton, title: "만반잘부")
        baseButtonSetting(btn: fourthButton, title: "꾸안꾸")
    }
    
    func baseButtonSetting(btn : UIButton, title: String) {
        btn.setTitle(title, for: .normal)
        btn.layer.borderColor = UIColor.black.cgColor
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 10
    }
    
    //MARK: - Action
    @IBAction func searchButtonClicked(_ sender: UIButton) {
        if let searchText = searchTextField.text, !searchText.isEmpty {
            if let meaning = newWordList[searchText] {
                resultLabel.text = meaning
            } else {
                resultLabel.text = "해당 단어를 찾을 수 없습니다."
            }
        } else {
            resultLabel.text = "단어를 입력해주세요."
        }
    }
    
    @IBAction func btnClicked(_ sender: UIButton) {
        let titleList = ["윰차", "실매", "만반잘부","꾸안꾸"]
        searchTextField.text = titleList[sender.tag]
    }
    
    @IBAction func searchTextFieldClicked(_ sender: Any) {
    }
    
}

//
//  HometaroViewController.swift
//  Homeru
//
//  Created by chick on 2024/05/26.
//

import UIKit

class HometaroViewController: UIViewController {
    
    var receivedData: [String] = []
        
    @IBOutlet var home1: UILabel!
    @IBOutlet var home2: UILabel!
    @IBOutlet var home3: UILabel!
    @IBOutlet var home4: UILabel!
    @IBOutlet var home5: UILabel!
    @IBOutlet var home6: UILabel!
            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 配列の内容をラベルに表示
        home1.text = receivedData[0]
        home2.text = receivedData[1]
        home3.text = receivedData[2]
        home4.text = receivedData[3]
        home5.text = receivedData[4]
        home6.text = receivedData[5]
        
    }
    
    func shareData() {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            if let shareVC = storyboard.instantiateViewController(withIdentifier: "ShareViewController") as? ShareViewController {
                shareVC.shareData = receivedData
                self.present(shareVC, animated: true, completion: nil)
            }

    }

    
    

    
}

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
        
        home1.text = receivedData[safe: 0]
        home2.text = receivedData[safe: 1]
        home3.text = receivedData[safe: 2]
        home4.text = receivedData[safe: 3]
        home5.text = receivedData[safe: 4]
        home6.text = receivedData[safe: 5]
        
    }
    
//    func shareData() {
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            if let shareVC = storyboard.instantiateViewController(withIdentifier: "ShareViewController") as? ShareViewController {
//                shareVC.shareData = receivedData
//                self.present(shareVC, animated: true, completion: nil)
//            }
//
//    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNext" {
            let nextView = segue.destination as! ShareViewController
            nextView.shareData = receivedData
        }
    }

    
}
extension Collection {
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

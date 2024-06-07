//
//  HometaroViewController.swift
//  Homeru
//
//  Created by chick on 2024/05/26.
//

import UIKit

class HometaroViewController: UIViewController {
    
    var receivedData: [String] = []
        
    @IBOutlet var home: UILabel!
//    @IBOutlet var home2: UILabel!
//    @IBOutlet var home3: UILabel!
//    @IBOutlet var home4: UILabel!
//    @IBOutlet var home5: UILabel!
//    @IBOutlet var home6: UILabel!
            
    @IBAction func moippen(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 配列の内容をラベルに表示
        home.text = receivedData.joined(separator: " ")

        //home.text = receivedData[safe: 0]
        home.layer.borderWidth = 1.0
        home.layer.borderColor = UIColor.brown.cgColor
//        home2.text = receivedData[safe: 1]
//        home2.layer.borderWidth = 1.0
//        home2.layer.borderColor = UIColor.brown.cgColor
//        home3.text = receivedData[safe: 2]
//        home3.layer.borderWidth = 1.0
//        home3.layer.borderColor = UIColor.brown.cgColor
//        home4.text = receivedData[safe: 3]
//        home4.layer.borderWidth = 1.0
//        home4.layer.borderColor = UIColor.brown.cgColor
//        home5.text = receivedData[safe: 4]
//        home5.layer.borderWidth = 1.0
//        home5.layer.borderColor = UIColor.brown.cgColor
//        home6.text = receivedData[safe: 5]
//        home6.layer.borderWidth = 1.0
//        home6.layer.borderColor = UIColor.brown.cgColor
        
        
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

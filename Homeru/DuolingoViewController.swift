//
//  DuolingoViewController.swift
//  Homeru
//
//  Created by chick on 2024/05/22.
//

import UIKit
import Foundation

class DuolingoViewController: UIViewController {
    
    //ユーザが選択した単語カードを表す
    @IBOutlet var tango1: UILabel!
    @IBOutlet var tango2: UILabel!
    @IBOutlet var tango3: UILabel!
    @IBOutlet var tango4: UILabel!
    @IBOutlet var tango5: UILabel!
    @IBOutlet var tango6: UILabel!
    
    //100個から選ばれたランダム12個の単語カードを入れる
    @IBOutlet var tan1: UIButton!
    @IBOutlet var tan2: UIButton!
    @IBOutlet var tan3: UIButton!
    @IBOutlet var tan4: UIButton!
    @IBOutlet var tan5: UIButton!
    @IBOutlet var tan6: UIButton!
    @IBOutlet var tan7: UIButton!
    @IBOutlet var tan8: UIButton!
    @IBOutlet var tan9: UIButton!
    @IBOutlet var tan10: UIButton!
    @IBOutlet var tan11: UIButton!
    @IBOutlet var tan12: UIButton!
    

    var kansai = ["あんた", "好きやねん", "シュッとしてるし", "うまいよなあ", "ほんま", "しらんけど", "なんていうか", "頼りにしてるで", "ええ人すぎ", "さすがに", "いくらなんでも", "やばいって", "エグい", "かいらして", "しゃーない", "ええ加減", "センスええわあ", "そういうとこ", "あの時", "助けてくれたやんか", "ええとこ", "ないやんか", "誰とでも", "仲良いし", "オチも", "うまいし", "なかなか", "いつ見ても", "笑顔", "尊敬するわ", "どうやって", "老若男女 32", "ほんまに", "一緒に", "いたいって", "思うねん", "イケてる", "今日の服", "昨日さ", "助けてくれたやんか", "しんどくても", "おもろい", "いっちゃん", "せやねん", "好きやわ", "いつまでも", "そのままで", "が", "も", "は", "へ", "日本", "大阪", "たこ焼き", "作るん", "誰より", "料理", "行きたい", "あんたとなら", "と60", "昔", "家", "で", "に", "言いたい", "みんな", "1人", "むずすぎ", "やって", "ありえへん", "ねん", "やで", "わあ", "した", "うそやん", "学校", "気使える", "言うてる", "してくれる", "やん", "仕事", "大変やのに", "やし", "努力家", "気取らん", "感じ", "真似したい", "どうやったら", "うちの", "通天閣60", "しよや", "登ろ", "まだまだ", "いける", "見えへん", "ええて", "意味わからんくらい", "かっこええ", "上手に", "やんか", "なんなん", "まじで", "ほんま", "イケてる", "メイク", "親御さん", "優しい", "親孝行", "仲良し", "頼れる", "小さい", "時間通り", "来るし", "いくらなんでも", "言うたって", "おかしい", "任せて", "任せた", "いっちゃん", "ケチくさい90", "自分", "なんか考えられへん", "キッツい", "勉強", "も", "やて", "めっちゃ", "細かい", "話しやすい", "大きい100", 
    ]
    
    var random = [String]()
    var selected = [String]()


    func RandomNum(count: Int, min: Int, max: Int) -> [Int] {
        var uniqueNum = Set<Int>()
        
        while uniqueNum.count < count {
            let randomNum = Int.random(in: min...max)
            uniqueNum.insert(randomNum)
        }
        return Array(uniqueNum)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //元の100個の単語の順番をシャッフルする
        kansai.shuffle()
        
        // ランダムな数値を生成
        let randomNum = RandomNum(count: 12, min: 1, max: 100)

        // 12個の変数に代入
        let n1 = randomNum[0]
        let n2 = randomNum[1]
        let n3 = randomNum[2]
        let n4 = randomNum[3]
        let n5 = randomNum[4]
        let n6 = randomNum[5]
        let n7 = randomNum[6]
        let n8 = randomNum[7]
        let n9 = randomNum[8]
        let n10 = randomNum[9]
        let n11 = randomNum[10]
        let n12 = randomNum[11]
        
        tan1.setTitle(kansai[n1], for: .normal)
        tan2.setTitle(kansai[n2], for: .normal)
        tan3.setTitle(kansai[n3], for: .normal)
        tan4.setTitle(kansai[n4], for: .normal)
        tan5.setTitle(kansai[n5], for: .normal)
        tan6.setTitle(kansai[n6], for: .normal)
        tan7.setTitle(kansai[n7], for: .normal)
        tan8.setTitle(kansai[n8], for: .normal)
        tan9.setTitle(kansai[n9], for: .normal)
        tan10.setTitle(kansai[n10], for: .normal)
        tan11.setTitle(kansai[n11], for: .normal)
        tan12.setTitle(kansai[n12], for: .normal)
        
        update_label()

    }
    
    @IBAction func reset () {
    
        selected.removeAll()
        update_label()
        //selected.removeAtIndex(0) やと1つずつ
    }
    
    func update_label(){
        tango1.text = selected.count > 0 ? selected[0] : ""
        tango2.text = selected.count > 1 ? selected[1] : ""
        tango3.text = selected.count > 2 ? selected[2] : ""
        tango4.text = selected.count > 3 ? selected[3] : ""
        tango5.text = selected.count > 4 ? selected[4] : ""
        tango6.text = selected.count > 5 ? selected[5] : ""

    }
//
//    func select() {
//        selected.append("")
//        
//    }
    
    //選択したボタンのTitleを配列selectedに格納
    @IBAction func tan1Tapped(_ sender: UIButton) {
        //let title = sender.title(for: .normal)
        if let title = tan1.currentTitle {
            selected.append(title)
            update_label()
        }
    }   
    
    @IBAction func tan2Tapped(_ sender: UIButton) {
        //let title = sender.title(for: .normal)
        if let title = tan2.currentTitle {
            selected.append(title)
            update_label()
        }
    }   
    
    @IBAction func tan3Tapped(_ sender: UIButton) {
        //let title = sender.title(for: .normal)
        if let title = tan3.currentTitle {
            selected.append(title)
            update_label()
        }
    }  
    
    @IBAction func tan4Tapped(_ sender: UIButton) {
        //let title = sender.title(for: .normal)
        if let title = tan4.currentTitle {
            selected.append(title)
            update_label()
        }
    } 
    
    @IBAction func tan5Tapped(_ sender: UIButton) {
        //let title = sender.title(for: .normal)
        if let title = tan5.currentTitle {
            selected.append(title)
            update_label()
        }
    }  
    
    @IBAction func tan6Tapped(_ sender: UIButton) {
        //let title = sender.title(for: .normal)
        if let title = tan6.currentTitle {
            selected.append(title)
            update_label()
        }
    } 
    
    @IBAction func tan7Tapped(_ sender: UIButton) {
        //let title = sender.title(for: .normal)
        if let title = tan7.currentTitle {
            selected.append(title)
            update_label()
        }
    } 
    
    @IBAction func tan8Tapped(_ sender: UIButton) {
        //let title = sender.title(for: .normal)
        if let title = tan8.currentTitle {
            selected.append(title)
            update_label()
        }
    }  
    
    @IBAction func tan9Tapped(_ sender: UIButton) {
        //let title = sender.title(for: .normal)
        if let title = tan9.currentTitle {
            selected.append(title)
            update_label()
        }
    } 
    
    @IBAction func tan10Tapped(_ sender: UIButton) {
        //let title = sender.title(for: .normal)
        if let title = tan10.currentTitle {
            selected.append(title)
            update_label()
        }
    } 
    
    @IBAction func tan11Tapped(_ sender: UIButton) {
        //let title = sender.title(for: .normal)
        if let title = tan11.currentTitle {
            selected.append(title)
            update_label()
        }
    } 
    
    @IBAction func tan12Tapped(_ sender: UIButton) {
        //let title = sender.title(for: .normal)
        if let title = tan12.currentTitle {
            selected.append(title)
            update_label()
        }
    }
 
    
}

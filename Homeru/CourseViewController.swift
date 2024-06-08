
import UIKit

class CourseViewController: UIViewController {
    
    @IBOutlet var obachan1: UIImageView!
    @IBOutlet var obachan2: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // アニメーションの設定
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveEaseIn, .autoreverse], animations: {
            self.obachan1.center.y += 100.0
        }) { _ in
            // アニメーションが完了した後の処理
            self.obachan1.center.y -= 100.0
        }
        
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveEaseIn, .autoreverse], animations: {
            self.obachan2.center.y += 100.0
        }) { _ in
            // アニメーションが完了した後の処理
            self.obachan2.center.y -= 100.0
        }
        
       

    }
}

//
//  TutorialViewController.swift
//  Homeru
//
//  Created by chick on 2024/05/29.
//

import UIKit

class TutorialViewController: UIPageViewController {
    // PageViewで表示するViewControllerを格納する配列を定義
    var pageViewControllers: [UIViewController] = []
    var nowPage: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //インスタンス化
        let secondpage = storyboard!.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        let thirdpage = storyboard!.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        let fourthpage = storyboard!.instantiateViewController(withIdentifier: "FourthViewController") as! FourthViewController
        let fifthpage = storyboard!.instantiateViewController(withIdentifier: "FifthViewController") as! FifthViewController
        let sixthpage = storyboard!.instantiateViewController(withIdentifier: "SixthViewController") as! SixthViewController
        
        pageViewControllers = [secondpage, thirdpage, fourthpage, fifthpage, sixthpage]
        dataSource = self
        //最初に表示するページの指定
        self.setViewControllers([pageViewControllers[0]], direction: .forward, animated: true, completion: nil)
        
        UIPageControl.appearance().backgroundColor = .clear

        
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
        
}
    
    //以下追加
extension TutorialViewController: UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = pageViewControllers.firstIndex(of: viewController) else {
            return nil
        }
        if index == 0 {
            return nil
        } else {
            return pageViewControllers[index - 1]
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index = pageViewControllers.firstIndex(of: viewController) else {
            return nil
        }
        if index == pageViewControllers.count - 1 {
            return nil
        } else {
            return pageViewControllers[index + 1]
        }
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        pageViewControllers.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        0
    }
}


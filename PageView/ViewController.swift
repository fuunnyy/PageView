//
//  ViewController.swift
//  PageView
//
//  Created by Aaron on 2017/6/26.
//  Copyright © 2017年 Aaron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        automaticallyAdjustsScrollViewInsets = false
        
        // 1.标题
        let titles = ["游戏asefwe", "娱乐sfsdfsd", "趣玩sfsd", "美女", "颜值","adfsdfasdfa","adfasdfasdfasd","adfsdfasdf"]
        //        let titles = ["游戏", "娱乐娱乐娱乐", "趣玩", "美女女", "颜值颜值", "趣玩", "美女女", "颜值颜值"]
        let style = TitleStyle()
        style.isScrollEnable = true
        style.isShowScrollLine = true
        
        // 2.所以的子控制器
        var childVcs = [UIViewController]()
        for _ in 0..<titles.count {
            let vc = UIViewController()
            vc.view.backgroundColor = UIColor.randomColor()
            childVcs.append(vc)
        }
        
        print(childVcs)
        
        // 3.pageView的frame
        let pageFrame = CGRect(x: 0, y: 64, width: view.bounds.width, height: view.bounds.height - 64)
        
        // 4.创建 PageView,并且添加到控制器的view中
        let pageView = PageView(frame: pageFrame, titles: titles, childVcs: childVcs, parentVc: self, style : style)
        view.addSubview(pageView)
    }
}


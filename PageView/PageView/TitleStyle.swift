//
//  TitleStyle.swift
//  PageView
//
//  Created by Aaron on 2017/6/26.
//  Copyright © 2017年 Aaron. All rights reserved.
//

import UIKit

class TitleStyle: NSObject {
    var titleHeight : CGFloat = 44
    
    var normalColor : UIColor = UIColor(r: 0, g: 0, b: 0)
    var selectColor : UIColor = UIColor(r: 255, g: 127, b: 0)
    var fontSize : CGFloat = 15.0
    
    var isScrollEnable : Bool = false
    var itemMargin : CGFloat = 30
    
    var isShowScrollLine : Bool = false
    var scrollLineHeight : CGFloat = 2
    var scrollLineColor : UIColor = .orange
}

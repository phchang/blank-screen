//
//  BlankScreenView.swift
//  Blank Screen
//
//  Created by Paul Chang on 11/21/15.
//  Copyright © 2015 Paul Chang. All rights reserved.
//

import UIKit

class BlankScreenView: UIView {
    
    var count = 0;
    
    var countMap: [Int:UIColor] = {
        var map = [Int:UIColor]()

        map[0] = UIColor.whiteColor()
        map[1] = UIColor.darkGrayColor()
        map[2] = UIColor.lightGrayColor()
        map[3] = UIColor.grayColor()
        map[4] = UIColor.redColor()
        map[5] = UIColor.greenColor()
        map[6] = UIColor.blueColor()
        map[7] = UIColor.cyanColor()
        map[8] = UIColor.yellowColor()
        map[9] = UIColor.magentaColor()
        map[10] = UIColor.orangeColor()
        map[11] = UIColor.purpleColor()
        map[12] = UIColor.brownColor()
        
        return map
    }()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let doubleTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(BlankScreenView.doubleTap(_:)))
        doubleTapRecognizer.numberOfTouchesRequired = 2
        
        addGestureRecognizer(doubleTapRecognizer)
    }
    
    func doubleTap(gestureRecognizer: UIGestureRecognizer) {
        print("double tap")
        
        if count + 1 >= countMap.count {
            count = 0
        }
        else {
            count += 1
        }
        
        self.backgroundColor = countMap[count]
    }
}

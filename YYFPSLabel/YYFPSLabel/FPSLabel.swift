//
//  FPSLabel.swift
//  YYFPSLabel
//
//  Created by song on 16/8/15.
//  Copyright © 2016年 song. All rights reserved.
//

import UIKit

class FPSLabel: UILabel {

    private var link:CADisplayLink?
    
    private var lastTime:NSTimeInterval = 0.0;
    
    private var count:Int = 0;

    override init(frame: CGRect) {
        super.init(frame: frame)
        
    
        link = CADisplayLink.init(target: self, selector: #selector(FPSLabel.didTick(_:)))
        link?.addToRunLoop(NSRunLoop.currentRunLoop(), forMode: NSRunLoopCommonModes)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit{
        link?.invalidate()
    }
    
    func didTick(link:CADisplayLink){
    
        if lastTime == 0 {
            lastTime = link.timestamp
            return
        }
        count += 1
        
        let delta = link.timestamp - lastTime
        
        if delta < 1 {
            return
        }
        
        lastTime = link.timestamp
        
        // 帧数========>可以自己定义作为label显示
        let fps = Double(count) / delta
        
        
        count = 0
        
        let t = String(format: "%02.0f帧",round(fps))
        
        // 打印帧数
        print(t ?? "0")
        
    }
}

//
//  InstaAnimationBars.swift
//  AnimationBars
//
//  Created by Vaibhav Gautam on 31/07/16.
//  Copyright © 2016 Double You Tech. All rights reserved.
//

import UIKit

class InstaBars: UIView {
    
    /*
     // Only override drawRect: if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func drawRect(rect: CGRect) {
     // Drawing code
     }
     */
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        self.createAndAnimateBars()
    }
    
    /**
     This is the main method which will do everything for you
     */
    func createAndAnimateBars() {
        
        self.layer.sublayers?.forEach { $0.removeFromSuperlayer() }
        
        let animationName = "strokeEnd"
        
        let pathForFirstBar:UIBezierPath = UIBezierPath()
        pathForFirstBar.moveToPoint(CGPointMake(11, 29))
        pathForFirstBar.addLineToPoint(CGPointMake(11, 9))
        
        let shapeForFirstBar:CAShapeLayer = CAShapeLayer()
        shapeForFirstBar.path=pathForFirstBar.CGPath
        shapeForFirstBar.fillColor=UIColor.whiteColor().CGColor
        shapeForFirstBar.strokeColor=UIColor.whiteColor().CGColor
        shapeForFirstBar.lineWidth=4.0
        
        let firstBarAnimation:CABasicAnimation = CABasicAnimation(keyPath: animationName)
        firstBarAnimation.duration=0.4
        firstBarAnimation.fromValue=0.2
        firstBarAnimation.toValue=0.8
        firstBarAnimation.repeatCount=100000
        firstBarAnimation.removedOnCompletion=false
        firstBarAnimation.autoreverses=true
        
        shapeForFirstBar.addAnimation(firstBarAnimation, forKey: animationName)
        
        self.layer.addSublayer(shapeForFirstBar)
        
        
        let pathForSecondBar:UIBezierPath = UIBezierPath()
        pathForSecondBar.moveToPoint(CGPointMake(17, 29))
        pathForSecondBar.addLineToPoint(CGPointMake(17, 9))
        
        let shapeForSecondBar:CAShapeLayer = CAShapeLayer()
        shapeForSecondBar.path=pathForSecondBar.CGPath
        shapeForSecondBar.fillColor=UIColor.whiteColor().CGColor
        shapeForSecondBar.strokeColor=UIColor.whiteColor().CGColor
        shapeForSecondBar.lineWidth=4.0
        
        let secondBarAnimation:CABasicAnimation = CABasicAnimation(keyPath: animationName)
        secondBarAnimation.duration=0.5
        secondBarAnimation.fromValue=0.7
        secondBarAnimation.toValue=0.4
        secondBarAnimation.repeatCount=100000
        secondBarAnimation.removedOnCompletion=false
        secondBarAnimation.autoreverses=true
        
        shapeForSecondBar.addAnimation(secondBarAnimation, forKey: animationName)
        
        self.layer.addSublayer(shapeForSecondBar)
        
        
        let pathForThirdBar:UIBezierPath = UIBezierPath()
        pathForThirdBar.moveToPoint(CGPointMake(23, 29))
        pathForThirdBar.addLineToPoint(CGPointMake(23, 9))
        
        let shapeForThirdBar:CAShapeLayer = CAShapeLayer()
        shapeForThirdBar.path=pathForThirdBar.CGPath
        shapeForThirdBar.fillColor=UIColor.whiteColor().CGColor
        shapeForThirdBar.strokeColor=UIColor.whiteColor().CGColor
        shapeForThirdBar.lineWidth=4.0
        
        let thirdBarAnimation:CABasicAnimation = CABasicAnimation(keyPath: animationName)
        thirdBarAnimation.duration=0.5
        thirdBarAnimation.fromValue=0.4
        thirdBarAnimation.toValue=1.0
        thirdBarAnimation.repeatCount=100000
        thirdBarAnimation.removedOnCompletion=false
        thirdBarAnimation.autoreverses=true
        
        shapeForThirdBar.addAnimation(thirdBarAnimation, forKey: animationName)
        
        self.layer.addSublayer(shapeForThirdBar)
        
        
        
    }
    
    
    
}

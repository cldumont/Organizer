//
//  NavigationAnimation.swift
//  Organizer
//
//  Created by Craig Dumont on 2/9/19.
//  Copyright © 2019 Craig Dumont. All rights reserved.
//

import UIKit

class NavigationAnimation: NSObject, UIViewControllerAnimatedTransitioning {
    var popStyle: Bool = false
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.20
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        if popStyle {
            animatePop(using: transitionContext)
            return
        }
        
        let fz = transitionContext.viewController(forKey: .from)!
        let tz = transitionContext.viewController(forKey: .to)!
        
        let f = transitionContext.finalFrame(for: tz)
        
        let fOff = f.offsetBy(dx: f.width, dy: 55)
        tz.view.frame = fOff
        
        transitionContext.containerView.insertSubview(tz.view, aboveSubview: fz.view)
        
        UIView.animate(withDuration: transitionDuration(using: transitionContext),
                       animations: {
                        tz.view.frame = f
        }, completion: {_ in
            transitionContext.completeTransition(true)
        })
    }
    
    func animatePop(using transitionContext: UIViewControllerContextTransitioning) {
        
        let fz = transitionContext.viewController(forKey: .from)!
        let tz = transitionContext.viewController(forKey: .to)!
        
        let f = transitionContext.initialFrame(for: fz)
        let fOffPop = f.offsetBy(dx: f.width, dy: 55)
        
        transitionContext.containerView.insertSubview(tz.view, belowSubview: fz.view)
        
        UIView.animate(withDuration: transitionDuration(using: transitionContext), animations: {
            fz.view.frame = fOffPop
        }, completion: {_ in
            transitionContext.completeTransition(true)
        })
        
    }
    
}


import Foundation
import UIKit

final class SingleSonarButton: UIButton {
    
    // The circle in its smallest size.
//    let circlePath1 = UIBezierPath(arcCenter:  , radius: CGFloat(3), startAngle: CGFloat(0), endAngle:CGFloat(M_PI * 2), clockwise: true)
//
//
//    // The circle in its largest size.
//    let circlePath2 = UIBezierPath(arcCenter: self.center, radius: CGFloat(80), startAngle: CGFloat(0), endAngle:CGFloat(M_PI * 2), clockwise: true)
//
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let path = UIBezierPath(arcCenter: self.center, radius: CGFloat(3), startAngle: CGFloat(0), endAngle: CGFloat(M_PI * 2), clockwise: true)
        let endPath = UIBezierPath(arcCenter: self.center, radius: CGFloat(80), startAngle: CGFloat(0), endAngle: CGFloat(M_PI * 2), clockwise: true)
        
        // Configure the layer.
        let shapeLayer = CAShapeLayer()
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.fillColor = UIColor.red.cgColor
        // This is the path that's visible when there'd be no animation.
        shapeLayer.path = path.cgPath
        self.layer.addSublayer(shapeLayer)
        
        // Animate the path.
        let pathAnimation = CABasicAnimation(keyPath: "path")
        pathAnimation.fromValue = path.cgPath
        pathAnimation.toValue = endPath.cgPath
        
        // Animate the alpha value.
        let alphaAnimation = CABasicAnimation(keyPath: "opacity")
        alphaAnimation.fromValue = 0.8
        alphaAnimation.toValue = 0
        
        // We want both path and alpha animations to run together perfectly, so
        // we put them into an animation group.
        let animationGroup = CAAnimationGroup()
        animationGroup.beginTime = 0
        animationGroup.animations = [pathAnimation, alphaAnimation]
        animationGroup.duration = 2.76
        animationGroup.repeatCount = .greatestFiniteMagnitude
        animationGroup.isRemovedOnCompletion = false
        animationGroup.fillMode = CAMediaTimingFillMode.forwards
        
        // Add the animation to the layer.
        shapeLayer.add(animationGroup, forKey: "sonar")
        
//        UIView.animate(
//            withDuration: .defaultAnimationDuration,
//            animations: {
//
//        })
    }
}

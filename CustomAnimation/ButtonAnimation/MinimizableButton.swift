import Foundation
import UIKit

final class MinimizableButton: UIButton {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(
            withDuration: .defaultAnimationDuration,
            animations: {
                self.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        })
    }
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.transform = CGAffineTransform.identity
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.transform = CGAffineTransform.identity
    }
}

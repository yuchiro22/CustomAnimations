import Foundation
import UIKit

final class ChangeBackgroundColorButton: UIButton {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(
            withDuration: .defaultAnimationDuration,
            animations: {
                self.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 1)
        })
    }
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.transform = CGAffineTransform.identity
        
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.transform = CGAffineTransform.identity
    }
}

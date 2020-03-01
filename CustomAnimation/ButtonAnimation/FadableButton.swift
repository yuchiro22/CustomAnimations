import Foundation
import UIKit

final class FadableButton: UIButton {
    private let changedAlpha: CGFloat = 0.7
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(
            withDuration: .defaultAnimationDuration,
            animations: {
                self.alpha = self.changedAlpha
        })
    }
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.alpha = 1.0
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.alpha = 1.0
    }
}

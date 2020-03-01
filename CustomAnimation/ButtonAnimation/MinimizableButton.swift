import Foundation
import UIKit

final class MinimizableButton: UIButton {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 0.2, animations: {
            self.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        }, completion: { _ in
            self.transform = CGAffineTransform.identity
        })
    }
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
}

import Foundation
import UIKit

final class ChangeBackgroundColorButton: UIButton {
    private let layeredColor: UIColor = UIColor(named: "layeredColor")!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(
            withDuration: .defaultAnimationDuration,
            animations: {
                self.backgroundColor = self.layeredColor
        })
    }
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.backgroundColor = UIColor.white
        
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.backgroundColor = UIColor.white
    }
}

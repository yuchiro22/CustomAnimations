import UIKit

class ButtonAnimationViewController: UIViewController {
    @IBOutlet private weak var fadeButton: FadableButton!
    @IBOutlet private weak var changeBackgroundColorButton: ChangeBackgroundColorButton!
    @IBOutlet private weak var singleSonarButton: SingleSonarButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        changeBackgroundColorButton.layer.borderWidth = 2.0
        changeBackgroundColorButton.layer.borderColor = UIColor.black.cgColor
        singleSonarButton.layer.borderWidth = 2.0
        singleSonarButton.layer.borderColor = UIColor.black.cgColor
    }
}

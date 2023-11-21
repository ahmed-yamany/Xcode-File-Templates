//___FILEHEADER___

import UIKit

protocol ___FILEBASENAME___Delegate: NSObjectProtocol {
}
//
class ___FILEBASENAME___: UIView {
    // MARK: IBOutlet
    //
    // MARK: Properities
    //
    weak var delegate: ___FILEBASENAME___Delegate?
    // MARK: Init
    //
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadNib()
    }
}
//
// MARK: - Configurations
private extension ___FILEBASENAME___ {
    func configureUI() {
    }
}
//
// MARK: - Actions
private extension ___FILEBASENAME___ {
}
//
private extension ___FILEBASENAME___ {
    /// Loads the view from a nib file and adds it as a subview to the SplashView view.
    func loadNib() {
        // Please do not update this code, as it's used to load the view from a nib.
        // swiftlint:disable all
        let view = Bundle.main.loadNibNamed(String(describing: Self.self), owner: self, options: nil)![0] as! UIView
        addSubview(view)
        view.frame = bounds
        // swiftlint:enable all
    }
}

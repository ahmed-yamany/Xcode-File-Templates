//___FILEHEADER___

import UIKit

class ___FILEBASENAME___: UIView {
    // MARK: IBOutlet
    //
    
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
    /// Loads the view from a nib file and adds it as a subview to the ___FILEBASENAME___ view.
    private func loadNib() {
        // Please do not update this code, as it's used to load the view from a nib.
        // swiftlint:disable all
        let view = Bundle.main.loadNibNamed(String(describing: Self.self), owner: self, options: nil)![0] as! UIView
        addSubview(view)
        view.frame = bounds
        // swiftlint:enable all
    }
}
// MARK: - ViewModel
//
extension ___FILEBASENAME___ {
    /// The ViewModel structure for ___FILEBASENAME___. It represents the data required to display information in the user interface.
    struct ViewModel {
    }
}
// MARK: - Configurations
//
extension ___FILEBASENAME___ {
    /// Configures the ___FILEBASENAME___ object with data from the ViewModel.
    ///
    /// - Parameter viewModel: The ViewModel containing the data to be displayed.
    func configure(with viewModel: ___FILEBASENAME___.ViewModel) {
    }
}

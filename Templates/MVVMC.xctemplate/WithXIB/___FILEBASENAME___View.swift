//___FILEHEADER___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UIView {
    // MARK: IBOutlet
    //
    // MARK: - Properties
    let viewModel: ___VARIABLE_productName___ViewModel
    let delegate: ___VARIABLE_productName___ViewDelegate
    // MARK: Init
    init(viewModel: ___VARIABLE_productName___ViewModel, delegate: ___VARIABLE_productName___ViewDelegate) {
        self.viewModel = viewModel
        self.delegate = delegate
        super.init(frame: .infinite)
        loadNib()
        configureUI()
    }
    required init?(coder: NSCoder) {
        fatalError("Failed to initialize from coder")
    }
}
//
// MARK: - Configurations
private extension ___FILEBASENAMEASIDENTIFIER___ {
    func configureUI() {
    }
}
//
// MARK: - Actions
private extension ___FILEBASENAMEASIDENTIFIER___ {
}
//
private extension ___FILEBASENAMEASIDENTIFIER___ {
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

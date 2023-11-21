//___FILEHEADER___

import UIKit

protocol ___VARIABLE_productName___ViewDelegate {
}
//
class ___FILEBASENAMEASIDENTIFIER___: UIViewController {
    // MARK: - View
    lazy var ___VARIABLE_productName___View = ___VARIABLE_productName___View(viewModel: viewModel, delegate: self)
    //
    // MARK: - Properties
    let viewModel = ___VARIABLE_productName___ViewModel()
    //
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = ___VARIABLE_productName___View
        handlerPrivates()
    }
}
//
// MARK: - SignupViewDelegate
extension ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName___ViewDelegate {
}
//
// MARK: - Private Handlers
private extension ___FILEBASENAMEASIDENTIFIER___ {
    func handlerPrivates() {
    }
}

//___FILEHEADER___

import SwiftUI

final class ___FILEBASENAMEASIDENTIFIER___<ViewModel: ___VARIABLE_ModuleName___ViewModelProtocol>: UIHostingController<___VARIABLE_ModuleName___View<ViewModel>> {
    
    init(viewModel: ViewModel) {
        super.init(rootView: ___VARIABLE_ModuleName___View(viewModel: viewModel))
    }
    
    @MainActor 
    required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

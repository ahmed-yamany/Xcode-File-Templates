//___FILEHEADER___

import Foundation

protocol ___FILEBASENAMEASIDENTIFIER___Protocol: Coordinator {
}

final class ___FILEBASENAMEASIDENTIFIER___: ___FILEBASENAMEASIDENTIFIER___Protocol {
    let router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    func start() {
        let useCase = ___VARIABLE_ModuleName___UseCase()
        let viewModel = ___VARIABLE_ModuleName___ViewModel(coordinator: self, useCase: useCase)
        let controller = ___VARIABLE_ModuleName___ViewController(viewModel: viewModel)
        router.setViewController(controller)
    }
}

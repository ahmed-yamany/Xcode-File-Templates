//___FILEHEADER___

import SwiftUI

@MainActor
protocol ___VARIABLE_ModuleName___ViewModelProtocol: ObservableObject {}

@MainActor
final class ___VARIABLE_ModuleName___ViewModel: ___VARIABLE_ModuleName___ViewModelProtocol {
    
    private let coordinator: ___VARIABLE_ModuleName___CoordinatorProtocol
    private let useCase: ___VARIABLE_ModuleName___UseCaseProtocol
    
    init(coordinator: ___VARIABLE_ModuleName___CoordinatorProtocol, useCase: ___VARIABLE_ModuleName___UseCaseProtocol) {
        self.coordinator = coordinator
        self.useCase = useCase
    }
}

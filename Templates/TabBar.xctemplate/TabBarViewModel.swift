//___FILEHEADER___

import Foundation
import Combine

// MARK: TabarViewModel
//
class TabBarViewModel {
    static public let shared = TabBarViewModel()
    private init() { }
    //
    var cancellableSet: Set<AnyCancellable> = []
    ///
    @Published var viewControllers = TabBarType.allCases.map { $0.viewController }
    @Published var tabBarIsHidden: Bool = false
    @Published var selectedItem: TabBarType = .home
}

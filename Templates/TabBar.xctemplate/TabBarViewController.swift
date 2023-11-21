//___FILEHEADER___

import UIKit
import Extensions
import ViewAnimator

class TabBarViewController: UITabBarSelectionController {
    // MARK: - Properties
    let viewModel = TabBarViewModel.shared
    //
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    override func tabBarDidSelect(_ tabBar: UITabBar, item: UITabBarItem, view: UIView) {
        view.animate(animations: [AnimationType.vector(.init(dx: 5, dy: 5))], usingSpringWithDamping: 2, initialSpringVelocity: 2)
    }
}
//
// MARK: - Configurations
private extension TabBarViewController {
    func configure() {
        viewControllers = viewModel.viewControllers
        subscribeSelectedItem()
        subscribeTabBarIsHidden()
    }
    ///
    func subscribeSelectedItem() {
        viewModel.$selectedItem
            .map { $0.index }
            .assign(to: \.selectedIndex, on: self)
            .store(in: &viewModel.cancellableSet)
    }
    ///
    func subscribeTabBarIsHidden() {
        viewModel.$tabBarIsHidden
            .map { isHidden in
                self.tabBar.animate(animations: [AnimationType.from(direction: .bottom, offset: 100)])
                return isHidden
            }
            .assign(to: \.isHidden, on: tabBar)
            .store(in: &viewModel.cancellableSet)
    }

}

//___FILEHEADER___

import UIKit

enum TabBarType: String, CaseIterable, Hashable {
    case home, location, appointment, profile
    var index: Int {
        TabBarType.allCases.firstIndex(of: self) ?? 0
    }
    //
    var tabBarItem: UITabBarItem {
        let item = UITabBarItem()
        item.tag = self.hashValue
        item.image = UIImage(named: "tabbar-\(self.rawValue)")?.withRenderingMode(.alwaysOriginal)
        item.selectedImage = UIImage(named: "tabbar-\(self.rawValue)-selected")?.withRenderingMode(.alwaysOriginal)
        return item
    }
    //
    var viewController: UIViewController {
        let viewController: UIViewController = switch self {
        case .home:
            HomeController()
        case .location:
            LocationController()
        case .appointment:
            AppointmentController()
        case .profile:
            ProfileController()
        }
        viewController.tabBarItem = self.tabBarItem
        return viewController
    }
}

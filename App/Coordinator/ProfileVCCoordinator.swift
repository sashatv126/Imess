import UIKit

class ProfileVCCoordinator :  Coordinator, Flow {
    
    var navigationController : UINavigationController?
        
    init(navigationController : UINavigationController?) {
        self.navigationController = navigationController
    }
    
    func start() {
        let mainVc = coordinateToFirstVC()
        if let navigationController = navigationController {
            navigationController.pushViewController(mainVc, animated: true)
            
        }
    }
    
    func coordinateWithModel(model: Any) {
        let secondCoordinator = ChatVCCoordinator(navigationController: navigationController)
        coordinate(to: secondCoordinator)
        print(model)
    }
    
//тут будет сборка MVVM модуля
    func coordinateToFirstVC () -> UIViewController {
        let view = ProfileViewController()
        view.profileCoordinator = self
        return view
    }
}


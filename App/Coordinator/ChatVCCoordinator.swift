import UIKit

class ChatVCCoordinator :  Coordinator, Flow {
    
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
        let secondCoordinator = SignUpVCCoordinator(navigationController: navigationController)
        coordinate(to: secondCoordinator)
        print(model)
    }
    
//тут будет сборка MVVM модуля
    func coordinateToFirstVC () -> UIViewController {
        let view = TabBarController()
        view.tabcoordinator = self
        return view
    }
}



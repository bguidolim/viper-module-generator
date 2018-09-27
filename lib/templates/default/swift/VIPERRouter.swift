//
// Created by AUTHOR
// Copyright (c) YEAR COMPANY. All rights reserved.
//

import Foundation
import UIKit

final class VIPERRouter: VIPERRouterProtocol {

    static weak var view: UIViewController?

    class func presentVIPERModule(fromView view: UIViewController) {
        guard let newView = VIPERRouter.buildViewController() else {
            return
        }
        /**
         * Add code to present your View here
         **/
    }

    class func buildViewController() -> UIViewController? {

        // Generating module components
        let view: VIPERViewProtocol = VIPERView()
        let presenter: VIPERPresenterProtocol & VIPERInteractorOutputProtocol = VIPERPresenter()
        let interactor: VIPERInteractorInputProtocol = VIPERInteractor()
        let apiDataManager: VIPERAPIDataManagerProtocol = VIPERAPIDataManager()
        let localDataManager: VIPERLocalDataManagerProtocol = VIPERLocalDataManager()
        let router: VIPERRouterProtocol = VIPERRouter()

        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.apiDataManager = apiDataManager
        interactor.localDatamanager = localDataManager

        VIPERRouter.view = view as? UIViewController

        return view as? UIViewController
    }
}

//
//  Created by Askar Bakirov on 17/11/2016.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import UIKit


class RepositoriesListModule {
    
  class func create() -> RepositoriesListModuleInput {
    let router = RepositoriesListRouter()
    let presenter = RepositoriesListPresenter()
    let interactor = RepositoriesListInteractor()
    let viewController = UIStoryboard.instantiate(type: RepositoriesListViewController.self)

    interactor.output = presenter
    interactor.trandingDataStore = TrandingDataStore()
    interactor.trandingNetworkService = TrandingNetworkService()

    viewController.output = presenter

    presenter.view = viewController
    presenter.router = router
    presenter.interactor = interactor

    return presenter
  }
    
}

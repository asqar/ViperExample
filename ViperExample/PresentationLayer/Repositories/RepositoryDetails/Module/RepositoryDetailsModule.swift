//
//  Created by Askar Bakirov on 17/11/2016.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import UIKit


class RepositoryDetailsModule {
    
  class func create() -> RepositoryDetailsModuleInput {
    let router = RepositoryDetailsRouter()
    let presenter = RepositoryDetailsPresenter()
    let interactor = RepositoryDetailsInteractor()
    let viewController = UIStoryboard.instantiate(type: RepositoryDetailsViewController.self)

    interactor.output = presenter

    viewController.output = presenter

    presenter.view = viewController
    presenter.router = router
    presenter.interactor = interactor

    return presenter
  }
    
}

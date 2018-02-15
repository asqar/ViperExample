//
//  NewFeatureNewFeatureConfigurator.swift
//  ViperExample
//
//  Created by Askar Bakirov on 15/02/2018.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import UIKit

class NewFeatureModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? NewFeatureViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: NewFeatureViewController) {

        let router = NewFeatureRouter()

        let presenter = NewFeaturePresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = NewFeatureInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}

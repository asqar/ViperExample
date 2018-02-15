//
//  NewModuleBuilder.swift
//  ViperExample
//
//  Created by Askar Bakirov on 15/02/2018.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import UIKit
import Swinject

class NewModuleDefaultModuleBuilder: NSObject {

    fileprivate let container: Container
    
    init(parentContainer: Container) {
        container = Container(parent: parentContainer)
    }

    func build() -> NewModuleViewController! {

        container.register(NewModuleInteractor.self) { _ in
            NewModuleInteractorImp() //Add service
        }

        container.register(NewModuleViewController.self) { _ in

            NewModuleViewController(nibName: String(describing: NewModuleViewController.self), bundle: Bundle.main)

            }.initCompleted { container, view in

                view.presenter = container.resolve(NewModulePresenter.self)
        }

        container.register(NewModuleRouter.self) { container in
            let router = NewModuleRouterImp()
            router.viewController = container.resolve(NewModuleViewController.self)!
            return router
        }

        container.register(NewModulePresenter.self) { container in
            NewModulePresenterImp(view: container.resolve(NewModuleViewController.self)!,
                                interactor: container.resolve(NewModuleInteractor.self)!,
                                router: container.resolve(NewModuleRouter.self)!)
        }

        return container.resolve(NewModuleViewController.self)!
    }
}

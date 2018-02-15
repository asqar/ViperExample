//
//  NewModulePresenter.swift
//  ViperExample
//
//  Created by Askar Bakirov on 15/02/2018.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import Foundation

protocol NewModulePresenter {
}

class NewModulePresenterImp: NewModulePresenter {

    weak var view: NewModuleView!
    var interactor: NewModuleInteractor!
    var router: NewModuleRouter!

    init(view: NewModuleView, interactor: NewModuleInteractor, router: NewModuleRouter) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

//
//  NewFeatureNewFeaturePresenter.swift
//  ViperExample
//
//  Created by Askar Bakirov on 15/02/2018.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

class NewFeaturePresenter: NewFeatureModuleInput, NewFeatureViewOutput, NewFeatureInteractorOutput {

    weak var view: NewFeatureViewInput!
    var interactor: NewFeatureInteractorInput!
    var router: NewFeatureRouterInput!

    func viewIsReady() {

    }
}

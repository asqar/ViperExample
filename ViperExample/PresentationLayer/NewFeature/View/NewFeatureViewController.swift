//
//  NewFeatureNewFeatureViewController.swift
//  ViperExample
//
//  Created by Askar Bakirov on 15/02/2018.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import UIKit

class NewFeatureViewController: UIViewController, NewFeatureViewInput {

    var output: NewFeatureViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: NewFeatureViewInput
    func setupInitialState() {
    }
}

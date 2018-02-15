//
//  NewFeatureNewFeatureInitializer.swift
//  ViperExample
//
//  Created by Askar Bakirov on 15/02/2018.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import UIKit

class NewFeatureModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var newfeatureViewController: NewFeatureViewController!

    override func awakeFromNib() {

        let configurator = NewFeatureModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: newfeatureViewController)
    }

}

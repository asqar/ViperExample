//
//  NewModuleViewController.swift
//  ViperExample
//
//  Created by Askar Bakirov on 15/02/2018.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import UIKit

protocol NewModuleView: class {

}

class NewModuleViewController: UIViewController, NewModuleView {

    var presenter: NewModulePresenter!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

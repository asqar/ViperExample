//
//  NewFeatureNewFeatureConfiguratorTests.swift
//  ViperExample
//
//  Created by Askar Bakirov on 15/02/2018.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import XCTest

class NewFeatureModuleConfiguratorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConfigureModuleForViewController() {

        //given
        let viewController = NewFeatureViewControllerMock()
        let configurator = NewFeatureModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "NewFeatureViewController is nil after configuration")
        XCTAssertTrue(viewController.output is NewFeaturePresenter, "output is not NewFeaturePresenter")

        let presenter: NewFeaturePresenter = viewController.output as! NewFeaturePresenter
        XCTAssertNotNil(presenter.view, "view in NewFeaturePresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in NewFeaturePresenter is nil after configuration")
        XCTAssertTrue(presenter.router is NewFeatureRouter, "router is not NewFeatureRouter")

        let interactor: NewFeatureInteractor = presenter.interactor as! NewFeatureInteractor
        XCTAssertNotNil(interactor.output, "output in NewFeatureInteractor is nil after configuration")
    }

    class NewFeatureViewControllerMock: NewFeatureViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}

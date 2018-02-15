//
//  NewModulePresenterTests.swift
//  ViperExample
//
//  Created by Askar Bakirov on 15/02/2018.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import XCTest
@testable import ViperExample

class NewModulePresenterTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockInteractor: NewModuleInteractor {

    }

    class MockRouter: NewModuleRouter {

    }

    class MockViewController: NewModulePresenter {

    }
}

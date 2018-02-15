//
//  NewModuleBuilderTests.swift
//  ViperExample
//
//  Created by Askar Bakirov on 15/02/2018.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import XCTest
import Swinject
@testable import ViperExample

class NewModuleModuleBuilderTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConfigureModuleForViewController() {
        let builder = NewModuleDefaultModuleBuilder(parentContainer: Container())
        let viewController = builder.build()

        XCTAssertNotNil(viewController, "NewModuleViewController is nil after configuration")
    }
}

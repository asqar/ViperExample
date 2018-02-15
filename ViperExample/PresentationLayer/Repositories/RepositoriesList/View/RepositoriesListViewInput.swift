//
//  Created by Askar Bakirov on 17/11/2016.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import UIKit


protocol RepositoriesListViewInput: class, Presentable {
  func setupInitialState()
  func show(repositories: [Repository])
}

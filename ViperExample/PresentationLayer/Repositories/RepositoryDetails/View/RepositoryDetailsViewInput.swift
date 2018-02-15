//
//  Created by Askar Bakirov on 17/11/2016.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import UIKit


protocol RepositoryDetailsViewInput: class, Presentable {
  func setupInitialState()
  func show(content: String)
}

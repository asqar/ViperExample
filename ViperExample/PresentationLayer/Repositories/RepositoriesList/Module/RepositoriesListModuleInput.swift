//
//  Created by Askar Bakirov on 17/11/2016.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import UIKit


protocol RepositoriesListModuleInput: class {
  var output: RepositoriesListModuleOutput? { get set }
  var viewController: UIViewController { get }
}

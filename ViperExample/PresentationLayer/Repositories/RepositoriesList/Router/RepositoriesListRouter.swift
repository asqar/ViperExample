//
//  Created by Askar Bakirov on 17/11/2016.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import UIKit


class RepositoriesListRouter {
  
}


// MARK: - RepositoriesListRouterInput

extension RepositoriesListRouter: RepositoriesListRouterInput {
  
  func openDetails(fromViewController viewController: UIViewController, repositoryID id: Int) {
    RepositoryDetailsModule.create().present(fromViewController: viewController, repositoryID: id)
  }
  
}

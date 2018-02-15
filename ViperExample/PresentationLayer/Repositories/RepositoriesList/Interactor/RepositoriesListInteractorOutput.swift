//
//  Created by Askar Bakirov on 17/11/2016.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import Foundation


protocol RepositoriesListInteractorOutput: class, NetworkErrorPresenterProtocol {
  
  func didRecieve(repositories: [Repository])
  
}

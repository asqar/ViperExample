//
//  Created by Askar Bakirov on 15.02.18.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import Foundation
import Alamofire


extension API {
  
  enum Tranding {
    case repositories(lang: Lang)
  }
  
}


// MARK: - APIMethodProtocol

extension API.Tranding: APIMethodProtocol {
  
  var method: HTTPMethod {
    return .get
  }
  
  var path: String {
    switch self {
    case .repositories:
      return AppDelegate.currentEnvironment.searchBaseUrl + "/repositories"
    }
  }
  
  var params: Parameters? {
    var params: Parameters = [
      "sort": "stars",
      "order": "desc",
    ]
    
    switch self {
    case .repositories(lang: let lang):
      params["q"] = "language:\(lang.rawValue)"
    }
    
    return params
  }
  
}

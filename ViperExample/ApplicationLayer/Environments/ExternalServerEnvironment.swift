//
//  Created by Askar Bakirov on 15.02.18.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import Foundation


class ExternalServerEnvironment: EnvironmentProtocol {
  
  let baseUrl = "https://api.github.com"
  
  var searchBaseUrl: String {
    return baseUrl + "/search"
  }
  
}

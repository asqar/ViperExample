//
//  Created by Askar Bakirov on 15.02.18.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import Foundation
import ObjectMapper


extension RepositoriesSearchWrap: StaticMappable {
  
  static func objectForMapping(map: Map) -> BaseMappable? {
    return RepositoriesSearchWrap()
  }
  
  mutating func mapping(map: Map) {
    items <- map["items"]
  }
  
}

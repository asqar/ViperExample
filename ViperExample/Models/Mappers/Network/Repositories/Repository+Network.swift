//
//  Created by Askar Bakirov on 15.02.18.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import Foundation
import ObjectMapper
import RealmSwift


extension Repository: StaticMappable {
  
  static func objectForMapping(map: Map) -> BaseMappable? {
    return Cache.default.load(byPK: map.JSON["id"]) as Repository
  }
  
  mutating func mapping(map: Map) {
    id <- map["id"]
    name <- map["name"]
    lang <- map["language"]
  }
  
}

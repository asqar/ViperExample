//
//  Created by Askar Bakirov on 15.02.18.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import Foundation
import RealmSwift


extension Repository: RealmMappableProtocol {
  
  static func mapFromRealmObject(_ object: RealmRepository) -> Repository {
    var model = Repository()
    
    model.id = object.id
    model.name = object.name
    model.lang = Lang(rawValue: object.lang)
    
    return model
  }
  
  func mapToRealmObject() -> RealmRepository {
    let model = RealmRepository()
    
    model.id = id
    model.name = name
    model.lang = lang.rawValue
    
    return model
  }
  
}

//
//  Created by Askar Bakirov on 15.02.18.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import Foundation
import RealmSwift


protocol RealmMappableProtocol {
  
  associatedtype RealmType: Object
  
  init()
  func mapToRealmObject() -> RealmType
  static func mapFromRealmObject(_ object: RealmType) -> Self
  
}

//
//  Created by Askar Bakirov on 15.02.18.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import Foundation
import RealmSwift


class RealmRepository: Object {
  
  @objc dynamic var id = 0
  @objc dynamic var name = ""
  @objc dynamic var lang = ""
  
  
  override class func primaryKey() -> String? {
    return "id"
  }
  
}

//
//  Created by Askar Bakirov on 15.02.18.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import Foundation
import RealmSwift


class Cache {
  
  static let `default` = Cache()
  
  private init() { }
  
  func load<PlainType: RealmMappableProtocol, PKType>(byPK pk: PKType) -> PlainType {
    let realm = try! Realm()
    if let realmObject = realm.object(ofType: PlainType.RealmType.self, forPrimaryKey: pk) {
      return PlainType.mapFromRealmObject(realmObject)
    } else {
      return PlainType()
    }
  }
  
}

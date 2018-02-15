//
//  Created by Askar Bakirov on 15.02.18.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import Foundation
import RealmSwift


class TrandingDataStore: TrandingDataStoreProtocol {
  
  func top(forLang lang: Lang) -> Results<RealmRepository> {
    let realm = try! Realm()
    return realm.objects(RealmRepository.self).filter(NSPredicate(format: "lang = %@", lang.rawValue))
  }
  
}

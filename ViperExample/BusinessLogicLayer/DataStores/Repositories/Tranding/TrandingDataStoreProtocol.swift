//
//  Created by Askar Bakirov on 15.02.18.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import Foundation
import RealmSwift


protocol TrandingDataStoreProtocol {
  func top(forLang lang: Lang) -> Results<RealmRepository>
}

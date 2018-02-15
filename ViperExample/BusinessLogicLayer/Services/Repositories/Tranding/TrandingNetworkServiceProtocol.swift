//
//  Created by Askar Bakirov on 15.02.18.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import Foundation
import Alamofire


protocol TrandingNetworkServiceProtocol {
  func loadTop(forLang lang: Lang, completion: @escaping (Result<[Repository]>) -> Void)
}

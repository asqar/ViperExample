//
//  Created by Askar Bakirov on 15.02.18.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import Foundation
import Alamofire


class TrandingNetworkService: TrandingNetworkServiceProtocol {
  
  func loadTop(forLang lang: Lang, completion: @escaping (Result<[Repository]>) -> Void) {
    Networking.requestJSON(API.Tranding.repositories(lang: lang)) {
      (result: Result<RepositoriesSearchWrap>)  in
      
      switch result {
      case .success(let response):
        completion(.success(response.items ?? []))
      case .failure(let error):
        completion(.failure(error))
      }
    }
  }
  
}

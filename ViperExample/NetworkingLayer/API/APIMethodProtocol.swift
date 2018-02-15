//
//  Created by Askar Bakirov on 15.02.18.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import Foundation
import Alamofire


protocol APIMethodProtocol: URLRequestConvertible {
  var method: HTTPMethod { get }
  var path: String { get }
  var params: Parameters? { get }
}


// MARK: - Defaults

extension APIMethodProtocol {
  
  var method: HTTPMethod {
    return .get
  }
  
  var params: Parameters? {
    return nil
  }
  
}


// MARK: - URLRequestConvertible

extension APIMethodProtocol {
  
  func asURLRequest() throws -> URLRequest {
    let url = try path.asURL()
    
    var urlRequest = Alamofire.URLRequest(url: url)
    urlRequest.httpMethod = method.rawValue
    
    switch method {
    case .get:
      return try Alamofire.URLEncoding.default.encode(urlRequest, with: params)
    case .post:
      return try Alamofire.JSONEncoding.default.encode(urlRequest, with: params)
    default:
      return urlRequest
    }
  }
  
}

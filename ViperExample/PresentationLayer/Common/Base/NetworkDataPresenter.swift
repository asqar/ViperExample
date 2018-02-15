//
//  Created by Askar Bakirov on 15.02.18.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import UIKit


class NetworkDataPresenter: NetworkErrorPresenterProtocol {
  
  func didRecieve(error: NetworkError) {
    let alert = UIAlertController(title: error.title, message: error.message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    AppDelegate.currentWindow.rootViewController?.present(alert, animated: true, completion: nil)
  }
  
}

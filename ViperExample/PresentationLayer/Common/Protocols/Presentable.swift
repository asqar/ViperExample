//
//  Created by Askar Bakirov on 15.02.18.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import UIKit


protocol Presentable {
  
  var viewController: UIViewController { get }
  
  func present()
  func present(fromViewController viewController: UIViewController)
  func presentModal(fromViewController viewController: UIViewController)
  func dissmiss()
  func dissmissModal()
  
}


extension Presentable where Self: UIViewController {
  
  var viewController: UIViewController {
    return self
  }
  
  func present() {
    AppDelegate.currentWindow.rootViewController = viewController
  }
  
  func present(fromViewController viewController: UIViewController) {
    viewController.navigationController?.pushViewController(self, animated: true)
  }
  
  func presentModal(fromViewController viewController: UIViewController) {
    modalPresentationStyle = .overCurrentContext
    viewController.present(self, animated: true, completion: nil)
  }
  
  func dissmiss() {
    let _ = navigationController?.popViewController(animated: true)
  }
  
  func dissmissModal() {
    dismiss(animated: true, completion: nil)
  }
  
}

//
//  Created by Askar Bakirov on 17/11/2016.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import Foundation
import RealmSwift


class RepositoriesListInteractor {

  weak var output: RepositoriesListInteractorOutput!
  
  var trandingDataStore: TrandingDataStoreProtocol!
  var trandingNetworkService: TrandingNetworkServiceProtocol!
  
  fileprivate var topSwiftRepositories: Results<RealmRepository>? {
    didSet {
      notificationToken?.invalidate()
      notificationToken = topSwiftRepositories?.observe {
        [weak self] (changes: RealmCollectionChange) in
        
        guard let `self` = self, let repositories = self.topSwiftRepositories else {
          return
        }
        
        self.output.didRecieve(repositories: repositories.map({ Repository.mapFromRealmObject($0) }))
      }
    }
  }
  fileprivate var notificationToken: NotificationToken?
  
  
  deinit {
    notificationToken?.invalidate()
  }
  
}


// MARK: - RepositoriesListInteractorInput

extension RepositoriesListInteractor: RepositoriesListInteractorInput {
  
  func loadSwiftRepositories() {
    topSwiftRepositories = trandingDataStore.top(forLang: .Swift)
    trandingNetworkService.loadTop(forLang: .Swift) {
      [weak self] result in
      
      switch result {
      case .success(repositories: let repositories):
        let realm = try! Realm()
        try! realm.write {
          realm.add(repositories.map({ $0.mapToRealmObject() }), update: true)
        }
      case .failure(let error):
        self?.output.didRecieve(error: error as! NetworkError)
      }
    }
  }
  
}

//
//  Created by Askar Bakirov on 15.02.18.
//  Copyright © 2018 Askar Bakirov. All rights reserved.
//

import UIKit
import TableKit


class RepositoryListCell: UITableViewCell {
  
  @IBOutlet weak var titleLabel: UILabel!
  
}


// MARK: - ConfigurableCell

extension RepositoryListCell: ConfigurableCell {
  
  func configure(with repository: Repository) {
    titleLabel.text = repository.name
  }
  
}

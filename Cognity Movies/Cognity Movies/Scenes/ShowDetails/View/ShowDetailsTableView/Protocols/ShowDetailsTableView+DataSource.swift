//
//  ShowDetailsTableView+DataSource.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation
import UIKit
extension ShowDetailsTableView: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch data[indexPath.row] {
        case .showImage(let imageUrl):
            let showImageCell: ShowDetailsShowImageTableViewCell? = self.dequeueReusableCell(for: indexPath)
            showImageCell?.setup(imageUrl: imageUrl)
            return showImageCell ?? UITableViewCell()
        case .showDetails(let showName, let showRating, let showDescription):
            let showDetailsCell: ShowDetailsShowDetailsTableViewCell? = self.dequeueReusableCell(for: indexPath)
            showDetailsCell?.setup(showName: showName, showRating: showRating, showDescription: showDescription)
            return showDetailsCell ?? UITableViewCell()
        }
    }
}

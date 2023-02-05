//
//  HomeTableView+DataSource.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation
import UIKit
extension HomeTableView: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch data[indexPath.row] {
        case .title:
            let titleCell: HomeTitleTableViewCell? = self.dequeueReusableCell(for: indexPath)
            return titleCell ?? UITableViewCell()
        case .noContent:
            let noContentCell: HomeNoContentTableViewCell? = self.dequeueReusableCell(for: indexPath)
            return noContentCell ?? UITableViewCell()
        case .show(let showData):
            let showCell: HomeShowTableViewCell? = self.dequeueReusableCell(for: indexPath)
            showCell?.setup(showData: showData)
            return showCell ?? UITableViewCell()
        }
    }
}

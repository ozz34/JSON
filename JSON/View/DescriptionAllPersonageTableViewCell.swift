//
//  DescriptionTableViewCell.swift
//  JSON
//
//  Created by Иван Худяков on 22.09.2022.
//

import UIKit

class DescriptionAllPersonageTableViewCell: UITableViewCell {

    @IBOutlet var descriptionImage: UIView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var statusLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    
    func configurationCell(with personage: Results) {
        
        nameLabel.text = "Personage: \(personage.name ?? "")"
        statusLabel.text = "Status: \(personage.status ?? "")"
        locationLabel.text = "Location: \(personage.location?.name ?? "")"
        
        NetworkManager.shared.fetchImage(from: personage.image) { imageData in
            self.imageView?.image = UIImage(data: imageData)
            self.imageView?.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
                }
    }
}
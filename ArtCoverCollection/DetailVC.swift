//
//  DetailVC.swift
//  ArtCoverCollection
//
//  Created by user on 18/02/2020.
//  Copyright © 2020 Artem Ulko. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var trackTitle = ""
   
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = UIImage(named: trackTitle)
        titleLabel.text = trackTitle
        titleLabel.numberOfLines = 0
    }

}

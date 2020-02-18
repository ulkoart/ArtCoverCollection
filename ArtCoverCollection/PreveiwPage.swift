//
//  PreveiwPage.swift
//  ArtCoverCollection
//
//  Created by user on 18/02/2020.
//  Copyright © 2020 Artem Ulko. All rights reserved.
//

import UIKit

private let reuseIdentifier = "ArtCover"

class PreveiwPage: UICollectionViewController {
    
    let imageNameArray = ["Alberto Ruiz - 7 Elements (Original Mix)",
                          "Dave Wincent - Red Eye (Original Mix)",
                          "E-Spectro - End Station (Original Mix)",
                          "Edna Ann - Phasma (Konstantin Yoodza Remix)",
                          "Ilija Djokovic - Delusion (Original Mix)",
                          "John Baptiste - Mycelium (Original Mix)",
                          "Lane 8 - Fingerprint (Original Mix)",
                          "Mac Vaughn - Pink Is My Favorite Color (Alex Stein Remix)",
                          "Metodi Hristov, Gallya - Badmash (Original Mix)",
                          "Veerus, Maxie Devine - Nightmare (Original Mix)"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageNameArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ArtCoverCell
        cell.coverImageView.image = UIImage(named: imageNameArray[indexPath.row])
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            if let indexPath = collectionView.indexPathsForSelectedItems?.first {
                let detailVC = segue.destination as! DetailVC
                detailVC.trackTitle = imageNameArray[indexPath.row]
            }
        }
    }

  
}

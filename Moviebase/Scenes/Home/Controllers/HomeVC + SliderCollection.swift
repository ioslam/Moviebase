//
//  HomeVC + SliderCollection.swift
//  Moviebase
//
//  Created by Eslam on 5/12/20.
//  Copyright © 2020 Eslam. All rights reserved.
//

import UIKit
//MARK: - Collection DataSource
extension HomeVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == 0 {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.Storyboard.sliderCell, for: indexPath) as! SliderCell
        return cell
        } else {
           let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.Storyboard.genreCell, for: indexPath) as! GenreCell
            return cell
        }
    }
    
    func configureSliderCollection() {
        SuperCollection.register(UINib(nibName: "SliderCell", bundle: nil), forCellWithReuseIdentifier: K.Storyboard.sliderCell)
        SuperCollection.register(UINib(nibName: "GenreCell", bundle: nil), forCellWithReuseIdentifier: K.Storyboard.genreCell)
    }
    
    
}
//MARK: - Collection Delegate
extension HomeVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let screen = view.frame.size
        let height = screen.height
        let width = screen.width
        if indexPath.row == 0 {
            return CGSize(width: width, height: height - 200)
        } else {
            return CGSize(width: width, height: height / 4)

        }
    }
    
}

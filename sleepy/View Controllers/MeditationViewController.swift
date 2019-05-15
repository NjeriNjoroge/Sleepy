//
//  MeditationViewController.swift
//  sleepy
//
//  Created by Grace Njoroge on 03/05/2019.
//  Copyright © 2019 Grace. All rights reserved.
//

import UIKit

class MeditationViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
  
  let cellId = "MeditationView"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    collectionView.backgroundColor = .white
    navigationController?.title = "Meditation"
    collectionView.register(MeditationCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
  }
  
  
  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 9
  }
  
  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! MeditationCollectionViewCell
    cell.backgroundColor = .blue
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: (view.frame.width / 3) - 16, height: 100)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return UIEdgeInsets(top: 24, left: 8, bottom: 24, right: 8)
  }
  
}

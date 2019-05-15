//
//  WaterCollectionViewCell.swift
//  sleepy
//
//  Created by Grace Njoroge on 15/05/2019.
//  Copyright © 2019 Grace. All rights reserved.
//

import UIKit

class WaterCollectionViewCell: UICollectionViewCell {
  
  var cloudImageView: UIImageView = {
    let img = UIImageView()
    img.translatesAutoresizingMaskIntoConstraints = false
    img.contentMode = .scaleAspectFit
    img.image = UIImage(named: "heavyRain")
    return img
  }()
  
  var volumeSlider: UISlider = {
    let slider = UISlider()
    slider.translatesAutoresizingMaskIntoConstraints = false
    slider.tintColor = .cyan
    return slider
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupCells()
  }
  
  fileprivate func setupCells() {
    addSubview(cloudImageView)
    addSubview(volumeSlider)
    
    NSLayoutConstraint.activate([
      cloudImageView.topAnchor.constraint(equalTo: topAnchor, constant: 12),
      cloudImageView.widthAnchor.constraint(equalTo: widthAnchor)
      ])
    
    NSLayoutConstraint.activate([
      volumeSlider.topAnchor.constraint(equalTo: cloudImageView.bottomAnchor, constant: 12),
      volumeSlider.widthAnchor.constraint(equalTo: widthAnchor)
      ])
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

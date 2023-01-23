//
//  PhotosCollectionViewCell.swift
//  UnsplashPhotosChiangMai
//
//  Created by Bulat Kamalov on 16.12.2022.
//

import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {
    
    var imageView: UIImageView = {
        let imgView = UIImageView()
        imgView.contentMode = .scaleAspectFill
        imgView.clipsToBounds = true
        imgView.layer.cornerRadius = 8
        return imgView
    }()
    
    static let identifier = "PhotosCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    
//    override func prepareForReuse() {
//        super.prepareForReuse()
//        imageView.image = nil
//    }
    
}

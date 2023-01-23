//
//  ViewController.swift
//  UnsplashPhotosChiangMai
//
//  Created by Bulat Kamalov on 16.12.2022.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    private let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    var imagesCollectionView = [listData(image: ImageData.image1),
                                listData(image: ImageData.image2),
                                listData(image: ImageData.image3),
                                listData(image: ImageData.image4),
                                listData(image: ImageData.image5),
                                listData(image: ImageData.image6),
                                listData(image: ImageData.image7),
                                listData(image: ImageData.image8),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(PhotosCollectionViewCell.self, forCellWithReuseIdentifier: PhotosCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        view.addSubview(collectionView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotosCollectionViewCell.identifier, for: indexPath) as! PhotosCollectionViewCell
        cell.imageView.image = imagesCollectionView[indexPath.row].image
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesCollectionView.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(
            width: (view.frame.size.width)-2,
            height: (view.frame.size.width)-2
        )
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt: Int) -> CGFloat {
        return 2
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        let detaiVC = DetailCollectionViewController()
        detaiVC.imageDetailVC.image = imagesCollectionView[indexPath.row].image
        detaiVC.modalPresentationStyle = .formSheet
        self.present( detaiVC,  animated: true,  completion: nil)
        print("Select Section\(indexPath.section) and row \(indexPath.row)")
    }
}


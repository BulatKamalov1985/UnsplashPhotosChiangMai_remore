//
//  DetailViewController.swift
//  UnsplashPhotosChiangMai
//
//  Created by Bulat Kamalov on 17.12.2022.
//

import UIKit

class DetailCollectionViewController: UIViewController {
    
    var detailView: UIView = {
        let detailView1 = UIView()
        detailView1.translatesAutoresizingMaskIntoConstraints = false
        detailView1.backgroundColor = .systemGray
        detailView1.layer.cornerRadius = 8
        return detailView1
    }()
    
    var imageDetailVC: UIImageView = {
        let imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.clipsToBounds = true
        imgView.layer.cornerRadius = 8
        return imgView
    }()
    
    var detailLabel: UILabel = {
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.backgroundColor = .white
        label1.clipsToBounds = true
        label1.layer.cornerRadius = 8
        label1.textAlignment = .center
        return label1
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(detailView)
        view.addSubview(imageDetailVC)
        view.addSubview(detailLabel)
        setupConstraintsDetailView()
        setupConstraintsDetailImage()
        setupConstraintsDetailLabel()
    }
    
    func setupConstraintsDetailView() {
        detailView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        detailView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        detailView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        detailView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func setupConstraintsDetailImage() {
        imageDetailVC.topAnchor.constraint(equalTo: detailView.topAnchor, constant: 10).isActive = true
        imageDetailVC.leadingAnchor.constraint(equalTo: detailView.leadingAnchor, constant: 10).isActive = true
        imageDetailVC.trailingAnchor.constraint(equalTo: detailView.trailingAnchor, constant: -10).isActive = true
        imageDetailVC.heightAnchor.constraint(equalToConstant: 300).isActive = true
    }
    
    func setupConstraintsDetailLabel() {
        detailLabel.topAnchor.constraint(equalTo: imageDetailVC.bottomAnchor, constant: 20).isActive = true
        detailLabel.leadingAnchor.constraint(equalTo: detailView.leadingAnchor, constant: 10).isActive = true
        detailLabel.trailingAnchor.constraint(equalTo: detailView.trailingAnchor, constant: -10).isActive = true
        detailLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}

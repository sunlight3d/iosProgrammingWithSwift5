//
//  LoginViewController.swift
//  bai01
//
//  Created by Nguyen Duc Hoang on 4/14/19.
//  Copyright © 2019 Nguyen Duc Hoang. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    private let backgroundImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "background.jpg")
        return imageView
    }()
    private let opacityView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(r: 3, g: 27, b: 45, alpha: 0.9)
//        view.backgroundColor = UIColor.red
        return view
    }()
    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "open-book.png")
        return imageView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutBackgroundImage()
        layoutOpacityView()
        layoutLogoImageView()
    }

}

extension LoginViewController {
    
    func layoutBackgroundImage(){
        view.addSubview(backgroundImage)
        backgroundImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        backgroundImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    func layoutOpacityView() {
        view.addSubview(opacityView)
        opacityView.leadingAnchor.constraint(equalTo: backgroundImage.leadingAnchor).isActive = true
        opacityView.trailingAnchor.constraint(equalTo: backgroundImage.trailingAnchor).isActive = true
        opacityView.topAnchor.constraint(equalTo: backgroundImage.topAnchor).isActive = true
        opacityView.bottomAnchor.constraint(equalTo: backgroundImage.bottomAnchor).isActive = true
    }
    func layoutLogoImageView() {
        view.addSubview(logoImageView)
        logoImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
    }
}

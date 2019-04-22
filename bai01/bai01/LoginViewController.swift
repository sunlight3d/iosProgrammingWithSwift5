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
    private let lblTitle:UILabel = {
        let label = UILabel()
        label.text = "INTERACT WITH YOUR VIDEOS"
        label.textColor = UIColor.white
        label.alpha = 0.4
        label.font = UIFont(name: "Helvetica-Light", size: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let lblLogoName:UILabel = {
        let label = UILabel()
        label.text = "TUTORIALS"
        label.textColor = UIColor.white
        label.font = UIFont(name: "Helvetica-Light", size: 50)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private var stackView1:UIStackView?
    private var stackView2:UIStackView?
    
    private let userIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "user.png")
        imageView.alpha = 0.4
        return imageView
    }()
    private let txtUserName: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = UIFont(name: "HelveticaNeue-Light", size: 20.0)
        textField.textColor = UIColor.white
        textField.attributedPlaceholder = NSAttributedString(string: "Enter your username",
                                                attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        return textField
    }()
    
    private let passwordIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "password.png")
        imageView.alpha = 0.4
        return imageView
    }()
    private let txtPassword: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.isSecureTextEntry = true
        textField.font = UIFont(name: "HelveticaNeue-Light", size: 20.0)
        textField.textColor = UIColor.white
        textField.attributedPlaceholder = NSAttributedString(string: "Enter your password",
                                                             attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        return textField
    }()
    private let btnSignIn: UIButton = {
        //247,119,40
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(r: 247, g: 119, b: 40, alpha: 1)
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 25.0)
        button.setTitle("SIGN IN", for: .normal)
        button.contentHorizontalAlignment = .center
        button.layer.cornerRadius = 5
        return button
    }()
    private let btnSignInFacebook: UIButton = {
        //247,119,40
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(r: 77, g: 101, b: 160, alpha: 1)
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 25.0)
        button.setTitle("Sign in with Facebook", for: .normal)
        
        button.imageView?.contentMode = .scaleAspectFit
        button.setImage(UIImage(named: "facebook.png"), for: .normal)
        button.imageView?.backgroundColor = UIColor.red
        button.contentHorizontalAlignment = .left
        button.imageEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        button.layer.cornerRadius = 5
        return button
    }()
    
    private let labelOR:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "OR"
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.alpha = 0.5
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        UIFont.familyNames.forEach({ familyName in
            let fontNames = UIFont.fontNames(forFamilyName: familyName)
            print(fontNames)
        })
         */
        layoutBackgroundImage()
        layoutOpacityView()
        layoutLogoImageView()
        layoutLblLogo()
        layoutLblTitle()
        layoutUserName()
        layoutPassword()
        layoutBtnSignIn()
        layoutLabelOR()
        layoutBtnSignInFacebook()
    }

}

extension LoginViewController {
    
    func layoutBackgroundImage(){
        view.addSubview(backgroundImage)
        backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        backgroundImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
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
        logoImageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 90).isActive = true
    }
    func layoutLblLogo() {
        view.addSubview(lblLogoName)
        lblLogoName.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lblLogoName.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 10).isActive = true
        
    }
    func layoutLblTitle() {
        view.addSubview(lblTitle)
        lblTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lblTitle.topAnchor.constraint(equalTo: lblLogoName.bottomAnchor, constant: 10).isActive = true
        
    }
    func layoutUserName() {
        stackView1 = UIStackView(arrangedSubviews: [userIcon, txtUserName])
        stackView1?.translatesAutoresizingMaskIntoConstraints = false
        
        stackView1?.axis = .horizontal
        view.addSubview(stackView1!)
        stackView1?.topAnchor.constraint(equalTo: lblTitle.bottomAnchor, constant: 40).isActive = true
        stackView1?.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        stackView1?.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        stackView1?.heightAnchor.constraint(equalToConstant: 40).isActive = true
        stackView1?.alignment = UIStackView.Alignment.center
        stackView1?.distribution = UIStackView.Distribution.fill
        stackView1?.spacing = 13
        userIcon.widthAnchor.constraint(equalToConstant: 35).isActive = true
        userIcon.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        let line:UIView = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.heightAnchor.constraint(equalToConstant: 0.7).isActive = true
        line.backgroundColor = UIColor.white
        line.alpha = 0.5
        view.addSubview(line)
        line.leadingAnchor.constraint(equalTo: stackView1!.leadingAnchor).isActive = true
        line.trailingAnchor.constraint(equalTo: stackView1!.trailingAnchor).isActive = true
        line.topAnchor.constraint(equalTo: stackView1!.bottomAnchor, constant: 10).isActive = true
        
    }
    func layoutPassword() {
        stackView2 = UIStackView(arrangedSubviews: [passwordIcon, txtPassword])
        stackView2?.translatesAutoresizingMaskIntoConstraints = false
        
        stackView2?.axis = .horizontal
        view.addSubview(stackView2!)
        stackView2?.topAnchor.constraint(equalTo: stackView1!.bottomAnchor, constant: 50).isActive = true
        stackView2?.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
        stackView2?.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        
        stackView2?.heightAnchor.constraint(equalToConstant: 40).isActive = true
        stackView2?.alignment = UIStackView.Alignment.center
        stackView2?.distribution = UIStackView.Distribution.fill
        stackView2?.spacing = 13
        passwordIcon.widthAnchor.constraint(equalToConstant: 35).isActive = true
        passwordIcon.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        let line:UIView = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.heightAnchor.constraint(equalToConstant: 0.7).isActive = true
        line.backgroundColor = UIColor.white
        line.alpha = 0.5
        view.addSubview(line)
        line.leadingAnchor.constraint(equalTo: stackView2!.leadingAnchor).isActive = true
        line.trailingAnchor.constraint(equalTo: stackView2!.trailingAnchor).isActive = true
        line.topAnchor.constraint(equalTo: stackView2!.bottomAnchor, constant: 10).isActive = true
    }
    func layoutBtnSignIn() {
        view.addSubview(btnSignIn)
        btnSignIn.topAnchor.constraint(equalTo: stackView2!.bottomAnchor, constant: 60).isActive = true
        btnSignIn.heightAnchor.constraint(equalToConstant: 60).isActive = true
        btnSignIn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        btnSignIn.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    }
    
    func layoutLabelOR() {
        view.addSubview(labelOR)
        labelOR.topAnchor.constraint(equalTo: btnSignIn.bottomAnchor).isActive = true
        labelOR.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        labelOR.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        labelOR.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    func layoutBtnSignInFacebook() {
        view.addSubview(btnSignInFacebook)
        btnSignInFacebook.topAnchor.constraint(equalTo: labelOR.bottomAnchor).isActive = true
        btnSignInFacebook.heightAnchor.constraint(equalToConstant: 60).isActive = true
        btnSignInFacebook.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        btnSignInFacebook.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    }
}

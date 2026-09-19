//
//  ViewController.swift
//  m2l2
//
//  Created by AndreyM on 18.09.2026.
//

import UIKit


class ViewController: UIViewController{
    //image
    var imageView : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = .image
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 25
        image.clipsToBounds = true
        
        return image
    }()
    
    //messsage(Сообщение)
    lazy var messageView = createLabel(text: "Сообщение")
    
    //textField(2 поля ввода)
    lazy var emailField = createTextField(placeholder: "Email")
    lazy var topicField = createTextField(placeholder: "Тема")
    
    //content(Содержимое)
    lazy var contentView = createLabel(text: "Содержимое")
    
    //contentText(Поле текста)
    var contentText : UITextView = {
        let contentText = UITextView()
        contentText.translatesAutoresizingMaskIntoConstraints = false
        contentText.backgroundColor = .systemGray5
        contentText.layer.cornerRadius = 20
        contentText.font = .systemFont(ofSize: 17)
        contentText.textContainerInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        
        return contentText
    }()
    
    //кнопка(отправить)
    var sendBtn : UIButton = {
       let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .black
        btn.setTitle("Отправить", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.layer.cornerRadius = 25
        
        
        return btn
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(imageView)
        view.addSubview(messageView)
        view.addSubview(emailField)
        view.addSubview(topicField)
        view.addSubview(contentView)
        view.addSubview(contentText)
        view.addSubview(sendBtn)
        
        NSLayoutConstraint.activate([
            //image
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            imageView.heightAnchor.constraint(equalToConstant: 205),
            
            //message
            messageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            messageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            messageView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 15),
            messageView.heightAnchor.constraint(equalToConstant: 50),
            
            //email
            emailField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            emailField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            emailField.topAnchor.constraint(equalTo: messageView.bottomAnchor, constant: 15),
            
            //topic
            topicField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            topicField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            topicField.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 15),
            
            //content
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            contentView.topAnchor.constraint(equalTo: topicField.bottomAnchor, constant: 15),
            contentView.heightAnchor.constraint(equalToConstant: 50),
            
            //contentText
            contentText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            contentText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            contentText.topAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 5),
            contentText.heightAnchor.constraint(equalToConstant: 150),
            
            //button
            sendBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            sendBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            sendBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            sendBtn.heightAnchor.constraint(equalToConstant: 50)
            
        ])
        
    }
    
    private func createLabel(text : String) -> UILabel{
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = .systemFont(ofSize: 17, weight: .bold)
        label.text = text
        
        return label
    }
    
    private func createTextField(placeholder : String) -> UITextField {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = placeholder
        textField.backgroundColor = .systemGray5
        textField.layer.cornerRadius = 25
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textField.leftViewMode = .always
        
        textField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textField.rightViewMode = .always
        
        return textField
        
    }
}



//class ViewController: UIViewController {
//    
//    //
//    var name: String = ""
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        let emailField = createTextField(placeholder: "Email")
//        let passwordField = createTextField(placeholder: "Password", isPassword: true)
//        
//        view.addSubview(emailField)
//        view.addSubview(passwordField)
//        
//        NSLayoutConstraint.activate([
//            //emailField
//            emailField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
//            emailField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
//            emailField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
//            
//            //passwordField
//            passwordField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
//            passwordField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
//            passwordField.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 20)
//        ])
//        
//    }
//    
//    private func createTextField(placeholder: String, isPassword: Bool = false) -> UITextField {
//        let textField = UITextField()
//        textField.placeholder = placeholder
//        textField.isSecureTextEntry = isPassword
//        textField.backgroundColor = .lightGray
//        textField.layer.cornerRadius = 25
//        //Tamic
//        textField.translatesAutoresizingMaskIntoConstraints = false
//        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        
//        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
//        textField.leftViewMode = .always
//        
//        textField.rightView = UILabel(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
//        textField.rightViewMode = .always
//        
//        return textField
//        
//    }
//
//
//}


//
//  ViewController.swift
//  uikit-with-code
//
//  Created by Сергей Емелин on 10.02.2025.
//

import UIKit

import SnapKit

class ViewController: UIViewController {
    
    lazy var TextField: UITextField = {
        
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.keyboardType = .numberPad
        return textField
        
    }()
    
    lazy var TextField2: UITextField = {
        
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.keyboardType = .numberPad
        return textField
        
    }()
    
    lazy var Label: UILabel = {
        let label = UILabel()
        label.text = "Введите два числа ..."
        label.font = .systemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    
    lazy var plusButton: UIButton = {
        let button = UIButton()
        button.setTitle("+", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 10
        button.backgroundColor = .blue
        return button
    }()
    
    lazy var minusButton: UIButton = {
        let button = UIButton()
        button.setTitle("-", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 10
        button.backgroundColor = .blue
        return button
    }()
    
    lazy var multiplyButton: UIButton = {
        let button = UIButton()
        button.setTitle("*", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 10
        button.backgroundColor = .blue
        return button
    }()
    
    lazy var divideButton: UIButton = {
        let button = UIButton()
        button.setTitle("/", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 10
        button.backgroundColor = .blue
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        setupUI()

    }
    
    func setupUI() {
        view.addSubview(TextField)
        view.addSubview(TextField2)
        view.addSubview(Label)
        view.addSubview(plusButton)
        view.addSubview(minusButton)
        view.addSubview(multiplyButton)
        view.addSubview(divideButton)
        
        Label.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(100)
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(40)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(40)
        }
        
        TextField.snp.makeConstraints { make in
            make.top.equalTo(Label.snp.bottom).offset(40)
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(40)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(40)
        }
        
        TextField2.snp.makeConstraints { make in
            make.top.equalTo(TextField.snp.bottom).offset(40)
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(40)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(40)
        }
        
        plusButton.snp.makeConstraints { make in
            make.top.equalTo(TextField2.snp.bottom).offset(40)
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(40)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(40)
        }
        
        minusButton.snp.makeConstraints { make in
            make.top.equalTo(plusButton.snp.bottom).offset(40)
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(40)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(40)
        }
        
        multiplyButton.snp.makeConstraints { make in
            make.top.equalTo(minusButton.snp.bottom).offset(40)
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(40)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(40)
        }
        
        divideButton.snp.makeConstraints { make in
            make.top.equalTo(multiplyButton.snp.bottom).offset(40)
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(40)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(40)
        }
        
        plusButton.addTarget(self, action: #selector(plus), for: .touchUpInside)
        minusButton.addTarget(self, action: #selector(minus), for: .touchUpInside)
        multiplyButton.addTarget(self, action: #selector(multiply), for: .touchUpInside)
        divideButton.addTarget(self, action: #selector(divide), for: .touchUpInside)
    }
    
    @objc func plus() {
        let a = TextField.text!
        let b = TextField2.text!
        
        guard let numberA = Double(a), let numberB = Double(b) else {
            Label.text = "введите два числа!"
            
            return
        }
        
        let sum = numberA + numberB
        let roundedSum = round(sum * 100000) / 100000
        
        Label.text = String(roundedSum)
    }
    
    @objc func minus() {
        let a = TextField.text!
        let b = TextField2.text!
        
        guard let numberA = Double(a), let numberB = Double(b) else {
            Label.text = "введите два числа!"
            
            return
        }
            
        let difference = numberA - numberB
        let roundedDifference = round(difference * 100000) / 100000
        
        Label.text = String(roundedDifference)
    }
    
    @objc func multiply() {
        let a = TextField.text!
        let b = TextField2.text!
        
        guard let numberA = Double(a), let numberB = Double(b) else {
            Label.text = "введите два числа!"
            
            return
        }
        
        let product = numberA * numberB
        let roundedProduct = round(product * 100000) / 100000
        
        Label.text = String(roundedProduct)
    }
    
    @objc func divide() {
        let a = TextField.text!
        let b = TextField2.text!
        
        guard let numberA = Double(a), let numberB = Double(b) else {
            Label.text = "введите два числа!"
            
            return
        }
        
        let quotient = numberA / numberB
        let roundedQuotient = round(quotient * 100000) / 100000
        
        Label.text = String(roundedQuotient)
    }
    
}

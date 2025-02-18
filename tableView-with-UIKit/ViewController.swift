//
//  ViewController.swift
//  tableView-with-UIKit
//
//  Created by Сергей Емелин on 11.02.2025.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    var person : Persons?
    
    lazy var photoImageView: UIImageView = {
        
        let imageView = UIImageView()
        
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    lazy var NameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .black
        return label
    }()

    lazy var SurnameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .black
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
        view.addSubview(photoImageView)
        view.addSubview(NameLabel)
        view.addSubview(SurnameLabel)
        
        if let person = person {
                    photoImageView.image = UIImage(named: person.photo)
                    NameLabel.text = person.name
                    SurnameLabel.text = person.surname
                }
        
        photoImageView.contentMode = .scaleAspectFill
        photoImageView.clipsToBounds = true
        photoImageView.layer.cornerRadius = 20
        
        photoImageView.snp.makeConstraints { make in
                make.top.equalTo(view.safeAreaLayoutGuide).offset(100)
                make.centerX.equalTo(view)
                make.height.equalTo(200)
                make.width.equalTo(photoImageView.snp.height)
        }

        NameLabel.snp.makeConstraints { make in
            make.top.equalTo(photoImageView.snp.bottom).offset(20)
            make.centerX.equalTo(view)

        }
        
        SurnameLabel.snp.makeConstraints { make in
            make.top.equalTo(NameLabel.snp.bottom).offset(20)
            make.centerX.equalTo(view)

        }
        
        
    }


}


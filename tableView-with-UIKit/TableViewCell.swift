
//  TableViewCell.swift
//  tableView-with-UIKit
//
//  Created by Сергей Емелин on 11.02.2025.
//

import UIKit
import SnapKit

class TableViewCell: UITableViewCell {
    
    lazy var photoImageView: UIImageView = {
        
        let imageView = UIImageView()
        
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    lazy var NameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .black
        return label
    }()

    lazy var SurnameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .black
        return label
    }()
    
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            
            contentView.addSubview(photoImageView)
            contentView.addSubview(NameLabel)
            contentView.addSubview(SurnameLabel)
            
            photoImageView.contentMode = .scaleAspectFill
            photoImageView.clipsToBounds = true
            photoImageView.layer.cornerRadius = 20
            
            photoImageView.snp.makeConstraints { make in
                    make.leading.equalTo(contentView).offset(20)
                    make.centerY.equalTo(contentView)
                    make.height.equalTo(80)
                    make.width.equalTo(photoImageView.snp.height)
            }
    
            NameLabel.snp.makeConstraints { make in
                make.leading.equalTo(photoImageView.snp.trailing).offset(20)
                make.centerY.equalTo(photoImageView.snp.centerY).offset(-10)

            }
            
            SurnameLabel.snp.makeConstraints { make in
                make.leading.equalTo(photoImageView.snp.trailing).offset(20)
                make.centerY.equalTo(photoImageView.snp.centerY).offset(10)

            }
            
        }

        required init?(coder: NSCoder) {
            fatalError("Error")
        }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

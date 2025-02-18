//
//  TableViewController.swift
//  tableView-with-UIKit
//
//  Created by Сергей Емелин on 11.02.2025.
//

import UIKit

class TableViewController: UITableViewController {
    
    var personArray = [Persons(name: "Cassandra", surname: "Ainsworth", photo: "Cassy"),
                       Persons(name: "Christopher", surname: "Miles", photo: "Chris"),
                       Persons(name: "Sidney", surname: "Jenkins", photo: "Sid"),
                       Persons(name: "Anthony", surname: "Stonem", photo: "Tony"),
                       Persons(name: "Anwar", surname: "Kharral", photo: "Anvar")
   ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return personArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        let person = personArray[indexPath.row]
        cell.photoImageView.image = UIImage(named: person.photo)
        cell.NameLabel.text = person.name
        cell.SurnameLabel.text = person.surname
        
//        lazy var photoImageView: UIImageView = {
//            
//            let imageView = UIImageView()
//            
//            imageView.contentMode = .scaleAspectFit
//            imageView.clipsToBounds = true
//            
//            return imageView
//        }()
//        
//        lazy var NameLabel: UILabel = {
//            let label = UILabel()
//            label.font = UIFont.systemFont(ofSize: 16)
//            label.textColor = .black
//            return label
//        }()
//
//        lazy var SurnameLabel: UILabel = {
//            let label = UILabel()
//            label.font = UIFont.systemFont(ofSize: 16)
//            label.textColor = .black
//            return label
//        }()
//        
//        cell.contentView.addSubview(photoImageView)
//        cell.contentView.addSubview(NameLabel)
//        cell.contentView.addSubview(SurnameLabel)
//        
//        photoImageView.contentMode = .scaleAspectFill
//        photoImageView.clipsToBounds = true
//        photoImageView.layer.cornerRadius = 20
//        
//        photoImageView.snp.makeConstraints { make in
//            make.leading.equalTo(cell.contentView).offset(20)
//            make.centerY.equalTo(cell.contentView)
//                make.height.equalTo(80)
//                make.width.equalTo(photoImageView.snp.height)
//        }
//
//        NameLabel.snp.makeConstraints { make in
//            make.leading.equalTo(photoImageView.snp.trailing).offset(20)
//            make.centerY.equalTo(photoImageView.snp.centerY).offset(-10)
//
//        }
//        
//        SurnameLabel.snp.makeConstraints { make in
//            make.leading.equalTo(photoImageView.snp.trailing).offset(20)
//            make.centerY.equalTo(photoImageView.snp.centerY).offset(10)
//
//        }
//
//        let person = personArray[indexPath.row]
//            photoImageView.image = UIImage(named: person.photo)
//            NameLabel.text = person.name
//            SurnameLabel.text = person.surname
            return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let viewController = ViewController()
            
            navigationController?.show(viewController, sender: self)
        
            viewController.person = personArray[indexPath.row]
        }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }    
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

//
//  DesciptionViewController.swift
//  AnimeWiki3
//
//  Created by Prakhar Saxena on 31/08/20.
//  Copyright © 2020 PrakharSaxena. All rights reserved.
//

import UIKit

class DesciptionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return DataSource.section.count
//        return 5
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataSource.description[character]![section].count
//        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = DataSource.description[character]?[indexPath.section][indexPath.row]
//        return UITableViewCell()
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return DataSource.section[section]
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        let header = view as? UITableViewHeaderFooterView
        header?.textLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        header?.textLabel?.textAlignment = .center
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        setupImage()
        setUpTableView()
        // Do any additional setup after loading the view.
    }
    
    var character = "Midoriya" {
        didSet{
            imageURL = DataSource.imageURL[character]
        }
    }
    
    var imageView = UIImageView()
    
    var imageURL = DataSource.imageURL["Midoriya"]
    
    var tableView = UITableView()
    
    func setupImage(){
        fetchImage(url: imageURL!!)
        view.addSubview(imageView)
        imageView.contentMode = .scaleAspectFit
        setupImageConstraints()
    }
    
    func fetchImage(url : URL) {
         DispatchQueue.global(qos: .userInitiated).async {[weak self] in
             let urlContents = try? Data(contentsOf: url)
             DispatchQueue.main.async {
                 if let imageData = urlContents, url == self?.imageURL {
                     self?.imageView.image = UIImage(data: imageData)
                 }
             }
        }
    }
    
    func setUpTableView(){
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
    }
    
    func setupImageConstraints(){
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            imageView.heightAnchor.constraint(equalToConstant: 300)
//            imageView.widthAnchor.constraint(equalToConstant: 300),
        ])
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

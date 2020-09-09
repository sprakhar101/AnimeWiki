//
//  ViewController.swift
//  AnimeWiki3
//
//  Created by Prakhar Saxena on 31/08/20.
//  Copyright © 2020 PrakharSaxena. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        setupImage()
        setupButtonStack()
    }
    
    var imageView = UIImageView()
    
    var stackView = UIStackView()
    
    var imageURL = URL(string: "https://upload.wikimedia.org/wikipedia/en/thumb/1/1d/My_Hero_Academia_-_Two_Heroes_poster.jpg/220px-My_Hero_Academia_-_Two_Heroes_poster.jpg")
    
    func setupImage(){
        fetchImage(url: imageURL!)
        view.addSubview(imageView)
        imageView.contentMode = .scaleAspectFit
        setupImageConstraints()
    }
    
    func setupButtonStack(){
        view.addSubview(stackView)
        stackView.alignment = .center
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        addButtons()
        setupButtonStackConstraints()
    }
    
    func addButtons(){
        let titles = ["My Hero Academia", "Kuroko No Basket", "Bleach"]
        for title in titles {
            let button = WikiButton()
            button.setTitle(title, for: .normal)
            button.addTarget(self, action: #selector(goToCharacters), for: .touchUpInside)
            stackView.addArrangedSubview(button)
        }
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
    
    @objc func goToCharacters(sender: UIButton) {
        let characterVC = CharacterViewController()
        if let theme = sender.titleLabel?.text{
            if theme == "My Hero Academia"{
                characterVC.theme = "bokuNoHero"
            } else if theme == "Bleach"{
                characterVC.theme = "bleach"
            } else {
                characterVC.theme = "kurokono"
            }
        }
        print("Tapped")
        navigationController?.pushViewController(characterVC, animated: true)
    }
    
    func setupButtonStackConstraints(){
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 100),
            stackView.widthAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    func setupImageConstraints(){
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
//            imageView.widthAnchor.constraint(equalToConstant: 300),
            imageView.heightAnchor.constraint(equalToConstant: 300)
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


//
//  CharacterViewController.swift
//  AnimeWiki3
//
//  Created by Prakhar Saxena on 31/08/20.
//  Copyright © 2020 PrakharSaxena. All rights reserved.
//

import UIKit

class CharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9851511121, green: 0.7217208743, blue: 0.01250273269, alpha: 1)
        setUpCharacterStack()
        // Do any additional setup after loading the view.
    }
    
    var theme = "Anime"
    
    var stackView = UIStackView()
    
    func setUpCharacterStack(){
        view.addSubview(stackView)
        stackView.alignment = .center
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 15
        addCharacters()
        setupCharactersStackConstraints()
    }
    
    func addCharacters(){
        var characters: [String] = []
        let themeIndex = DataSource.themes.firstIndex(of: theme)
        if let index = themeIndex{
            characters = DataSource.charaters[index]
        }
        for character in characters {
            let button = WikiButton()
            button.character = character
            button.setTitle(DataSource.characterFfullName[character], for: .normal)
            button.addTarget(self, action: #selector(goToDescription), for: .touchUpInside)
            stackView.addArrangedSubview(button)
        }
    }
    
    func setupCharactersStackConstraints(){
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.widthAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    @objc func goToDescription(sender: UIButton){
        let descriptionVC = DesciptionViewController()
        if let button = sender as? WikiButton{
            descriptionVC.character = button.character
        }
        print("hello here")
        navigationController?.pushViewController(descriptionVC, animated: true)
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

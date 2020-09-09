//
//  dataSource.swift
//  AnimeWiki
//
//  Created by Prakhar Saxena on 26/08/20.
//  Copyright © 2020 PrakharSaxena. All rights reserved.
//

import Foundation

class DataSource{
    static var imageURL = [
        "Midoriya" : URL(string: "https://vignette.wikia.nocookie.net/bokunoheroacademia/images/d/d9/Izuku_Midoriya_school_profile.png/revision/latest?cb=20190129015623"),
        "Bakugo" : URL(string: "https://vignette.wikia.nocookie.net/bokunoheroacademia/images/8/83/Katsuki_Bakugo_School_Uniform_Full_Body.png/revision/latest?cb=20190812065435"),
        "AllMight" : URL(string: "https://vignette.wikia.nocookie.net/bokunoheroacademia/images/5/55/All_Might_Hero_Form_Full_Body.png/revision/latest?cb=20190129015644"),
        "Ichigo" : URL(string: "https://1.bp.blogspot.com/_JOn4qp7SpVA/TIqXEgAOIUI/AAAAAAAACmY/k7qyQs2J89E/s1600/ichigo.jpg"),
        "rukiya" : URL(string: "https://vignette.wikia.nocookie.net/b-ua/images/9/9c/Rukia.jpg/revision/latest/scale-to-width-down/340?cb=20130420081916"),
        "innoue" : URL(string: "https://i.pinimg.com/originals/8c/2a/21/8c2a2178045f019624c75f066f749c78.jpg"),
        "kagami" : URL(string: "https://64.media.tumblr.com/d54cf1d05e921631c0bc5dd22eea5dca/tumblr_pn5iplkATD1u1ycqw_540.jpg"),
        "kuroko" : URL(string: "https://i.pinimg.com/originals/10/ce/42/10ce42004713a3281006cadedb454255.jpg"),
        "akashi" : URL(string: "https://i.pinimg.com/originals/00/e9/a8/00e9a82baad7c57d89e5e9408b385922.jpg")
    ]
    
    static var themes = ["bokuNoHero", "bleach", "kurokono"]
    
    static var charaters = [["Midoriya", "Bakugo", "AllMight"],["Ichigo","rukiya","innoue"],["kagami","kuroko","akashi"]]
    
    static var characterFfullName = [
        "Midoriya" : "Midoriya Izuku", "Bakugo" : "Bakugo Katsuki", "AllMight" : "All Might (Toshinori Yagi)",
        "Ichigo" : "Ichigo Kurosaki", "rukiya" : "Rukia Kuchiki", "innoue" : "Orihime Innoue",
        "kagami" : "Taiga Kagami", "kuroko" : "Tetsuya Kuroko", "akashi" : "Seijuro Akashi"]
    
    static var section = ["Biographical Imformation", "Personal Description", "Status", "First Apperance", "Portrayal"]
    
    static var description = [
        "Midoriya" : [["Full Name: Midoriya Izuku", "Alias : Deku"],
                      ["Birthday: July 15", "Age: 16",  "Gender: Male", "Height: 166 cm", "hair Color: Green", "Eye Color: Green", "Blood Type: O", "Quiurk: Quirkless(Formerly), One For All"],
                      ["Status: Alive", "Birthplace: Near Shizuoka Prefecture", "Family: Inko Midoriya (Mother)", "Occupation: Student", "Affiliation: U.A. High School", "Team(s): Team Midoriya (Leader), Shie Hassaikai Raid Team", "Fighting Style: Melee Combat, Shoot Style, Long Ranged Combat" ],
                      ["Manga Debut: Chapter 1", "Anime Debut: Episode 1"],
                      ["Japanese Voice: Daiki Yamashita (Vomic & Anime)", "English Voice: Justin Briner"]],
        "Bakugo" : [["Full Name: Bakugō Katsuki", "Alias : Kachchan"],
                    ["Birthday: April 20", "Age: 16",  "Gender: Male", "Height: 172 cm", "hair Color: Ash Blond", "Eye Color: Red", "Blood Type: A", "Quiurk: Explosion"],
                    ["Status: Alive", "Birthplace: Near Shizuoka Prefecture", "Family: Masaru Bakugo (Father), Mitsuki Bakugo (Mother)", "Occupation: Student", "Affiliation: U.A. High School", "Team(s): Team Bakugo (Leader)", "Fighting Style: Melee + Ranged Combat" ],
                    ["Manga Debut: Chapter 1", "Anime Debut: Episode 1"],
                    ["Japanese Voice: Nobuhiko Okamoto (Anime)", "English Voice: Clifford Chapin"]],
        "AllMight" : [["Full Name: Yagi Toshinori", "Alias : All Might", "Epithet: Symbol of Peace"],
                      ["Birthday: June 10",  "Gender: Male", "Height: 220 cm", "Weight: 255 kg", "hair Color: Blond", "Eye Color: Light Blue", "Blood Type: A", "Quiurk: Quirkless (Originally & Currently), One For All (Formerly)"],
                      ["Status: Alive", "Birthplace: Tokyo", "Occupation: Pro Hero (Formerly), Teacher", "Affiliation: U.A. High School", "Team(s): Hideout Raid Team", "Fighting Style: Melee Combat" ],
                      ["Manga Debut: Chapter 1", "Anime Debut: Episode 1"],
                      ["Japanese Voice: Kenta Miyake (Anime)", "English Voice: Christopher R. Sabat"]],
        "Ichigo" : [["Full Name: Ichigo Kurosaki", "Race: Human (Quincy)"],
                    ["Birthday: July 15", "Age: 27", "Gender: Male", "Height: 181 cm", "Weight: 66 kg", "Blood type: A", "Education: Mashiba J. H. School"],
                    ["Affiliation: Loosely Soul Society", "Previous Affiliation: Unofficially Visored Xcution", "Base of Operation: Karakura Town", "Zanpakuto(Shikai): Zangetsu", "Zanpakuto(Bankai): Tensa Zangetsu"],
                    ["Manga: Volume 1, Chapter 1", "Anime: Episode 1"],
                    ["Japanese: Masakazu Morita", "English: Johnny Yong Bosch"]],
        "rukiya" : [["Full Name: Rukia Kuchiki", "Race: Soul"],
                    ["Birthday: January 14", "Gender: Female", "Height: 144 cm", "Weight: 33 kg", "Education: Shin'o Academy"],
                    ["Affiliation: Gptei 13, Soul Society", "Profession: Shinigami", "Base of Operation: Seireitei, Soul Society","Position: Captain of 13th Division", "Zanpakuto(Shikai): Sode no Shirayuki", "Zanpakuto(Bankai): Hakka no Togame"],
                    ["Manga: Volume 1, Chapter 1", "Anime: Episode 1"],
                    ["Japanese: Fumiko Orikasa", "English: Michelle Ruff"]],
        "innoue" : [["Full Name: Orihime Innoue", "Race: Human"],
                    ["Birthday: September 3", "Gender: Female", "Age: 27", "Height: 157 cm", "Weight: 49 kg", "Blood type: B", "Education: Karakura High School"],
                    ["Affiliation: Kuroskai Clinic", "Base of Operation: Karakura Town","Special Skill: Shun Shun Rikka"],
                    ["Manga: Volume 1, Chapter 2", "Anime: Episode 2"],
                    ["Japanese: Yuki Matsuoka", "English: Stephanie Sheh"]],
        "kagami" : [["Full Name: Taiga Kagami", "Kanji: 火神 大我"],
                    ["Birthday: August 2", "Gender: Male", "Height: 190 cm", "Weight: 82 kg", "Age: 16", "Blood type: A", "Education: Seirin High School"],
                    ["Team: Seirin", "      Team Vorpal Swords", "Positon: Power Forward","Talent: Self Alley Oop", "        Jumping Power", "        Lane Up", "        Air Walking", "        Meteor jam", "        Animal Instinct", "        Zone", "        Direct Drive Zone"],
                    ["Manga: Chapter 1", "Anime: Episode 1"],
                    ["Japanese: Yūki Ono"]],
        "kuroko" : [["Full Name: Tetsuya Kuroko", "Kanji: 黒子 テツヤ"],
                    ["Birthday: January 31", "Gender: Male", "Height: 168 cm", "Weight: 57 kg", "Age: 16", "Blood type: A", "Education: Seirin High School"],
                    ["Team: Teiko (former)","      Seirin", "      Team Vorpal Swords", "Talent: Misdirection", "        Invisible Pass", "        Cyclone Pass", "        Ignite Pass", "        Ignite Pass kai", "        Vanishing Drive", "        Misdirection Overflow", "        Phantom Shot", "        Quasi Emperor Eye"],
                    ["Manga: Chapter 1", "Anime: Episode 1"],
                    ["Japanese: Ami Koshimizu"]],
        "akashi" : [["Full Name: Seijūrō Akashi", "Kanji: 赤司 征十郎"],
                    ["Birthday: December 20", "Gender: Male", "Height: 173 cm", "Weight: 64 kg", "Age: 16", "Blood type: AB", "Education: Rakuzan High School"],
                    ["Team: Teiko (former)","      Rakuzan", "      Team Vorpal Swords", "Talent: Emperor Eye", "        Zone", "        Intelligence", "        Ankle Breaking", "        Perffect Rhythmed Plays", "        Court Vision", "        Sleight of ball Handling"],
                    ["Manga: Chapter 113", "Anime: Episode 138"],
                    ["Japanese: Hiroshi Kamiya"]]
    ]
}


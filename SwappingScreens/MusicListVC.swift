//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by AlexanderN on 29.08.17.
//  Copyright © 2017 AlexanderN. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black

        // Do any additional setup after loading the view.
    }
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func loadThirdScreenPressed(_ sender: Any) {
        //let songTitle = 1
        let songTitle = ("The Beatles - Let it be", "LetItBe.jpeg")
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender as? (String, String) {
                destination.selectedSong = song.0
                destination.selectedImage = song.1
            } else {
                destination.selectedSong = "Error 404"
                destination.selectedImage = "Error.jpg"
            }
            
        }
        
    }
 

}

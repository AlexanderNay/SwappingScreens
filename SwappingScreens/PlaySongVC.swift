//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by AlexanderN on 29.08.17.
//  Copyright © 2017 AlexanderN. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    @IBOutlet weak var songTitleLbl: UILabel!
    
 
    @IBOutlet weak var imageSong: UIImageView!
    
    private var _selectedSong: String!
    
    var selectedSong: String {
        get {
            return _selectedSong
        } set {
            _selectedSong = newValue
        }
    }
    
    private var _selectedImage: String!
    
    var selectedImage: String {
        get {
            return _selectedImage
        } set {
            _selectedImage = newValue
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        songTitleLbl.text = _selectedSong!
        imageSong.image = UIImage(named: _selectedImage)!

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

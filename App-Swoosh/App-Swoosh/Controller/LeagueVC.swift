//
//  LeagueVC.swift
//  App-Swoosh
//
//  Created by Hector Morales veloz on 6/28/19.
//  Copyright © 2019 Hector Morales veloz. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    @IBOutlet weak var nextBtn: BorderButton!
    
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens", Button: sender)
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens", Button: sender)
    }
    
    @IBAction func onCoEdTapped(_ sender: Any) {
        selectLeague(leagueType: "coed", Button: sender)
    }
    
    func selectLeague(leagueType: String, Button: Any){
        player.desiredLeague = leagueType 
        nextBtn.isEnabled = true
        
        let btn = Button as! UIButton
        btn.backgroundColor = UIColor.darkGray
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }

}

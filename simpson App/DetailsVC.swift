//
//  DetailsVC.swift
//  simpson App
//
//  Created by Esna nur Yılmaz on 9.08.2023.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var İmageView: UIImageView!
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    var selectedSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label1.text = selectedSimpson?.name
        label2.text = selectedSimpson?.job
        İmageView.image = selectedSimpson?.image
        
        
        
        
        
    }
    

  
}

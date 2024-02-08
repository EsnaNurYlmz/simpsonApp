//
//  ViewController.swift
//  simpson App
//
//  Created by Esna nur Yılmaz on 9.08.2023.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var mySimpson = [Simpson]()
    var chosenSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       tableView.dataSource = self
       tableView.delegate = self
        
        
        let hamer = Simpson(name: "hamer simpson", job: "backer",  image : UIImage(named : "homer simpson")!)
        
        let bob = Simpson(name: "bob simpson", job: "cooker", image: UIImage(named: "bob simpson")!)
        
        let marge = Simpson(name: "marge simpson", job: "housewife", image: UIImage(named: "marge simpson")!)
        
        let lisa = Simpson(name: "lisa simpson", job: "doctor", image: UIImage(named: "lisa simpson")!)
        let maggie = Simpson(name: "maggie simpson", job: "baby", image: UIImage(named: "maggie simpson")!)
        
        
        mySimpson.append(hamer)
        mySimpson.append(bob)
        mySimpson.append(marge)
        mySimpson.append(lisa)
        mySimpson.append(maggie)
        
        
    }

  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let  cell = UITableViewCell ()
        cell.textLabel?.text = mySimpson[indexPath.row].name
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         chosenSimpson = mySimpson[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue .identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedSimpson = chosenSimpson
        }
            
    }
    
}


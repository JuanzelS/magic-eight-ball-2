//
//  ViewController.swift
//  magic eight ball 2
//
//  Created by Juanzel Staton on 11/25/25.
//

import UIKit

class ViewController: UIViewController {

    let answers = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure, why not?", "Same", "Tell me more", "Out to lunch", "Reply hazy, try again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no", "Absolutely not"]
    
    
    @IBOutlet weak var answerlable: UILabel!
    
    @IBAction func buttontapped(_ sender: Any)
    {
        
        answerlable.text=answers.randomElement() ?? "Error"
        
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }


        answerlable.text=answers.randomElement() ?? "Error"
    }

}


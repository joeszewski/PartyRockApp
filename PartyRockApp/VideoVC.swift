//
//  VideoVC.swift
//  PartyRockApp
//
//  Created by Joe Janiszewski on 11/7/16.
//  Copyright © 2016 Joe Janiszewski. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    @IBAction func BackBtnPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    private var _partyRock: PartyRock!
    
    var partyRock: PartyRock {
        get {
            return _partyRock
        } set {
            _partyRock = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLbl.text = partyRock.videoTitle
        webView.loadHTMLString(partyRock.videoURL, baseURL: nil)
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

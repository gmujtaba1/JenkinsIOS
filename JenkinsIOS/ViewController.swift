//
//  ViewController.swift
//  JenkinsIOS
//
//  Created by Ghulam Mujtaba on 10/11/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var jenkinSwitch: UISwitch!
    @IBOutlet weak var lblJenkinStatus: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateJenkinStatus(enabled: jenkinSwitch.isOn)
    }

    @IBAction func jenkinSwitchAction(_ sender: Any) {
        guard let state = sender as? UISwitch else {return}
        updateJenkinStatus(enabled: state.isOn)
    }
    
    private func updateJenkinStatus(enabled: Bool) {
        lblJenkinStatus.text = enabled ? "Enabled" : "Disabled"
    }
}


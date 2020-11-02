//
//  ViewController.swift
//  WherebySFTest
//
//  Created by Yosif Iliev on 30.10.20.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) { [weak self] in
            
            let testUrl = "https://metime.whereby.com/ddc13116-e4a7-40e3-a355-538ed0b737b4?skipMediaPermissionPrompt&embed&displayName=Yoko";
            guard let url = URL(string: testUrl), let self = self else { return }
            
            let safariVC = SFSafariViewController(url: url)
            self.present(safariVC, animated: true, completion: nil)
        }
    }
}


//
//  ViewController.swift
//  Journal
//
//  Created by Ｍason Chang on 2017/8/4.
//  Copyright © 2017年 Ｍason Chang iOS#4. All rights reserved.
//

import UIKit

class JournalListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var journalListTableView: UITableView!
    
    
    
    
    var rowHeight = 212
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
        self.journalListTableView.delegate = self
        self.journalListTableView.dataSource = self
        
        
        
        
        
        
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = journalListTableView.dequeueReusableCell(withIdentifier: "JournalCell", for: indexPath) as? JournalListTableViewCell else {
            
            return JournalListTableViewCell()
        }
        
       
        
        
        
        
        
        return journalCellLayout(cell, rowAt: indexPath)
        
        
        
    }
    
    

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(rowHeight)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}


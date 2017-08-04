//
//  ViewController.swift
//  Journal
//
//  Created by Ｍason Chang on 2017/8/4.
//  Copyright © 2017年 Ｍason Chang iOS#4. All rights reserved.
//

import UIKit
import CoreData

var addNew = false
var editCellIndexPath = -1

class JournalListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var journalListTableView: UITableView!
    
    
    
    
    var rowHeight = 212
    
    var addJournalManager: NSManagedObjectContext!
    
    var journals = [Journal]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
        self.journalListTableView.delegate = self
        self.journalListTableView.dataSource = self
        
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        //swiftlint:disable force_cast
        addJournalManager = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        //swiftlint:enable force_cast
        loadData()
        self.journalListTableView.reloadData()
        
    }
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return journals.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = journalListTableView.dequeueReusableCell(withIdentifier: "JournalCell", for: indexPath) as? JournalListTableViewCell else {
            
            return JournalListTableViewCell()
        }
        cell.selectionStyle = .none

        let tap = UITapGestureRecognizer(target: self, action: #selector(goToEdit))
        editCellIndexPath = indexPath.row
        cell.journalImageView.addGestureRecognizer(tap)
        cell.journalImageView.isUserInteractionEnabled = true
       
        
        
        return journalCellLayout(cell, rowAt: indexPath)
    }
    
    

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(rowHeight)
    }
    
    func goToEdit(sender: UITapGestureRecognizer){
        
        addNew = false
        
        let taplocation = sender.location(in: self.journalListTableView)
        
        let indexPath = self.journalListTableView.indexPathForRow(at: taplocation)
        
        print(indexPath)
        
        guard let indexPathRow = indexPath?.row else {
            return
        }
        
        editCellIndexPath = indexPathRow
        
        
        self.performSegue(withIdentifier: "AddOrEditJournal", sender: self)
        
        
        
    }
    
    
    
    
    
    
    
    func loadData(){
        
        let journalRequest: NSFetchRequest<Journal> = Journal.fetchRequest()
        do {
            journals = try addJournalManager.fetch(journalRequest)
        } catch {
            print("Could not load data from database \(error.localizedDescription)")
        }
        
    }
    
    
    
    @IBAction func rightBarButton(_ sender: Any) {
        
        addNew = true
        
        print(editCellIndexPath)
        
        self.performSegue(withIdentifier: "AddOrEditJournal", sender: self)
        
    }
    
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}


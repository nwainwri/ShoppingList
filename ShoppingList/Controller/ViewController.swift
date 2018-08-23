//
//  ViewController.swift
//  ShoppingList
//
//  Created by Jamie on 2018-08-22.
//  Copyright © 2018 Jamie. All rights reserved.
//

import UIKit




class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var itemUITableView: UITableView!
    
    @IBOutlet weak var editUIButton: UIButton!
    
    
    
    var demoData = DemoData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.itemUITableView.setEditing(true, animated: true)
        self.itemUITableView.allowsMultipleSelectionDuringEditing = false;
        
    }
    //MARK: - TableView Setup
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return demoData.currentItemsArray.count
        
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTableViewCell", for: indexPath) as! ItemTableViewCell
        
        let thisItem = demoData.currentItemsArray[indexPath.row]
        
        cell.amountUILabel.text = "\(thisItem.amount)"
        cell.itemUILabel.text = thisItem.title
        
        if (thisItem.status) // active
        {
            cell.itemUILabel.textColor = UIColor .lightGray
            cell.amountUILabel.textColor = UIColor .lightGray
        }
        else
        {
            cell.itemUILabel.textColor = UIColor .black
            cell.amountUILabel.textColor = UIColor .black
        }
        return cell
    }
    
    
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath)
    {
        
        demoData.currentItemsArray[indexPath.row].status = !demoData.currentItemsArray[indexPath.row].status
        itemUITableView .reloadData()
    }
    
    //MARK: - Delete/Edit Item
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.delete) {
            // handle delete (by removing the data from your array and updating the tableview)
            demoData.removeListItem(itemNumber: indexPath.row)
            tableView.deleteRows(at: [indexPath],
                                 with: UITableViewRowAnimation.top)
        }
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedObject = demoData.currentItemsArray[sourceIndexPath.row]
        demoData.currentItemsArray.remove(at: sourceIndexPath.row)
        demoData.currentItemsArray.insert(movedObject, at: destinationIndexPath.row)
    }
    
    //MARK: - Clear/Edit Buttons
    
    @IBAction func clearItemList(_ sender: UIButton) {
        demoData.currentItemsArray.removeAll()
        itemUITableView.reloadData()
    }
    
    @IBAction func showEditing(_ sender: UIButton)
    {
        if(self.itemUITableView.isEditing == true)
        {
            self.itemUITableView.setEditing(false, animated: true)
            self.editUIButton.setTitle("Edit", for: .normal)
        }
        else
        {
            self.itemUITableView.setEditing(true, animated: true)
            self.editUIButton.setTitle("Done", for: .normal)
        }
    }
}

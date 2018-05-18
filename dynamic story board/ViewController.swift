//
//  ViewController.swift
//  dynamic story board
//
//  Created by Pawan Yadav on 18/05/18.
//  Copyright © 2018 invetech. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    
    
    
    var mytableview = UITableView()
    let arr = ["a","b","c","a","b","c","a","b","c","a","b","c"]

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        navigationItem.title = "My Tableview"
        
      //  mytableview = UITableView(frame: self.view.bounds, style: UITableViewStyle.plain)
        mytableview = UITableView(frame: CGRect(x: 0, y: UIScreen.main.bounds.height/2, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2), style: .plain)
        
        
        mytableview.dataSource = self
        mytableview.delegate = self
        mytableview.backgroundColor = UIColor.white
        mytableview.separatorStyle = .none
        mytableview.showsHorizontalScrollIndicator = false
        mytableview.showsVerticalScrollIndicator = false
        
        mytableview.register(tableCell.self, forCellReuseIdentifier: "cell")
        
   
        view.addSubview(mytableview)
        
    }

  
    //MARK:- tableview Delegate...
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arr.count
    }
    
 
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = mytableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!
        tableCell
        
       cell.textLabel?.text = "This is row \(arr[indexPath.row])"
        cell.textLabel?.textColor = UIColor.blue
        cell.selectionStyle = .none
//        let cell =
//            self.tableView.dequeueReusableCell(withIdentifier:
//                "AttractionTableCell", for: indexPath)
//                as! AttractionTableViewCell
        
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        //let secondViewController = nextfile()
        
        self.navigationController?.pushViewController(nextfile(), animated: true)
        //self.present(secondViewController, animated: false, completion: nil)
    }
    
}


class tableCell : UITableViewCell
{
 
}


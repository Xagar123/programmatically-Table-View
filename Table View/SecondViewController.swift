//
//  SecondViewController.swift
//  Table View
//
//  Created by Admin on 26/11/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    let tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Grouped"
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        //view.backgroundColor = .gray
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    
}

extension SecondViewController: UITableViewDelegate, UITableViewDataSource{
        func numberOfSections(in tableView: UITableView) -> Int {
            return 5
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Hello world \(indexPath.row+1)"
        cell.imageView?.image = UIImage(systemName: "house")
        cell.imageView?.tintColor = .systemBlue
         cell.accessoryType = .disclosureIndicator
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}




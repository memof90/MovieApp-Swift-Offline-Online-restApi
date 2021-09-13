//
//  ViewController.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 10/9/21.
//

import UIKit

class ViewController: UIViewController {
    

    
//    MARK: - IBOutlet
    @IBOutlet weak var  tableView : UITableView!
    
    let database = DatabaseHandler.shared
    
//    var movies = [Movies]()
    var movies : [Movies]? {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
      
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UserTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        NetworkServiesMovies.shared.sycnUsers(searchTerm: "popular") {
            self.movies = self.database.fetch(Movies.self)
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //        let results = database.fetch(Movies.self)
        //        print(results.map { $0.title})
                movies = database.fetch(Movies.self)
    }
    
 


}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserTableViewCell")!
        cell.textLabel?.text = movies?[indexPath.row].title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
}


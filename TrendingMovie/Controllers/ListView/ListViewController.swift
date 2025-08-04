//
//  ListViewController.swift
//  TrendingMovie
//
//  Created by Arqam Owais on 03/08/2025.
//

import UIKit

class ListViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet private var tableView: UITableView!
    
    var viewModel: ListViewModel = ListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.viewModel.getData()
    }
    
    // MARK: - Private Methods
    
    private func configureView() {
        // Set title
        self.title = "Trending Movies"
        
        // Setup tableview
        self.setupTableView()

    }
    
    /// Configures the table view's appearance and behavior.
    ///
    /// This method sets the background color, assigns the data source and delegate,
    /// and registers the cell type for reuse.
    private func setupTableView() {
        
        // Set background color of tableView
        self.tableView.backgroundColor = .clear
        
        // Set dataSource and delegate of tableView
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        // Register cell to display
        self.registerCell()
    }

}

// MARK: - Helper methods for tableview and cell

extension ListViewController {
    
    /// Registers the default UITableViewCell class for reuse in the table view.
    ///
    /// This sets up the table view to reuse cells with the reuse identifier `"cell"`,
    /// which improves performance by reusing existing cell instances instead of creating new ones.
    private func registerCell() {
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
}

// MARK: - UITableViewDataSource methods implementation

extension ListViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.viewModel.numberOfSections()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.numberOfRows(inSection: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
}

// MARK: - UITableViewDelegate methods implementation

extension ListViewController: UITableViewDelegate {
    
}

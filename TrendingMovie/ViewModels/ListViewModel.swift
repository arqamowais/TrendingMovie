//
//  ListViewModel.swift
//  TrendingMovie
//
//  Created by Arqam Owais on 05/08/2025.
//

import Foundation

/// ViewModel responsible for managing data displayed in the list view.
class ListViewModel {
    
    /// Returns the number of sections in the data model.
    ///
    /// - Returns: An integer representing the number of sections. In this case, always returns `1`.

    func numberOfSections() -> Int {
        return 1
    }
    
    /// Returns the number of rows in a given section.
    ///
    /// - Parameter section: The index of the section.
    /// - Returns: An integer representing the number of rows in the specified section.
    func numberOfRows(inSection section: Int) -> Int {
        return 10
    }
}

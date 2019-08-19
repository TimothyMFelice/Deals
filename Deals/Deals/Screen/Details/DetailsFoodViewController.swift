//
//  DetailsFoodViewController.swift
//  Deals
//
//  Created by Timothy Felice on 8/8/19.
//  Copyright © 2019 Timothy Felice. All rights reserved.
//

import UIKit

class DetailsFoodViewController: UIViewController {
    @IBOutlet weak var detailsFoodView: DetailsFoodView?
    var viewModel: DetailsViewModel? {
        didSet {
            updateView()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func updateView() {
        if let viewModel = viewModel {
            detailsFoodView?.priceLabel?.text = viewModel.price
            detailsFoodView?.hoursLabel?.text = viewModel.isOpen
            detailsFoodView?.locationLabel?.text = viewModel.phoneNumber
            detailsFoodView?.ratingsLabel?.text = viewModel.rating
        }
    }
    
}

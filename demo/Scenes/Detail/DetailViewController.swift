//
//  DetailViewController.swift
//  demo
//
//  Created by Ricardo Antolin on 31/01/2019.
//  Copyright (c) 2019 Square1. All rights reserved.
//

import UIKit

protocol DetailDisplayLogic: AnyObject {
    func displaySomething(viewModel: Detail.UseCase.ViewModel)
}

class DetailViewController: UIViewController {

    var interactor: DetailBusinessLogic?

    // MARK: Object lifecycle
  
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
  
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
  
    // MARK: Setup
  
    private func setup() {
        let viewController = self
        let interactor = DetailInteractor()
        let presenter = DetailPresenter()

        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.viewController = viewController
    }
    
    // MARK: View lifecycle
  
    override func viewDidLoad() {
        super.viewDidLoad()
        doSomething()
    }
  
    // MARK: Do something
  
    func doSomething() {
        let request = Detail.UseCase.Request()
        interactor?.doSomething(request: request)
    }
  
}

extension DetailViewController: DetailDisplayLogic {

    func displaySomething(viewModel: Detail.UseCase.ViewModel) {
    
    }
    
}
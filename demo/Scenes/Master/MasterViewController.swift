//
//  MasterViewController.swift
//  demo
//
//  Created by Ricardo Antolin on 31/01/2019.
//  Copyright (c) 2019 Square1. All rights reserved.
//

import UIKit

protocol MasterDisplayLogic: AnyObject {
    func displaySomething(viewModel: Master.UseCase.ViewModel)
}

class MasterViewController: UIViewController {

    var interactor: MasterBusinessLogic?

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
        let interactor = MasterInteractor()
        let presenter = MasterPresenter()

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
        let request = Master.UseCase.Request()
        interactor?.doSomething(request: request)
    }
  
}

extension MasterViewController: MasterDisplayLogic {

    func displaySomething(viewModel: Master.UseCase.ViewModel) {
    
    }
    
}
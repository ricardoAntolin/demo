//
//  MasterPresenter.swift
//  demo
//
//  Created by Ricardo Antolin on 31/01/2019.
//  Copyright (c) 2019 Square1. All rights reserved.
//

protocol MasterPresentationLogic {
    func presentSomething(response: Master.UseCase.Response)
}

class MasterPresenter: MasterPresentationLogic {

    weak var viewController: MasterDisplayLogic?
  
    // MARK: Do something
  
    func presentSomething(response: Master.UseCase.Response) {
        let viewModel = Master.UseCase.ViewModel()
        viewController?.displaySomething(viewModel: viewModel)
    }
}

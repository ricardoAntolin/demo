//
//  DetailPresenter.swift
//  demo
//
//  Created by Ricardo Antolin on 31/01/2019.
//  Copyright (c) 2019 Square1. All rights reserved.
//

protocol DetailPresentationLogic {
    func presentSomething(response: Detail.UseCase.Response)
}

class DetailPresenter: DetailPresentationLogic {

    weak var viewController: DetailDisplayLogic?
  
    // MARK: Do something
  
    func presentSomething(response: Detail.UseCase.Response) {
        let viewModel = Detail.UseCase.ViewModel()
        viewController?.displaySomething(viewModel: viewModel)
    }
}

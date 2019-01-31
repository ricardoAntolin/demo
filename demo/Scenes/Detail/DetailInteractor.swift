//
//  DetailInteractor.swift
//  demo
//
//  Created by Ricardo Antolin on 31/01/2019.
//  Copyright (c) 2019 Square1. All rights reserved.
//


protocol DetailBusinessLogic {
    func doSomething(request: Detail.UseCase.Request)
}

class DetailInteractor: DetailBusinessLogic {

    var presenter: DetailPresentationLogic?
    var worker: DetailWorker?

    // MARK: Do something
  
    func doSomething(request: Detail.UseCase.Request) {
        worker = DetailWorker()
        worker?.doSomeWork()

        let response = Detail.UseCase.Response()
        presenter?.presentSomething(response: response)
    }
}

//
//  MasterInteractor.swift
//  demo
//
//  Created by Ricardo Antolin on 31/01/2019.
//  Copyright (c) 2019 Square1. All rights reserved.
//


protocol MasterBusinessLogic {
    func doSomething(request: Master.UseCase.Request)
}

class MasterInteractor: MasterBusinessLogic {

    var presenter: MasterPresentationLogic?
    var worker: MasterWorker?

    // MARK: Do something
  
    func doSomething(request: Master.UseCase.Request) {
        worker = MasterWorker()
        worker?.doSomeWork()

        let response = Master.UseCase.Response()
        presenter?.presentSomething(response: response)
    }
}

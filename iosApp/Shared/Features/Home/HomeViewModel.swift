//
//  HomeViewModel.swift
//  iosApp
//
//  Created by Marco Gomiero on 05/09/2020.
//

import shared

class HomeViewModel: ObservableObject {
    
    @Published var homeModel: HomeModel = HomeModel.Loading()
    
    var useCase: HomeUseCaseImpl?
    
    func startObserving() {
        
        useCase = HomeUseCaseImpl(moneyRepository: DIContainer.instance.getMoneyRepository(), viewUpdate: { [weak self] model in
            self?.homeModel = model
        })
        self.useCase?.computeData()
    }
    
    func deleteTransaction(transactionId: Int64) {
        
    }
    
    func stopObserving() {
        self.useCase?.onDestroy()
    }
}

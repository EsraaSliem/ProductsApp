//
//  ProductListViewModel.swift
//  ProductsApp
//
//  Created by Esraa Sliem on 10/12/2022.
//

import Combine
import Foundation

final class ProductListViewModel: ProductListViewModelContract {
    @Published var products: [ProductData] = []
    @Published var isLodaing: Bool = false
    var cacellable = Set<AnyCancellable>()
    private let useCase: ProductListUseCaseContract
    
    
    init(useCase: ProductListUseCaseContract = ProductListUseCase()){
        self.useCase = useCase
        getProdutList()
    }
    
    func getProdutList() {
        isLodaing = true
        useCase.execute()
            .receive(on: RunLoop.main)
            .sink {[weak self] error in
                print(error)
                self?.isLodaing = false
            } receiveValue: {[weak self] productList in
                self?.products = productList.products
                self?.isLodaing = false
            }.store(in: &cacellable)
    }
}


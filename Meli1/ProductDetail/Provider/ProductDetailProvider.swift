//
//  ProductDetailProvider.swift
//  Meli1
//
//  Created by Oswaldo Garcia on 9/02/22.
//

import Foundation
import RxSwift


// MARK: - Product Detail Provider Protocol
/// `ProductDetailProviderProtocol`
/// This procol contains the necesary method to get the details of a products

protocol ProductDetailProviderProtocol {
    
    /// This Method will be used to call the service that provide
    /// the deatil of products.
    ///
    /// Usage:
    ///
    ///     productDetailProvider.getProductDetail(parameters)
    ///
    /// - Parameter parameters: A Dictionary `[String : Any]`.
    ///
    ///     Example :
    ///     let parameters =  ["ids": "MCO638902957"] as [String : Any]
    ///
    /// - Returns: A `Observable<[ProductDetailModel]>` with the data of the request.
    func getProductDetail(_ parameters: [String : Any]) -> Observable<[ProductDetailModel]>
}

// MARK: - Product Detail Provider
/// Use this class to get real data of the deatils of the product

class GetProductProvider: ProductDetailProviderProtocol {    
    func getProductDetail(_ parameters: [String : Any]) -> Observable<[ProductDetailModel]> {
        return Service.requestService(service: .getProductItem(parameters:parameters), model:[ProductDetailModel()])
    }
}

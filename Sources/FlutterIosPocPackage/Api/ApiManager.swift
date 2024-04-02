//
//  ApiManager.swift
//  flutter-ios-login-poc
//
//  Created by Tibor Kovacs on 31/03/2024.
//

import Foundation
import Alamofire

class APIManager {
    private let baseUrl = "http://localhost:3000/"
    
    func fetchInit(completion: @escaping (Result<EmailStep, Error>) -> Void) {
        AF.request(baseUrl + "init").responseDecodable(of: EmailStep.self) { response in
            switch response.result {
            case .success(let resource):
                completion(.success(resource))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func postIdentifier(parameters: [String: Any], completion: @escaping (Result<PasswordStep, Error>) -> Void) {
        AF.request(baseUrl + "identifier", method: .post, parameters: parameters).responseDecodable(of: PasswordStep.self) { response in
            switch response.result {
            case .success(let resource):
                completion(.success(resource))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func postPassword(parameters: [String: Any], completion: @escaping (Result<PasswordStep, Error>) -> Void) {
        AF.request(baseUrl + "password", method: .post, parameters: parameters).responseDecodable(of: PasswordStep.self) { response in
            switch response.result {
            case .success(let resource):
                completion(.success(resource))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}

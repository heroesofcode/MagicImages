//
//  MockURLProtocol.swift
//
//
//  Created by João Lucas on 21/07/24.
//

import Foundation

class MockURLProtocol: URLProtocol {
    static var testURLs = [URL?: Data]()

    override class func canInit(with request: URLRequest) -> Bool {
        return true
    }

    override class func canonicalRequest(for request: URLRequest) -> URLRequest {
        return request
    }

    override func startLoading() {
        if let url = request.url,
           let data = MockURLProtocol.testURLs[url] {
            
            self.client?.urlProtocol(self, didLoad: data)
        }
        
        self.client?.urlProtocolDidFinishLoading(self)
    }

    override func stopLoading() {}
}

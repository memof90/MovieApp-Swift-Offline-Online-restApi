//
//  tmdMovieTests.swift
//  tmdMovieTests
//
//  Created by Memo Figueredo on 16/9/21.
//

import XCTest
@testable import tmdMovie

class tmdMovieTests: XCTestCase {
    
    var session: URLSession!
    
    func testValidApiCallGetsHTTPStatusCode200() throws {
        // given
        let urlString =
          "https://api.themoviedb.org/3/search/movie?api_key=5fff233cf139639b37ee955e7a852f34&query=avengers"
        let url = URL(string: urlString)!
        // 1
        let promise = expectation(description: "Status code: 200")

        // when
        let dataTask = session.dataTask(with: url) { _, response, error in
          // then
          if let error = error {
            XCTFail("Error: \(error.localizedDescription)")
            return
          } else if let statusCode = (response as? HTTPURLResponse)?.statusCode {
            if statusCode == 200 {
              // 2
              promise.fulfill()
            } else {
              XCTFail("Status code: \(statusCode)")
            }
          }
        }
        dataTask.resume()
        // 3
        wait(for: [promise], timeout: 5)
    }
//    MARK: - Test api Complete controller
    func testApiCallCompletes() throws {
      // given
      let urlString = "https://api.themoviedb.org/3/search/movie?api_key=5fff233cf139639b37ee955e7a852f34&query=avengers"
      let url = URL(string: urlString)!
      let promise = expectation(description: "Completion handler invoked")
      var statusCode: Int?
      var responseError: Error?

      // when
      let dataTask = session.dataTask(with: url) { _, response, error in
        statusCode = (response as? HTTPURLResponse)?.statusCode
        responseError = error
        promise.fulfill()
      }
      dataTask.resume()
      wait(for: [promise], timeout: 5)

      // then
      XCTAssertNil(responseError)
      XCTAssertEqual(statusCode, 200)
    }
    
    func testScoreIsComputedPerformance() {
      measure(
        metrics: [
          XCTClockMetric(),
          XCTCPUMetric(),
          XCTStorageMetric(),
          XCTMemoryMetric()
        ]
      ) {
        NetworkServiesMovies.shared.sycnPopular(searchTerm: "Popular") {
            print("sucesss")
        }
      }
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        try super.setUpWithError()
        session = URLSession(configuration: .default)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        session = nil
         try super.tearDownWithError()
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}

import XCTest
@testable import JsonSupport

final class JsonSupportTests: XCTestCase {

    let testBundle = Bundle(for: JsonSupportTests.self)

    struct TestStruct: Equatable, Codable {
        let name: String
        let count: Int
        let isEven: Bool
    }

    func test_jsonDecode_failure_no_such_file() {
        do {
            let result: TestStruct? = try jsonDecode(fileName: "NoSuchFile", in: testBundle)
            XCTAssertNil(result)
        } catch {
            XCTFail(String(describing: error))
        }
    }

//    func test_jsonDecode_failure_decoding_error() {
//        do {
//            let result: TestStruct? = try jsonDecode(fileName: "test_failure", in: testBundle)
//            XCTFail("Expected an error but got:\n\(String(describing: result))")
//        } catch {
//            // The test passes if an error is thrown
//        }
//    }

//    func test_jsonDecode_success() {
//        let expected = TestStruct(name: "Test", count: 5, isEven: false)
//        do {
//            let result: TestStruct? = try jsonDecode(fileName: "test_success", in: testBundle)
//            XCTAssertEqual(result, expected)
//        } catch {
//            XCTFail(String(describing: error))
//        }
//    }

    func test_jsonString() {
        do {
            let instance = TestStruct(name: "Test", count: 5, isEven: false)
            let expected = "{\"name\":\"Test\",\"count\":5,\"isEven\":false}"
            let result: String? = try jsonString(for: instance)
            XCTAssertEqual(result, expected)
        } catch {
            XCTFail(String(describing: error))
        }
    }

}

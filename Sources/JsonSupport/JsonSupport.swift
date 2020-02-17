import Foundation

public func jsonDecode <T: Decodable> (fileName: String, in bundle: Bundle) throws -> T? {
    guard let dataUrl = bundle.url(forResource: fileName, withExtension: "json") else { return nil }
    let data = try Data(contentsOf: dataUrl)
    return try JSONDecoder().decode(T.self, from: data)
}

public func jsonEncode <T: Encodable> (_ instance: T) throws -> Data {
    return try JSONEncoder().encode(instance)
}

public func jsonString <T: Encodable> (for instance: T) throws -> String? {
    let data = try jsonEncode(instance)
    return String(data: data, encoding: .utf8)
}

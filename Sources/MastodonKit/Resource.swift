import Foundation

typealias Parameters = [String : String?]

public struct Resource<Model> {
    let path: String
    let method: HTTPMethod
    let parse: (JSONObject) -> Model?

    init(path: String, method: HTTPMethod = .get(Payload.empty), parse: @escaping (JSONObject) -> Model?) {
        self.path = path
        self.method = method
        self.parse = parse
    }
}

import Foundation

public struct Annotation: Codable, Equatable, Sendable {
    /// The type of the URL citation. Always `url_citation`.
    let type: String
    /// A URL citation when using web search.
    let urlCitation: URLCitation

    public enum CodingKeys: String, CodingKey {
        case type, urlCitation = "url_citation"
    }

    public struct URLCitation: Codable, Equatable, Sendable {
        /// The index of the last character of the URL citation in the message.
        let endIndex: Int
        /// The index of the first character of the URL citation in the message.
        let startIndex: Int
        /// The title of the web resource.
        let title: String
        /// The URL of the web resource.
        let url: String

        public enum CodingKeys: String, CodingKey {
            case endIndex = "end_index"
            case startIndex = "start_index"
            case title, url
        }
    }
}

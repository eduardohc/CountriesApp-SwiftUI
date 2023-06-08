// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetAllCountiesQuery: GraphQLQuery {
  public static let operationName: String = "GetAllCounties"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      #"""
      query GetAllCounties {
        countries {
          __typename
          code
          name
          capital
          emoji
        }
      }
      """#
    ))

  public init() {}

  public struct Data: CountriesAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { CountriesAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("countries", [Country].self),
    ] }

    public var countries: [Country] { __data["countries"] }

    /// Country
    ///
    /// Parent Type: `Country`
    public struct Country: CountriesAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { CountriesAPI.Objects.Country }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("code", CountriesAPI.ID.self),
        .field("name", String.self),
        .field("capital", String?.self),
        .field("emoji", String.self),
      ] }

      public var code: CountriesAPI.ID { __data["code"] }
      public var name: String { __data["name"] }
      public var capital: String? { __data["capital"] }
      public var emoji: String { __data["emoji"] }
    }
  }
}

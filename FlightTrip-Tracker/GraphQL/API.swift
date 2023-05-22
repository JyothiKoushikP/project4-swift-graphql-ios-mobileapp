// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class GetAllFlightsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query getAllFlights {
      flightQuery {
        __typename
        flightID
        origin
        destination
        durationInMinutes
        carriers
        price
        currency
      }
    }
    """

  public let operationName: String = "getAllFlights"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("flightQuery", type: .list(.object(FlightQuery.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(flightQuery: [FlightQuery?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "flightQuery": flightQuery.flatMap { (value: [FlightQuery?]) -> [ResultMap?] in value.map { (value: FlightQuery?) -> ResultMap? in value.flatMap { (value: FlightQuery) -> ResultMap in value.resultMap } } }])
    }

    public var flightQuery: [FlightQuery?]? {
      get {
        return (resultMap["flightQuery"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [FlightQuery?] in value.map { (value: ResultMap?) -> FlightQuery? in value.flatMap { (value: ResultMap) -> FlightQuery in FlightQuery(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [FlightQuery?]) -> [ResultMap?] in value.map { (value: FlightQuery?) -> ResultMap? in value.flatMap { (value: FlightQuery) -> ResultMap in value.resultMap } } }, forKey: "flightQuery")
      }
    }

    public struct FlightQuery: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["FlightDetails"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("flightID", type: .nonNull(.scalar(String.self))),
          GraphQLField("origin", type: .nonNull(.scalar(String.self))),
          GraphQLField("destination", type: .nonNull(.scalar(String.self))),
          GraphQLField("durationInMinutes", type: .nonNull(.scalar(String.self))),
          GraphQLField("carriers", type: .nonNull(.scalar(String.self))),
          GraphQLField("price", type: .nonNull(.scalar(String.self))),
          GraphQLField("currency", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(flightId: String, origin: String, destination: String, durationInMinutes: String, carriers: String, price: String, currency: String) {
        self.init(unsafeResultMap: ["__typename": "FlightDetails", "flightID": flightId, "origin": origin, "destination": destination, "durationInMinutes": durationInMinutes, "carriers": carriers, "price": price, "currency": currency])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var flightId: String {
        get {
          return resultMap["flightID"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "flightID")
        }
      }

      public var origin: String {
        get {
          return resultMap["origin"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "origin")
        }
      }

      public var destination: String {
        get {
          return resultMap["destination"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "destination")
        }
      }

      public var durationInMinutes: String {
        get {
          return resultMap["durationInMinutes"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "durationInMinutes")
        }
      }

      public var carriers: String {
        get {
          return resultMap["carriers"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "carriers")
        }
      }

      public var price: String {
        get {
          return resultMap["price"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "price")
        }
      }

      public var currency: String {
        get {
          return resultMap["currency"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "currency")
        }
      }
    }
  }
}

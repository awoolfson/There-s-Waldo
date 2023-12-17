import Foundation

//Converts a DispatchTimeInterval to a Double
extension DispatchTimeInterval {
    
    func toDouble() -> Double? {
        var result: Double? = 0

        switch self {
        case .seconds(let value):
            result = Double(value)
        case .milliseconds(let value):
            result = Double(value)*0.001
        case .microseconds(let value):
            result = Double(value)*0.000001
        case .nanoseconds(let value):
            result = Double(value)*0.000000001
        case .never:
            result = nil
        @unknown default:
            result = nil
        }

        return result
    }
}

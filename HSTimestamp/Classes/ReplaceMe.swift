public class HSTimestamp {
	private let dateFormatter = DateFormatter()
	
	public init() {}
	
	public func now() -> Double {
		return Date().timeIntervalSince1970.rounded() * 1000
	}
	
	public func formattedString(_ timestamp: Double, format: HSDateFormat) -> String {
		let date = Date(timeIntervalSince1970: TimeInterval(timestamp / 1000))
		dateFormatter.dateFormat = format.rawValue
		return dateFormatter.string(from: date)
	}
	
	public func howManyDaysPassed(_ timestamp: Double) -> Int{
		let date = Date(timeIntervalSince1970: TimeInterval(timestamp / 1000))
		let calendar = Calendar.current
		let unitFlags: Set<Calendar.Component> = [.minute, .hour, .day, .weekOfYear, .month, .year, .second]
		let now = Date()
		let earliest = now < date ? now : date
		let latest = (earliest == now) ? date : now
		let components = calendar.dateComponents(unitFlags, from: earliest,  to: latest)
		
		return components.day!
	}
	
	public func timeAgo(_ timestamp: Double, numericDates: Bool = false) -> String {
		let date = Date(timeIntervalSince1970: TimeInterval(timestamp / 1000))
		let calendar = Calendar.current
		let unitFlags: Set<Calendar.Component> = [.minute, .hour, .day, .weekOfYear, .month, .year, .second]
		let now = Date()
		let earliest = now < date ? now : date
		let latest = (earliest == now) ? date : now
		let components = calendar.dateComponents(unitFlags, from: earliest,  to: latest)
		
		if (components.year! >= 2) {
			return "\(components.year!) years ago"
		} else if (components.year! >= 1){
			if (numericDates){
				return "1 year ago"
			} else {
				return "one year ago"
			}
		} else if (components.month! >= 2) {
			return "\(components.month!) months ago"
		} else if (components.month! >= 1){
			if (numericDates){
				return "1 month ago"
			} else {
				return "one month ago"
			}
		} else if (components.weekOfYear! >= 2) {
			return "\(components.weekOfYear!) weeks ago"
		} else if (components.weekOfYear! >= 1){
			if (numericDates){
				return "1 week ago"
			} else {
				return "one week ago"
			}
		} else if (components.day! >= 2) {
			return "\(components.day!) days ago"
		} else if (components.day! >= 1){
			if (numericDates){
				return "1 day ago"
			} else {
				return "yesterday"
			}
		} else if (components.hour! >= 2) {
			return "\(components.hour!) hours ago"
		} else if (components.hour! >= 1){
			if (numericDates){
				return "1 hour ago"
			} else {
				return "one hour ago"
			}
		} else if (components.minute! >= 2) {
			return "\(components.minute!) minutes ago"
		} else if (components.minute! >= 1){
			if (numericDates){
				return "1 minute ago"
			} else {
				return "one minute ago"
			}
		} else if (components.second! >= 3) {
			return "\(components.second!) seconds ago"
		} else {
			return "just now"
		}
	}
}

public enum HSDateFormat: String {
	case Default = "yyyy-MM-dd HH:mm:ss"
	case DateWithDash = "yyyy-MM-dd"
	case DateWithDot = "yyyy.MM.dd"
}

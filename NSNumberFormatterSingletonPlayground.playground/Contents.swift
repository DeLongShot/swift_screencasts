//Singleton NSNumberFormatter
//15 -> $15.00

import Foundation

class CurrencyFormatter: NSNumberFormatter {
  required init(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  override init() {
    super.init()
    self.locale = NSLocale.currentLocale()
    self.maximumFractionDigits = 2
    self.minimumFractionDigits = 2
    self.alwaysShowsDecimalSeparator = true
    self.numberStyle = .CurrencyStyle
  }
  
  // Swift 1.2 or above
  //  static let sharedInstance = CurrencyFormatter()
  class var sharedInstance: CurrencyFormatter {
    struct Static {
      static let instance = CurrencyFormatter()
    }
    return Static.instance
  }
}

println(CurrencyFormatter.sharedInstance.stringFromNumber(20)!)
println(CurrencyFormatter.sharedInstance.stringFromNumber(50)!)
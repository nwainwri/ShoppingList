

import Foundation


// put this in delgator, this screen passes data to main screen
protocol AddObjectViewControllerDelgate: AnyObject
{
  func itemAdded(sentItem: ListItem)
    func tappedAdditem(keyboardUp:Bool)
}



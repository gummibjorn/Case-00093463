import UIKit
import FirebaseCrashlytics

@objc(ViewController)
class ViewController: UIViewController {
  lazy var crashlytics = Crashlytics.crashlytics()

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func initiateCrash(_ sender: AnyObject) {
    Crashlytics.crashlytics().log("Cause Crash button clicked")
    fatalError()
  }
}

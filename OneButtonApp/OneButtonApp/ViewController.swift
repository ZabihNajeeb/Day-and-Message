import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var label2: UILabel! // Outlet for the second label
    
    let arrayOfText = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label2.text = "" // Initial text for the second label
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        let randomNumber = Int.random(in: 0...(arrayOfText.count - 1))
        let selectedDay = arrayOfText[randomNumber]
        
        label.text = selectedDay
        
        switch selectedDay {
          case "Sunday":
              label2.text = "Relax and recharge - it's an off day for most people."
          case "Monday":
              label2.text = "A fresh start to the work week. Let's make it productive!"
          case "Tuesday":
              label2.text = "Keep the momentum going - it's only the second day of the work week."
          case "Wednesday":
              label2.text = "Midweek already! You're halfway to the weekend."
          case "Thursday":
              label2.text = "Almost there - just one more day until the weekend."
          case "Friday":
              label2.text = "The weekend is just around the corner. Finish strong!"
          case "Saturday":
              label2.text = "Time to relax and enjoy - it's the weekend!"
        default:
            label2.text = ""
        }
    }
}

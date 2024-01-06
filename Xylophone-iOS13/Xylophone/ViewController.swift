
import UIKit
import AVFoundation

var player: AVAudioPlayer!
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func C(_ sender: UIButton) {
   
        playSound(sound: sender.currentTitle!)
        
        UIView.animate(withDuration: 0.2, animations: {
                   sender.alpha = 0.5
               })
        { _ in
                 
                   UIView.animate(withDuration: 0.2) {
                     sender.alpha = 1.0
                  }
               }
    }
    func playSound(sound: String) {
        let url = Bundle.main.url(forResource: sound, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}


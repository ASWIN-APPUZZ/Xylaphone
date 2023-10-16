import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let arr =
    ["note1","note2","note3","note4","note5","note6","note7",]
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func xylo(_ sender: UIButton) {
        playSound(tag: sender.tag)
        
    }
    func playSound(tag: Int ){
        let path = Bundle.main.url(forResource: arr[tag], withExtension: ".wav")
        audioPlayer=try!AVAudioPlayer(contentsOf: path!)
        audioPlayer.play()
    }

}

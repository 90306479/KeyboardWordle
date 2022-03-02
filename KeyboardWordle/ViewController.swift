//
//  ViewController.swift
//  KeyboardWordle
//
//  Created by 90306479 on 3/2/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstLetLabel: UILabel!
    @IBOutlet weak var secondLetLabel: UILabel!
    @IBOutlet weak var thirdLetLabel: UILabel!
    @IBOutlet weak var fourthLetLabel: UILabel!
    @IBOutlet weak var fifthLetLabel: UILabel!
    @IBOutlet weak var hiddenLabel: UILabel!
    
    
    @IBOutlet weak var QKey: UIButton!
    @IBOutlet weak var WKey: UIButton!
    @IBOutlet weak var EKey: UIButton!
    @IBOutlet weak var RKey: UIButton!
    @IBOutlet weak var TKey: UIButton!
    @IBOutlet weak var YKey: UIButton!
    @IBOutlet weak var UKey: UIButton!
    @IBOutlet weak var IKey: UIButton!
    @IBOutlet weak var OKey: UIButton!
    @IBOutlet weak var PKey: UIButton!
    @IBOutlet weak var AKey: UIButton!
    @IBOutlet weak var SKey: UIButton!
    @IBOutlet weak var DKey: UIButton!
    @IBOutlet weak var FKey: UIButton!
    @IBOutlet weak var GKey: UIButton!
    @IBOutlet weak var HKey: UIButton!
    @IBOutlet weak var JKey: UIButton!
    @IBOutlet weak var KKey: UIButton!
    @IBOutlet weak var LKey: UIButton!
    @IBOutlet weak var ZKey: UIButton!
    @IBOutlet weak var XKey: UIButton!
    @IBOutlet weak var CKey: UIButton!
    @IBOutlet weak var VKey: UIButton!
    @IBOutlet weak var BKey: UIButton!
    @IBOutlet weak var NKey: UIButton!
    @IBOutlet weak var MKey: UIButton!
    @IBOutlet weak var GoKey: UIButton!
    @IBOutlet weak var BackKey: UIButton!
    
    let targetWord = "MATCH"
    
    
    var currentLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentLabel = firstLetLabel
    }
    
    
    @IBAction func QTap(_ sender: Any) {
        setLabel(label: "Q")
    }
    @IBAction func WTap(_ sender: Any) {
        setLabel(label: "W")
    }
    @IBAction func ETap(_ sender: Any) {
        setLabel(label: "E")
    }
    @IBAction func RTap(_ sender: Any) {
        setLabel(label: "R")
    }
    @IBAction func TTap(_ sender: Any) {
        setLabel(label: "T")
    }
    @IBAction func YTap(_ sender: Any) {
        setLabel(label: "Y")
    }
    @IBAction func UTap(_ sender: Any) {
        setLabel(label: "U")
    }
    @IBAction func ITap(_ sender: Any) {
        setLabel(label: "I")
    }
    @IBAction func OTap(_ sender: Any) {
        setLabel(label: "O")
    }
    @IBAction func PTap(_ sender: Any) {
        setLabel(label: "P")
    }
    @IBAction func ATap(_ sender: Any) {
        setLabel(label: "A")
    }
    @IBAction func STap(_ sender: Any) {
        setLabel(label: "S")
    }
    @IBAction func DTap(_ sender: Any) {
        setLabel(label: "D")
    }
    @IBAction func FTap(_ sender: Any) {
        setLabel(label: "F")
    }
    @IBAction func GTap(_ sender: Any) {
        setLabel(label: "G")
    }
    @IBAction func HTap(_ sender: Any) {
        setLabel(label: "H")
    }
    @IBAction func JTap(_ sender: Any) {
        setLabel(label: "J")
    }
    @IBAction func KTap(_ sender: Any) {
        setLabel(label: "K")
    }
    @IBAction func LTap(_ sender: Any) {
        setLabel(label: "L")
    }
    @IBAction func ZTap(_ sender: Any) {
        setLabel(label: "Z")
    }
    @IBAction func XTap(_ sender: Any) {
        setLabel(label: "X")
    }
    @IBAction func CTap(_ sender: Any) {
        setLabel(label: "C")
    }
    @IBAction func VTap(_ sender: Any) {
        setLabel(label: "V")
    }
    @IBAction func BTap(_ sender: Any) {
        setLabel(label: "B")
    }
    @IBAction func NTap(_ sender: Any) {
        setLabel(label: "N")
    }
    @IBAction func MTap(_ sender: Any) {
        setLabel(label: "M")
    }
    
    @IBAction func GoTap(_ sender: Any) {
        setLabelColors()
    }
    
    @IBAction func BackTap(_ sender: Any) {
        lastLabel()
        currentLabel.text = ""
    }
    
    
    
    func setLabel(label: String) {
        currentLabel.text = label
        nextLabel()
    }
    
    
    func nextLabel(){
        if (currentLabel == firstLetLabel) {
        currentLabel = secondLetLabel
        } else if (currentLabel == secondLetLabel) {
            currentLabel = thirdLetLabel
        } else if (currentLabel == thirdLetLabel) {
            currentLabel = fourthLetLabel
        } else if (currentLabel == fourthLetLabel) {
            currentLabel = fifthLetLabel
        } else if (currentLabel == fifthLetLabel) {
            currentLabel = hiddenLabel
        }
    }
    
    
    func lastLabel(){
        if (currentLabel == secondLetLabel) {
        currentLabel = firstLetLabel
        } else if (currentLabel == thirdLetLabel) {
            currentLabel = secondLetLabel
        } else if (currentLabel == fourthLetLabel) {
            currentLabel = thirdLetLabel
        } else if (currentLabel == fifthLetLabel) {
            currentLabel = fourthLetLabel
        } else if (currentLabel == hiddenLabel) {
            currentLabel = fifthLetLabel
        }
    }
    
    
    func setLabelColors() {
        let firstLet = getWordLetter(num: 0)
        let secLet = getWordLetter(num: 1)
        let thirdLet = getWordLetter(num: 2)
        let fourLet = getWordLetter(num: 3)
        let fifthLet = getWordLetter(num: 4)
        
        if firstLetLabel.text == firstLet {
            firstLetLabel.backgroundColor = UIColor.green
        }
        if secondLetLabel.text == secLet {
            secondLetLabel.backgroundColor = UIColor.green
        }
        if thirdLetLabel.text == thirdLet {
            thirdLetLabel.backgroundColor = UIColor.green
        }
        if fourthLetLabel.text == fourLet {
            fourthLetLabel.backgroundColor = UIColor.green
        }
        if fifthLetLabel.text == fifthLet {
            fifthLetLabel.backgroundColor = UIColor.green
        }
        
    }
    
    func getWordLetter(num: Int) -> String {
        let start = targetWord.index(targetWord.startIndex, offsetBy: num)
        let end = targetWord.index(targetWord.startIndex, offsetBy: num)
        let range = start...end

        return String(targetWord[range])
    }


}


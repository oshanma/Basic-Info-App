//
//  ViewController.swift
//  InfoApplication
//
//  Created by Oshan Maharjan on 10/31/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var viewMoreButton: UIButton!
    @IBOutlet weak var quoteLabel: UILabel!
    
    var originalBackgroundColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Store the initial background color
               originalBackgroundColor = view.backgroundColor
        
        // Initially hide the image and quote label
                photoImageView.isHidden = true
                quoteLabel.isHidden = true
            }
    func changeColor() -> UIColor {
            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)
            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }

            @IBAction func ButtonViewMore(_ sender: UIButton) {
                // Toggle visibility of the image and quote label
                photoImageView.isHidden = !photoImageView.isHidden
                quoteLabel.isHidden = !quoteLabel.isHidden
                
                // Optional: Change the button title to indicate state
                if photoImageView.isHidden {
                    view.backgroundColor = originalBackgroundColor
                    viewMoreButton.setTitle("VIEW MORE", for: .normal)
                } else {
                    viewMoreButton.setTitle("HIDE", for: .normal)
                    view.backgroundColor = changeColor()
                }
            }
        }

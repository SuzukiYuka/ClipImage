//
//  ViewController.swift
//  ClipImageSample
//
//  Created by nagata on 2/17/17.
//  Copyright © 2017 nagata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let image: UIImage = UIImage(named: "sampleImage.jpg")!
    
    @IBOutlet var imageView0: UIImageView!
    @IBOutlet var imageView1: UIImageView!
    @IBOutlet var imageView2: UIImageView!
    @IBOutlet var imageView3: UIImageView!
    @IBOutlet var imageView4: UIImageView!
    @IBOutlet var imageView5: UIImageView!
    var imageViews: [UIImageView] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageViews = [imageView0,imageView1,imageView2,imageView3,imageView4,imageView5]
        clipImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func clipImage() {
        for i in 0..<3 {
            for g in 0..<2 {
                let cropCGImageRef = image.cgImage!.cropping(to: CGRect(x: CGFloat(g)*image.size.width/2, y: CGFloat(i)*image.size.height/3, width: image.size.width/2, height: image.size.height/3))
                let cropImage = UIImage(cgImage: cropCGImageRef!)
                imageViews[i*2+g].image = cropImage
            }
        }
    }
}


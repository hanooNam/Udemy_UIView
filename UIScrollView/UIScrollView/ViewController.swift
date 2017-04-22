//
//  ViewController.swift
//  UIScrollView
//
//  Created by Nam Hyun Woo on 2017. 4. 17..
//  Copyright © 2017년 Nam Hyun Woo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var images = [UIImageView]()
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
           }
    
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth : CGFloat = 0.0
        
        for x in 0...2{
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX : CGFloat = 0.0
            
            newX = scrollView.frame.size.width / 2 + scrollView.frame.size.width * CGFloat(x)
            
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: 0, y: scrollView.frame.midY-75, width: 150, height: 150)
            // 여기의 위치는 uiscrollview에서 지정됨 , subview안에서의 위치 지정이니까
        }
        scrollView.clipsToBounds = false
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        

    }
}


//
//  ViewController.swift
//  ViperEnryVC
//
//  Created by Мурат Камалов on 19.06.2020.
//  Copyright © 2020 Мурат Камалов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    internal var output: ViewOutput!
    
    private var entry: Data = Data()
       
    private var content = UITextView()
    
    private func setUp(){
        self.view.addSubview(content)
    }
    
    //из какого-то конкретного View приходит то что нужно обновить какое-то св-во в модели 
    @objc func updateModel(){
        self.output.updateModel(model: Data(), changes: .content)
    }
}

extension ViewController: ViewInput{
    func configureWithModel(model: Data) {
        self.entry = model
        self.setUp()
    }
    
    func updateView(_ view: ViewType, with model: Data) {
        switch view {
        case .textView:
            self.content.text = String(data: model, encoding: .utf16)
        default:
            break
            
        }
    }
}

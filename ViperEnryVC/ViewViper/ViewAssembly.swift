//
//  ViewAssembly.swift
//  ViperEnryVC
//
//  Created by Мурат Камалов on 22.06.2020.
//  Copyright © 2020 Мурат Камалов. All rights reserved.
//

import Foundation

class ViewAssembly{
    class func cobfiguratiobVodule() -> ViewController{
        let view = ViewController()
        
        let presentor = ViewPresentor()
        let intractor = ViewInteractor()
        let router = ViewRouter()
        
        presentor.view = view
        presentor.router = router
        presentor.intractor = intractor
        
        router.view = view
        intractor.output = presentor
        view.output = presentor
        
        intractor.startConfigure()
        
        return view
    }
}

//
//  ViewInteractor.swift
//  ViperEnryVC
//
//  Created by Мурат Камалов on 22.06.2020.
//  Copyright © 2020 Мурат Камалов. All rights reserved.
//

import Foundation

class ViewInteractor{
    weak var output: InteractorOutput!
    
    func startConfigure(){
        let data = self.getModel()
        self.output.configureView(withModel: data)
    }
    
    func getModel() -> Data {
        return Data()
    }
    
}

extension ViewInteractor: InteractorInput{
    func update(with model: Data, changes: ContentChanges) {
        switch changes {
        case .audio:
            print("меняем поле аудио в моделе")
//            entry.attachennts.append
        default:
            break
        }
    }
    
    func save(model: Data) {
//        realm.write
    }

}

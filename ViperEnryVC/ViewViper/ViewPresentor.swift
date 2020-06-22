//
//  ViewPresentor.swift
//  ViperEnryVC
//
//  Created by Мурат Камалов on 22.06.2020.
//  Copyright © 2020 Мурат Камалов. All rights reserved.
//

import Foundation

class ViewPresentor{
    weak var view: ViewInput!
    var router: RouterInput!
    var intractor: InteractorInput!
}

extension ViewPresentor: ViewOutput{
    func updateModel(model: Data, changes: ContentChanges) {
        self.intractor.update(with: model, changes: changes)
    }

    func save(model: Data) {
        self.intractor.save(model: Data())
    }
    
}

extension ViewPresentor: InteractorOutput{
    func configureView(withModel: Data) {
        self.view.configureWithModel(model: withModel)
    }
    
    func modelUpdates(model: Data, type: ContentChanges) {
        switch type {
        case .audio:
            self.view.updateView(.audioView, with: model)
        case .attachments:
            self.view.updateView(.attachmentView, with: model)
        case .contents:
            self.view.updateView(.textView, with: model)
        default:
            break
        }
    }
}


enum ContentChanges{
    case audio
    case attachments
    case contents
}

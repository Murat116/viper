//
//  ViewProtocols.swift
//  ViperEnryVC
//
//  Created by Мурат Камалов on 22.06.2020.
//  Copyright © 2020 Мурат Камалов. All rights reserved.
//

import Foundation

protocol ViewInput: class{
    func configureWithModel(model: Data)
    func updateView(_ view: ViewType ,with model: Data)
}

protocol ViewOutput: class{
    func save(model: Data)
    func updateModel(model: Data, changes: ContentChanges )
}

protocol InteractorInput: class{
    func save(model: Data)
    func update(with model: Data, changes: ContentChanges)
}

protocol InteractorOutput: class{
    func modelUpdates(model: Data, type: ContentChanges)
    func configureView(withModel: Data)
}

protocol RouterInput: class {
    func openFrom(_ view: ViewType)
}




enum ViewType{
    case textView
    case backgroundView
    case checkList
    case audioView
    case attachmentView
    
}

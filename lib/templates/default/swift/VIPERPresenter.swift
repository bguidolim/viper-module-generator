//
// Created by AUTHOR
// Copyright (c) YEAR COMPANY. All rights reserved.
//

import Foundation

final class VIPERPresenter: VIPERPresenterProtocol, VIPERInteractorOutputProtocol {
    weak var view: VIPERViewProtocol?
    var interactor: VIPERInteractorInputProtocol?
    var router: VIPERRouterProtocol?
    
    init() {}
}

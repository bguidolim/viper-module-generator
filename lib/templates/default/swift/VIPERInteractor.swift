//
// Created by AUTHOR
// Copyright (c) YEAR COMPANY. All rights reserved.
//

import Foundation

final class VIPERInteractor: VIPERInteractorInputProtocol {
    weak var presenter: VIPERInteractorOutputProtocol?
    var apiDataManager: VIPERAPIDataManagerProtocol?
    var localDatamanager: VIPERLocalDataManagerProtocol?
    
    init() {}
}

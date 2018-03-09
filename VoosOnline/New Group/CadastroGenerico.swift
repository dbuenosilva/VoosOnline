//
//  CadastroGenerico.swift
//  VoosOnline
//
//  Created by Diego Bueno on 17/02/18.
//  Copyright © 2018 Diego Bueno. All rights reserved.
//

import Foundation

class CadastroGenerico:NSObject {
    private var _codigo:Int
    private var _nome:String
    
    init(_ codigo:Int,_ nome:String) {
        self._codigo = codigo
        self._nome = nome
    }
    
    var codigo:Int {
        set {
            _codigo = newValue
        }
        get {
            return(_codigo)
        }
    }
    
    var nome:String {
        set {
            _nome = newValue
        }
        get {
            return(_nome)
        }
    }
    
    override var description: String {
        return "\(codigo) \(nome)"
    }
}

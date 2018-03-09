//
//  Aeroporto.swift
//  VoosOnline
//
//  Created by Diego Bueno on 17/02/18.
//  Copyright © 2018 Diego Bueno. All rights reserved.
//
import Foundation

class AeroPorto:CadastroGenerico {
    private var _sigla:String
    private var _estado:String
    
    init(_ codigo:Int,_ nome:String,_ sigla:String, _ estado: String) {
        
        self._sigla = sigla
        self._estado = estado
        super.init(codigo, nome)
    }
    
    var sigla:String {
        set {
            _sigla = newValue
        }
        get {
            return(_sigla)
        }
    }
    
    var estado:String {
        set {
            _estado = newValue
        }
        get {
            return(_estado)
        }
    }
    
    
}

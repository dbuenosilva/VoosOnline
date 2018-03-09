//
//  Voo.swift
//  VoosOnline
//
//  Created by Diego Bueno on 17/02/18.
//  Copyright © 2018 Diego Bueno. All rights reserved.
//

import Foundation

class Voo:CadastroGenerico {
    private var _origem:AeroPorto
    private var _destino:AeroPorto
    private var _ciaAera:CiaAerea
    
    init(codigo:Int,nome:String,origem:AeroPorto,destino:AeroPorto,cia:CiaAerea) {
        self._origem = origem
        self._destino = destino
        self._ciaAera = cia
        super.init( codigo, nome)
    }
    
    var origem:AeroPorto {
        set {
            _origem = newValue
        }
        get {
            return(_origem)
        }
    }
    
    var destino:AeroPorto {
        set {
            _destino = newValue
        }
        get {
            return(_destino)
        }
    }
    
    var ciaAerea:CiaAerea {
        set {
            _ciaAera = newValue
        }
        get {
            return(_ciaAera)
        }
    }
    
}

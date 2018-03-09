//
//  Infraero.swift
//  VoosOnline
//
//  Created by Diego Bueno on 17/02/18.
//  Copyright © 2018 Diego Bueno. All rights reserved.
//

import Foundation

class Infraero {
    
    private var _listaDeVoos: [Voo] = []
    
    var listaDeVoos:[Voo] {
        set {
            _listaDeVoos = newValue
        }
        get {
            return(_listaDeVoos)
        }
    }

    /*
     Retorna os Voos do aeroporto informado
     */
    func buscaVoosAeroporto(sigla: String) -> [Voo] {
        var listaDeVoosDoAeroporto: [Voo] = []

        print("Listando voos encontrado no Aeroporto " + sigla)
        
        for voo in listaDeVoos {
    
            if ( voo.destino.sigla == sigla || voo.origem.sigla == sigla ){
                    print("Encontrado voo " + voo.nome)
                    listaDeVoosDoAeroporto.append(voo)
            }
        
        }
    
        return ( listaDeVoosDoAeroporto )
    }
    
    /*
     Retorna os Voos do cia informada
     */
    func buscaVoosCia(nomeCia: String) -> [Voo] {
        var listaDeVoosDaCia: [Voo] = []
        
        print("Listando voos encontrado com Cia " + nomeCia)
        
        for voo in listaDeVoos {
            
            if ( voo.ciaAerea.nome.isEqual(nomeCia) ){
                print("Encontrado voo " + voo.nome)
                listaDeVoosDaCia.append(voo)
            }
            
        }
        
        return ( listaDeVoosDaCia )
    }

    /*
     Retorna os Voos pelo numero
     */
    func buscaVoosPeloCodigo(codigo: Int) -> [Voo] {
        var listaDeVoosPeloNumero: [Voo] = []
        
        print("Listando voos encontrado com numero \(codigo) ")
        
        for voo in listaDeVoos {
            
            if ( voo.codigo == codigo ){
                print("Encontrado voo " + voo.nome)
                listaDeVoosPeloNumero.append(voo)
            }
            
        }
        
        return ( listaDeVoosPeloNumero )
    }
    
}

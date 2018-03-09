//
//  VooController.swift
//  VoosOnline
//
//  Created by Aluno on 03/03/2018.
//  Copyright © 2018 Wellington Antonio. All rights reserved.
//

import UIKit

class VooController: UIViewController {
    
    @IBOutlet weak var vrNumeroVoo: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //let telaVoo = segue.destination as! BuscarVooController
    
        
        let listaDeVoosPeloNumero: [Voo] = AppDelegate.infraero.buscaVoosPeloCodigo(codigo: Int(vrNumeroVoo.text!)! )
        
        if (listaDeVoosPeloNumero.isEmpty) {
            let alert = UIAlertController(title: "Atenção", message: "Voo não encontrado!",
                                          preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        else {
           
             //telaVoo.numero! = vrNumeroVoo.text!
            
            let proximaTela = segue.destination as! BuscarVooController
             proximaTela.voosEncontrados = listaDeVoosPeloNumero
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

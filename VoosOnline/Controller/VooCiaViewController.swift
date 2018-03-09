//
//  VooCiaViewController.swift
//  VoosOnline
//
//  Created by Diego Bueno on 03/03/2018.
//  Copyright © 2018 Wellington Antonio. All rights reserved.
//

import UIKit

class VooCiaViewController: UIViewController {

    @IBOutlet weak var vrGetCia: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let listaDeVoosPeloNumero: [Voo] = AppDelegate.infraero.buscaVoosCia(nomeCia: vrGetCia.text! )
        if (listaDeVoosPeloNumero.isEmpty) {
            let alert = UIAlertController(title: "Atenção", message: "Não há voos para a Cia " + vrGetCia.text!,
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

    @IBAction func buscarVooPelaCia(_ sender: UIButton) {
        
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

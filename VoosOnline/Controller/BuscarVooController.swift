//
//  BuscarVooController.swift
//  VoosOnline
//
//  Created by Aluno on 03/03/2018.
//  Copyright © 2018 Wellington Antonio. All rights reserved.
//

import UIKit

class BuscarVooController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    public var numero:String!
    
    @IBOutlet weak var LabelVooEncontrado: UILabel!
    var voosEncontrados: Array<Voo>!
   // var celula: CelulaTableViewCell!
    
    @IBOutlet weak var vrNumeroVoo: UILabel!
    
    @IBOutlet weak var vrTableView: UITableView!
    
    
    //var voos = ["Goiania", "Anapolis"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vrTableView.dataSource = self
        vrTableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        vrNumeroVoo.text = numero
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("retornando lista de voos")
        return voosEncontrados.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print("passou!!!!!")
        let celula:CelulaTableViewCell = vrTableView.dequeueReusableCell(withIdentifier: "celulaCustomizada") as! CelulaTableViewCell
        
        LabelVooEncontrado.text = "Voos encontrados:"
        
        celula.vrLabelCell.text = voosEncontrados[indexPath.row].nome
        
        return celula
        
    }
    
    

/*
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let celula:CelulaTableViewCell = vrTableView.dequeueReusableCell(withIdentifier: "celulaCustomizada") as! CelulaTableViewCell
        
        
        celula.vrLabelCell.text = voosEncontrados[indexPath.row].nome
            
            return celula
    }
  */
}

//
//  CadastroTarefaViewController.swift
//  listaDeTarefas
//
//  Created by Fellipe Ricciardi Chiarello on 4/24/19.
//  Copyright © 2019 fchiarello. All rights reserved.
//

import UIKit

class CadastroTarefaViewController: UIViewController {

    @IBOutlet weak var tarefaCampo: UITextField!
    
    @IBAction func adicionarTarefa(_ sender: Any) {
        
        if let textoDigitado = tarefaCampo.text{
            
            let tarefa = tarefaUserDefault()
            tarefa.salvar(tarefa: textoDigitado)
            tarefaCampo.text = ""
            
            let dados = tarefa.listar()
            
            print(dados)
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

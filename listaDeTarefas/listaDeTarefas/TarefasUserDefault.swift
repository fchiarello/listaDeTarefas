//
//  TarefasUserDefault.swift
//  listaDeTarefas
//
//  Created by Fellipe Ricciardi Chiarello on 4/24/19.
//  Copyright © 2019 fchiarello. All rights reserved.
//

import UIKit

class tarefaUserDefault {
    
    let chave = "listaTarefas"
    var tarefas: [String] = []
    
    func remover (indice: Int) {
        /*Recuperar tarefas salvas*/
        tarefas = listar()
        
        tarefas.remove(at: indice)
        UserDefaults.standard.set( tarefas, forKey: chave )
        
        
    }
    
    
    func salvar(tarefa: String){
        
        /*Recuperar tarefas salvas*/
        tarefas = listar()
        
        /*Salvar Tarefas*/
        tarefas.append( tarefa )
        UserDefaults.standard.set( tarefas, forKey: chave )
    }
    
    func listar() -> Array<String> {
        
        let dados = UserDefaults.standard.object(forKey: chave)
        
        if dados != nil {
            return dados as! Array<String>
        }else{
            return []
        }
    }
}

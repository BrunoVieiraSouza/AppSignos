//
//  ViewController.swift
//  Signos
//
//  Created by Bruno Vieira Souza on 19/07/21.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos: [String] = []
    var significadoSigno: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        signos.append("Aries")
        signos.append("Touro")
        signos.append("Gemeos")
        signos.append("Cancer")
        signos.append("Leao")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpiao")
        signos.append("Sagitario")
        signos.append("Capricornio")
        signos.append("Aquario")
        signos.append("Peixes")
        
        
        // significados
        
        significadoSigno.append("O ariano e determinado e persistente")
        significadoSigno.append("O touro e determinado")
        significadoSigno.append("O gemeos e determinado")
        significadoSigno.append("O cancer e determinado")
        significadoSigno.append("O leao e determinado")
        significadoSigno.append("O virgem e determinado")
        significadoSigno.append("O Libra e determinado")
        significadoSigno.append("O escorpiao e determinado")
        significadoSigno.append("O Sagirario e determinado")
        significadoSigno.append("O acapricirni determinado")
        significadoSigno.append("O aquario e determinado")
        significadoSigno.append("O peixes e determinado")
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula1 = UITableViewCell(style: .default , reuseIdentifier: nil)
        celula1.textLabel?.text = signos[ indexPath.row ]
        return celula1
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertaController = UIAlertController(title: "significado do Signo", message: significadoSigno[ indexPath.row ], preferredStyle: .alert)
        let acaoConfirmar = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertaController.addAction(acaoConfirmar)
        present(alertaController, animated: true, completion: nil)

    }


}


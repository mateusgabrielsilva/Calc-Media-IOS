//
//  QuimicaViewController.swift
//  Calc Media
//
//  Created by Mateus Gabriel on 03/02/2019.
//  Copyright © 2019 Mateus Gabriel. All rights reserved.
//

import UIKit

class QuimicaViewController: UIViewController {
    
    var faltasB1 : Int = 0
    var faltasB2 : Int = 0
    var faltasB3 : Int = 0
    var faltasB4 : Int = 0
    
    var notasB1 : Float = 0
    var notasB2 : Float = 0
    var notasB3 : Float = 0
    var notasB4 : Float = 0
    
    var faltas : Int = 0
    var media : Float = 0
    
    let totalBimestre : Int = 4
    
    let mediaFinal: Int = 5
    
    // Declaração das TextFields, Labels e Botão.
    
    
    @IBOutlet weak var txtFaltasB1: UITextField!
    
    @IBOutlet weak var txtFaltasB2: UITextField!
    
    @IBOutlet weak var txtFaltasB3: UITextField!
    
    @IBOutlet weak var txtFaltasB4: UITextField!
    
    @IBOutlet weak var txtNotasB1: UITextField!
    
    @IBOutlet weak var txtNotasB2: UITextField!
    
    @IBOutlet weak var txtNotasB3: UITextField!
    
    @IBOutlet weak var txtNotasB4: UITextField!
    
    @IBOutlet weak var txtSituacao: UILabel!
    
    @IBOutlet weak var txtFaltas: UILabel!
    
    @IBOutlet weak var txtMedia: UILabel!
    
    @IBAction func btnCalcular(_ sender: Any) {
        lerCamposTextField()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // Método Validar os Campos TextFields
    
    func lerCamposTextField(){
        
        // Validação do TextField B1 Faltas
        
        if let textF1 = txtFaltasB1.text, textF1.isEmpty {
            // Caso esteja Vazio
            faltasB1 = 0
            UserDefaults.standard.set(faltasB1, forKey: "quimicafaltasB1")
            
        }else {
            
            faltasB1 = Int(txtFaltasB1.text!)!
            UserDefaults.standard.set(faltasB1, forKey: "quimicafaltasB1")
        }
        
        // Validação do TextField B2 Faltas
        
        if let textF2 = txtFaltasB2.text, textF2.isEmpty {
            // Caso esteja Vazio
            faltasB2 = 0
            UserDefaults.standard.set(faltasB2, forKey: "quimicafaltasB2")
            
        }else {
            
            faltasB2 = Int(txtFaltasB2.text!)!
            UserDefaults.standard.set(faltasB2, forKey: "quimicafaltasB2")
        }
        
        // Validação do TextField B3 Faltas
        
        if let textF3 = txtFaltasB3.text, textF3.isEmpty {
            // Caso esteja Vazio
            faltasB3 = 0
            UserDefaults.standard.set(faltasB3, forKey: "quimicafaltasB3")
            
        }else {
            
            faltasB3 = Int(txtFaltasB3.text!)!
            UserDefaults.standard.set(faltasB3, forKey: "quimicafaltasB3")
        }
        
        // Validação do TextField B4 Faltas
        
        if let textF4 = txtFaltasB4.text, textF4.isEmpty {
            // Caso esteja Vazio
            faltasB4 = 0
            UserDefaults.standard.set(faltasB4, forKey: "quimicafaltasB4")
            
        }else {
            
            faltasB4 = Int(txtFaltasB4.text!)!
            UserDefaults.standard.set(faltasB4, forKey: "quimicafaltasB4")
        }
        
        // Exibe o Resultado das Faltas
        
        faltas = faltasB1 + faltasB2 + faltasB3 + faltasB4
        
        if faltas > 0 {
            txtFaltas.text = "Faltas : " + String(faltas)
        }else {
            txtFaltas.text = ""
        }
        
        
        UserDefaults.standard.set(faltas, forKey: "quimicaFaltas")
        
        //-------------------------------------------------------------
        
        // Validar Campo B1 Notas
        
        if let textN1 = txtNotasB1.text, textN1.isEmpty{
            
            notasB1 = 0
            UserDefaults.standard.set(notasB1, forKey: "quimicanotasB1")
            txtSituacao.text = "Situação : Cursando"
            
        }else{
            
            notasB1 = Float(txtNotasB1.text!)!
            UserDefaults.standard.set(notasB1, forKey: "quimicanotasB1")
            
        }
        
        // Validar Campo B2 Notas
        
        if let textN2 = txtNotasB2.text, textN2.isEmpty{
            
            notasB2 = 0
            UserDefaults.standard.set(notasB2, forKey: "quimicanotasB2")
            txtSituacao.text = "Situação : Cursando"
            
        }else{
            
            notasB2 = Float(txtNotasB2.text!)!
            UserDefaults.standard.set(notasB2, forKey: "quimicanotasB2")
            
        }
        
        // Validar Campo B3 Notas
        
        if let textN3 = txtNotasB3.text, textN3.isEmpty{
            
            notasB3 = 0
            UserDefaults.standard.set(notasB3, forKey: "quimicanotasB3")
            txtSituacao.text = "Situação : Cursando"
            
        }else{
            
            notasB3 = Float(txtNotasB3.text!)!
            UserDefaults.standard.set(notasB3, forKey: "quimicanotasB3")
            
        }
        
        // Validar Campo B4 Notas
        
        if let textN4 = txtNotasB4.text, textN4.isEmpty{
            
            notasB4 = 0
            UserDefaults.standard.set(notasB4, forKey: "quimicanotasB4")
            txtSituacao.text = "Situação : Cursando"
            
        }else{
            
            notasB4 = Float(txtNotasB4.text!)!
            UserDefaults.standard.set(notasB4, forKey: "quimicanotasB4")
            
        }
        
        // Calcular Média das Notas
        
        media = (notasB1 + notasB2 + notasB3 + notasB4) / Float(totalBimestre)
        
        if media > 0 {
            txtMedia.text = String(format: "Média : %.1f",media)
        }else {
            txtMedia.text = ""
        }
        
        UserDefaults.standard.set(media, forKey: "quimicaMedia")
        
        // Verificar se nota maior que 5
        
        if let txtNota = txtNotasB4.text, txtNota.isEmpty {
            
        } else {
            
            if media >= 5 {
                txtSituacao.text = "Parabéns você foi Aprovado"
            }else {
                txtSituacao.text = "Você foi Reprovado"
                
            }
        }
    }
    
    //----------------------------------------------------------------------
    
    // Método para realizar ações antes de abrir a pagina
    
    func atualizarDados(){
        
        // Recuperar dados salvos e se maior que 0 exibir no TextField == Faltas
        
        let novaFaltaB1 : Int = UserDefaults.standard.integer(forKey: "quimicafaltasB1")
        
        if novaFaltaB1 > 0 {
            txtFaltasB1.text = String(novaFaltaB1)
        }
        
        let novaFaltaB2 : Int = UserDefaults.standard.integer(forKey: "quimicafaltasB2")
        
        if novaFaltaB2 > 0 {
            txtFaltasB2.text = String(novaFaltaB2)
        }
        
        let novaFaltaB3 : Int = UserDefaults.standard.integer(forKey: "quimicafaltasB3")
        
        if novaFaltaB3 > 0 {
            txtFaltasB3.text = String(novaFaltaB3)
        }
        
        let novaFaltaB4 : Int = UserDefaults.standard.integer(forKey: "quimicafaltasB4")
        
        if novaFaltaB4 > 0 {
            txtFaltasB4.text = String(novaFaltaB4)
        }
        
        let novaFaltas : Int = UserDefaults.standard.integer(forKey: "quimicaFaltas")
        
        if novaFaltas <= 0 {
            txtFaltas.text = ""
        }else{
            txtFaltas.text = "Faltas : " + String(novaFaltas)
        }
        
        
        
        
        //-----------------------------------------------------------------------
        
        let novaNotaB1 : Float = UserDefaults.standard.float(forKey: "quimicanotasB1")
        
        if novaNotaB1 > 0 {
            txtNotasB1.text = String(novaNotaB1)
        }
        
        let novaNotaB2 : Float = UserDefaults.standard.float(forKey: "quimicanotasB2")
        
        if novaNotaB2 > 0 {
            txtNotasB2.text = String(novaNotaB2)
        }
        
        let novaNotaB3 : Float = UserDefaults.standard.float(forKey: "quimicanotasB3")
        
        if novaNotaB3 > 0 {
            txtNotasB3.text = String(novaNotaB3)
        }
        
        let novaNotaB4 : Float = UserDefaults.standard.float(forKey: "quimicanotasB4")
        
        if novaNotaB4 > 0 {
            txtNotasB4.text = String(novaNotaB4)
        }
        
        let novaMedia : Float = UserDefaults.standard.float(forKey: "quimicaMedia")
        
        if novaMedia <= 0 {
            txtMedia.text = ""
        }else {
            txtMedia.text = "Média : " + String(novaMedia)
        }
        
        
    }
    
    
    // Código a ser executado ao carregar a tela.
    
    override func viewDidAppear(_ animated: Bool) {
        
        atualizarDados()
    }
    
    
    // Ocultar o teclado ao clicar em qualquer lugar da Tela.
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
    }

}

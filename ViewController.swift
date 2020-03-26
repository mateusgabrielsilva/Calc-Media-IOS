//
//  ViewController.swift
//  Calc Media
//
//  Created by Mateus Gabriel on 20/01/2019.
//  Copyright © 2019 Mateus Gabriel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtPortuguesFaltas: UILabel!
    
    @IBOutlet weak var txtPortuguesNotas: UILabel!
    
    @IBOutlet weak var txtMatematicaFaltas: UILabel!
    
    @IBOutlet weak var txtMatematicaNotas: UILabel!
    
    @IBOutlet weak var txtFisicaFaltas: UILabel!
    
    @IBOutlet weak var txtFisicaNotas: UILabel!
    
    @IBOutlet weak var txtQuimicaFaltas: UILabel!
    
    @IBOutlet weak var txtQuimicaNotas: UILabel!
    
    @IBOutlet weak var txtGeografiaFaltas: UILabel!
    
    @IBOutlet weak var txtGeografiaNotas: UILabel!
    
    @IBOutlet weak var txtHistoriaFaltas: UILabel!
    
    @IBOutlet weak var txtHistoriaNotas: UILabel!
    
    @IBOutlet weak var txtFilosofiaFaltas: UILabel!
    
    @IBOutlet weak var txtFilosofiaNotas: UILabel!
    
    @IBOutlet weak var txtSociologiaFaltas: UILabel!
    
    @IBOutlet weak var txtSociologiaNotas: UILabel!
    
    @IBOutlet weak var txtInglesFaltas: UILabel!
    
    @IBOutlet weak var txtInglesNotas: UILabel!
    
    @IBOutlet weak var txtBiologiaFaltas: UILabel!
    
    @IBOutlet weak var txtBiologiaNotas: UILabel!
    
    @IBOutlet weak var txtArtesFaltas: UILabel!
    
    @IBOutlet weak var txtArtesNotas: UILabel!
    
    @IBOutlet weak var txtEdFisicaFaltas: UILabel!
    
    @IBOutlet weak var txtEdFisicaNotas: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func pegarNotas(){
        
        
        
        let portuguesFalta : Int = UserDefaults.standard.integer(forKey: "portuguesFaltas")
        let portuguesNota : Float = UserDefaults.standard.float(forKey: "portuguesMedia")
        
        if portuguesFalta <= 0 {
            txtPortuguesFaltas.text = " "
        }else {
            txtPortuguesFaltas.text = "Faltas : " + String(portuguesFalta)
        }
        
        if portuguesNota <= 0 {
            txtPortuguesNotas.text = " "
        }else {
           txtPortuguesNotas.text = String(format: "Média : %.1f",portuguesNota)
        }
        
        let matematicaFalta : Int = UserDefaults.standard.integer(forKey: "matematicaFaltas")
        let matematicaNota : Float = UserDefaults.standard.float(forKey: "matematicaMedia")
        
        if matematicaFalta <= 0{
            txtMatematicaFaltas.text = " "
        }else {
            txtMatematicaFaltas.text = "Faltas : " + String(matematicaFalta)
        }
        
        if matematicaNota <= 0 {
            txtMatematicaNotas.text = " "
        }else{
            txtMatematicaNotas.text = String(format: "Média : %.1f",matematicaNota)
        }
        
        let fisicaFalta : Int = UserDefaults.standard.integer(forKey: "fisicaFaltas")
        let fisicaNota : Float = UserDefaults.standard.float(forKey: "fisicaMedia")
        
        if fisicaFalta <= 0 {
            txtFisicaFaltas.text = " "
        }else {
            txtFisicaFaltas.text = "Faltas : " + String(fisicaFalta)
        }
        
        if fisicaNota <= 0 {
            txtFisicaNotas.text = " "
        }else {
            
            txtFisicaNotas.text = String(format: "Média : %.1f",fisicaNota)
        }
        
        let quimicaFalta : Int = UserDefaults.standard.integer(forKey: "quimicaFaltas")
        let quimicaNota : Float = UserDefaults.standard.float(forKey: "quimicaMedia")
        
        if quimicaFalta <= 0 {
            txtQuimicaFaltas.text = " "
        }else {
            txtQuimicaFaltas.text = "Faltas : " + String(quimicaFalta)
        }
        
        if quimicaNota <= 0{
            txtQuimicaNotas.text = " "
        }else {
            txtQuimicaNotas.text = String (format: "Média : %.1f",quimicaNota)
        }
        
        let geografiaFalta : Int = UserDefaults.standard.integer(forKey: "geografiaFaltas")
        let geografiaNota : Float = UserDefaults.standard.float(forKey: "geografiaMedia")
        
        if geografiaFalta <= 0 {
            txtGeografiaFaltas.text = " "
        }else {
            txtGeografiaFaltas.text = "Faltas : " + String(geografiaFalta)
        }
        
        if geografiaNota <= 0{
            txtGeografiaNotas.text = " "
        }else {
            txtGeografiaNotas.text = String (format: "Média : %.1f",geografiaNota)
        }
        
        let historiaFalta : Int = UserDefaults.standard.integer(forKey: "historiaFaltas")
        let historiaNota : Float = UserDefaults.standard.float(forKey: "historiaMedia")
        
        if historiaFalta <= 0 {
            txtHistoriaFaltas.text = " "
        }else {
            txtHistoriaFaltas.text = "Faltas : " + String(historiaFalta)
        }
        
        if historiaNota <= 0{
            txtHistoriaNotas.text = " "
        }else {
            txtHistoriaNotas.text = String (format: "Média : %.1f",historiaNota)
        }
        
        let filosofiaFalta : Int = UserDefaults.standard.integer(forKey: "filosofiaFaltas")
        let filosofiaNota : Float = UserDefaults.standard.float(forKey: "filosofiaMedia")
        
        if filosofiaFalta <= 0 {
            txtFilosofiaFaltas.text = " "
        }else {
            txtFilosofiaFaltas.text = "Faltas : " + String(filosofiaFalta)
        }
        
        if filosofiaNota <= 0{
            txtFilosofiaNotas.text = " "
        }else {
            txtFilosofiaNotas.text = String (format: "Média : %.1f",filosofiaNota)
        }
        
        let sociologiaFalta : Int = UserDefaults.standard.integer(forKey: "sociologiaFaltas")
        let sociologiaNota : Float = UserDefaults.standard.float(forKey: "sociologiaMedia")
        
        if sociologiaFalta <= 0 {
            txtSociologiaFaltas.text = " "
        }else {
            txtSociologiaFaltas.text = "Faltas : " + String(sociologiaFalta)
        }
        
        if sociologiaNota <= 0{
            txtSociologiaNotas.text = " "
        }else {
            txtSociologiaNotas.text = String (format: "Média : %.1f",sociologiaNota)
        }
        
        let inglesFalta : Int = UserDefaults.standard.integer(forKey: "inglesFaltas")
        let inglesNota : Float = UserDefaults.standard.float(forKey: "inglesMedia")
        
        if inglesFalta <= 0 {
            txtInglesFaltas.text = " "
        }else {
            txtInglesFaltas.text = "Faltas : " + String(inglesFalta)
        }
        
        if inglesNota <= 0{
            txtInglesNotas.text = " "
        }else {
            txtInglesNotas.text = String (format: "Média : %.1f",inglesNota)
        }
        
        let biologiaFalta : Int = UserDefaults.standard.integer(forKey: "biologiaFaltas")
        let biologiaNota : Float = UserDefaults.standard.float(forKey: "biologiaMedia")
        
        if biologiaFalta <= 0 {
            txtBiologiaFaltas.text = " "
        }else {
            txtBiologiaFaltas.text = "Faltas : " + String(biologiaFalta)
        }
        
        if biologiaNota <= 0{
            txtBiologiaNotas.text = " "
        }else {
            txtBiologiaNotas.text = String (format: "Média : %.1f",biologiaNota)
        }
        
        let artesFalta : Int = UserDefaults.standard.integer(forKey: "artesFaltas")
        let artesNota : Float = UserDefaults.standard.float(forKey: "artesMedia")
        
        if artesFalta <= 0 {
            txtArtesFaltas.text = " "
        }else {
            txtArtesFaltas.text = "Faltas : " + String(artesFalta)
        }
        
        if artesNota <= 0{
            txtArtesNotas.text = " "
        }else {
            txtArtesNotas.text = String (format: "Média : %.1f",artesNota)
        }
        
        let edfisicaFalta : Int = UserDefaults.standard.integer(forKey: "edfisicaFaltas")
        let edfisicaNota : Float = UserDefaults.standard.float(forKey: "edfisicaMedia")
        
        if edfisicaFalta <= 0 {
            txtEdFisicaFaltas.text = " "
        }else {
            txtEdFisicaFaltas.text = "Faltas : " + String(edfisicaFalta)
        }
        
        if edfisicaNota <= 0{
            txtEdFisicaNotas.text = " "
        }else {
            txtEdFisicaNotas.text = String (format: "Média : %.1f",edfisicaNota)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        pegarNotas()
        
    }


    
    
    /*
     
     // Apagar UserDefaults
 
 func resetDefaults() {
 let defaults = UserDefaults.standard
 let dictionary = defaults.dictionaryRepresentation()
 dictionary.keys.forEach { key in
 defaults.removeObject(forKey: key)
 }
 }
 
 */
}


//
//  UsuarioService.swift
//  Tinder
//
//  Created by Brendha Vivas Palhares Cardoso on 07/08/22.
//

import Foundation

class UsuarioService{
    
    static let shared = UsuarioService()
    
    let usuarios: [Usuario] = [
        Usuario(id: 101, nome: "Maria Silva", idade: 19, match: true, frase: "O ultimo a dar match chama", foto: "pessoa-1" ),
        Usuario(id: 102, nome: "Joana Lima", idade: 23, match: true, frase: "A vida passa muito rapido", foto: "pessoa-2" ),
        Usuario(id: 103, nome: "Rafaela Maria", idade: 28, match: true, frase: "Procuro amizades", foto: "pessoa-3" ),
        Usuario(id: 104, nome: "Jessica Paula", idade: 28, match: true, frase: "Seja feliz sendo voce", foto: "pessoa-4" ),
        Usuario(id: 105, nome: "Thais Joice", idade: 21, match: true, frase: "Sou caseira e gosto de cozinhar", foto: "pessoa-5" ),
        Usuario(id: 105, nome: "Carol Monteiro", idade: 24, match: true, frase: "Chama para conversamos", foto: "pessoa-6" ),
        Usuario(id: 105, nome: "Elisangela", idade: 22, match: true, frase: "Gosto de passear na cidade", foto: "pessoa-7" ),
        Usuario(id: 105, nome: "Jade Novaes", idade: 22, match: true, frase: "O trabalho é quem nos define", foto: "pessoa-8" ),
        Usuario(id: 105, nome: "Marcela Cardoso", idade: 21, match: true, frase: "Amigavel e gosto de sair", foto: "pessoa-9" ),
        Usuario(id: 105, nome: "Mirela Larissa", idade: 22, match: true, frase: "Sou calma e tranquila", foto: "pessoa-10" ),
        Usuario(id: 105, nome: "Ana Julia", idade: 21, match: true, frase: "Quero fazer amizades", foto: "pessoa-11" )
    
    
    ]
    
    func buscaUsuarios () -> [Usuario]{
        
        let usuarios: [Usuario] = []
        
        return self.usuarios
    }
}

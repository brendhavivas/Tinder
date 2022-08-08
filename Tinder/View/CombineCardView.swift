//
//  CombineCardView.swift
//  Tinder
//
//  Created by Brendha Vivas Palhares Cardoso on 07/08/22.
//

import UIKit

class CombineCardView: UIView{
    
    var usuario: Usuario?{
        didSet{
            if let usuario = usuario {
                fotoImageView.image = UIImage(named: usuario.foto)
                nomeLabel.text = usuario.nome
                idadeLabel.text = String(usuario.idade)
                fraseLabel.text = usuario.frase
            }
        }
    }
    
    let fotoImageView: UIImageView = .fotoImageView()
    
    let nomeLabel: UILabel = .textBoldLabel(size: 32, textColor: .white)
    let idadeLabel: UILabel = .textBoldLabel(size: 28, textColor: .white)
    let fraseLabel: UILabel = .textLabel(size: 18, textColor: .white, numberOfLines: 2)
    
    let deslikeImageView: UIImageView = .iconCard(named: "card-deslike")
    let likeImageView: UIImageView = .iconCard(named: "card-like")
    
    override init (frame: CGRect){
        super.init(frame: frame)
        //adicionar borda
        layer.borderWidth = 0.3
        layer.borderColor = UIColor.lightGray.cgColor
        layer.cornerRadius = 8
        clipsToBounds = true
        
        nomeLabel.adicionaShadow()
        idadeLabel.adicionaShadow()
        fraseLabel.adicionaShadow()
        
        addSubview(fotoImageView)
        
        addSubview(deslikeImageView)
        deslikeImageView.preencher(top: topAnchor,
                                   leading: nil,
                                   trailing: trailingAnchor,
                                   bottom: nil,
                                   padding: .init(top: 20, left: 0, bottom: 0, right: 20))
        
        
        addSubview(likeImageView)
        likeImageView.preencher(top: topAnchor,
                                   leading: leadingAnchor,
                                   trailing: nil,
                                   bottom: nil,
                                   padding: .init(top: 20, left: 20, bottom: 0, right: 0))
        
        
        fotoImageView.preencherSuperView()
    
        
        let nomeidadestackView = UIStackView(arrangedSubviews: [nomeLabel, idadeLabel, UIView()])
        nomeidadestackView.spacing = 12
        
        let stackView = UIStackView(arrangedSubviews: [nomeidadestackView, fraseLabel] )
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        
        addSubview(stackView)
        stackView.preencher(top: nil,
                            leading: leadingAnchor,
                            trailing: trailingAnchor,
                            bottom: bottomAnchor,
                            padding: .init(top: 0, left: 16, bottom: 16, right: 16))
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}

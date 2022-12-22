//
//  ViewController.swift
//  StackViewCreate
//
//  Created by Dilara Elçioğlu on 22.12.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let stackView = UIStackView()
    lazy var button1 = UIButton()
    lazy var button2 = UIButton()
    lazy var button3 = UIButton()
    lazy var button4 = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()

    }
//Constaitler problemli. Telefonu aşağı çevirince stack dönüyor.

    func setUpUI(){
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        view.addSubview(button4)
        view.addSubview(stackView)

        
        button1.snp.makeConstraints { make in
            make.top.equalTo(stackView.snp.top).offset(20)
            make.centerX.equalToSuperview()
            make.height.equalTo(80)
            make.width.equalTo(160)
        }
        button1.backgroundColor = .green
        button1.setTitle("YEŞİL", for: .normal)
        button1.setTitleColor(.white, for: .normal)
        
        button2.snp.makeConstraints { make in
            make.top.equalTo(button1.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
            make.height.equalTo(80)
            make.width.equalTo(160)
        }
        button2.backgroundColor = .green
        button2.setTitle("MAVİ", for: .normal)
        button2.setTitleColor(.white, for: .normal)
        
        button3.snp.makeConstraints { make in
            make.top.equalTo(button2.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
            make.height.equalTo(80)
            make.width.equalTo(160)
        }
        button3.backgroundColor = .green
        button3.setTitle("TURUNCU", for: .normal)
        button3.setTitleColor(.white, for: .normal)
    
        button4.snp.makeConstraints { make in
            make.top.equalTo(button3.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
            make.height.equalTo(80)
            make.width.equalTo(160)
        }
        button4.backgroundColor = .green
        button4.setTitle("MOR", for: .normal)
        button4.setTitleColor(.white, for: .normal)
    
        stackView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(60)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().offset(-10)
            make.bottom.equalToSuperview().offset(-20)
        }
        stackView.backgroundColor = .blue
        stackView.layer.cornerRadius = 30
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        stackView.addArrangedSubview(button1)
        stackView.addArrangedSubview(button2)
        stackView.addArrangedSubview(button3)
        stackView.addArrangedSubview(button4)

        
    
    }
    
    
}


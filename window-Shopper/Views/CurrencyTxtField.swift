//
//  CurrencyTxtField.swift
//  window-Shopper
//
//  Created by Salvador Marquez on 5/2/19.
//  Copyright © 2019 Citsa Digital. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField{

    override func draw (_ rect: CGRect){
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5 , y: frame.size.height/2 - size/2 , width: size , height: size ))
        currencyLbl.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.4778003961)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
        currencyLbl.sizeToFit()
        
        
    }

    override func prepareForInterfaceBuilder() {
        customizeView()
    }
        
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2486520687)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder{
            let place = NSAttributedString(string: p ,attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

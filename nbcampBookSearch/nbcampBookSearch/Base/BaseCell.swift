//
//  BaseCell.swift
//  nbcampBookSearch
//
//  Created by LCH on 5/14/25.
//

import UIKit

class BaseCell: UICollectionViewCell {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureUI() {
        
    }
    
    func setConstraints() {
        
    }
    
}

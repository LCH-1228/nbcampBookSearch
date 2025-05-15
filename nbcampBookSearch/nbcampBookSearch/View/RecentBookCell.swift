//
//  RecentBookCell.swift
//  nbcampBookSearch
//
//  Created by LCH on 5/14/25.
//

import UIKit
import SnapKit

class RecentBookCell: BaseCell {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "person")
        imageView.backgroundColor = .gray
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
        setConstraints()
        
        imageView.bounds = contentView.bounds
        imageView.layer.cornerRadius = imageView.bounds.width / 2
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configureUI() {
        super.configureUI()
        
        [
            imageView
        ].forEach{ contentView.addSubview($0) }
    }
    
    override func setConstraints() {
        super.setConstraints()
        
        imageView.snp.makeConstraints {
            $0.edges.equalTo(contentView.snp.edges)
        }
    }
    
    func configure() {

    }
}

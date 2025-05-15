//
//  SearchListCell.swift
//  nbcampBookSearch
//
//  Created by LCH on 5/14/25.
//

import UIKit
import SnapKit

final class SearchListCell: BaseCell {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "책이름"
        label.textColor = .label
        label.font = .systemFont(ofSize: 18, weight: .semibold)
        return label
    }()
    
    private let authorLabel: UILabel = {
        let label = UILabel()
        label.text = "저자"
        label.textColor = .label
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        return label
    }()
    
    private let priceLabel: UILabel = {
        let label = UILabel()
        label.text = "1000 원"
        label.textColor = .label
        label.font = .systemFont(ofSize: 16, weight: .regular)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configureUI() {
        super.configureUI()
        contentView.layer.borderColor = UIColor.lightGray.cgColor
        contentView.layer.borderWidth = 1
        [
            titleLabel,
            authorLabel,
            priceLabel
        ].forEach { contentView.addSubview($0) }
    }
    
    override func setConstraints() {
        super.setConstraints()
        
        titleLabel.snp.makeConstraints {
            $0.height.equalTo(20)
            $0.leading.equalTo(contentView.snp.leading).inset(16)
            $0.verticalEdges.equalTo(contentView.snp.verticalEdges).inset(8).priority(.high)
            $0.centerY.equalTo(contentView.snp.centerY)
        }
        
        authorLabel.snp.makeConstraints {
            $0.height.equalTo(18)
            $0.centerX.equalTo(contentView.snp.centerX)
            $0.centerY.equalTo(contentView.snp.centerY)
        }
        
        priceLabel.snp.makeConstraints {
            $0.height.equalTo(18)
            $0.trailing.equalTo(contentView.snp.trailing).inset(20)
            $0.centerY.equalTo(contentView.snp.centerY)
        }
    }
    
    func configure() {
        
    }
}

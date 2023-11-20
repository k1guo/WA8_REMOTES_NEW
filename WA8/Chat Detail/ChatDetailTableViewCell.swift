//
//  ChatDetailTableViewCell.swift
//  WA8
//
//  Created by 郭 on 2023/11/20.
//

import UIKit

class ChatDetailTableViewCell: UITableViewCell {

        var wrapperCellView: UIView!
        var labelMessage: UILabel!
        var labelTime: UILabel!

        
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            
            setupWrapperCellView()
            setupLabelMessage()
            setupLabelTime()
            
            initConstraints()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func setupWrapperCellView(){
            wrapperCellView = UITableViewCell()
            
            //working with the shadows and colors...
            wrapperCellView.backgroundColor = .white
            wrapperCellView.layer.cornerRadius = 6.0
            wrapperCellView.layer.shadowColor = UIColor.gray.cgColor
            wrapperCellView.layer.shadowOffset = .zero
            wrapperCellView.layer.shadowRadius = 4.0
            wrapperCellView.layer.shadowOpacity = 0.4
            wrapperCellView.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(wrapperCellView)
        }
        
        func setupLabelMessage(){
            labelMessage = UILabel()
            labelMessage.font = UIFont.boldSystemFont(ofSize: 20)
            labelMessage.translatesAutoresizingMaskIntoConstraints = false
            wrapperCellView.addSubview(labelMessage)
        }
        
        func setupLabelTime(){
            labelTime = UILabel()
            labelTime.font = UIFont.boldSystemFont(ofSize: 14)
            labelTime.translatesAutoresizingMaskIntoConstraints = false
            wrapperCellView.addSubview(labelTime)
        }
        

        
        func initConstraints(){
            NSLayoutConstraint.activate([
                wrapperCellView.topAnchor.constraint(equalTo: self.topAnchor,constant: 10),
                wrapperCellView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
                wrapperCellView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
                wrapperCellView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
                
                labelMessage.topAnchor.constraint(equalTo: wrapperCellView.topAnchor, constant: 12),
                labelMessage.leadingAnchor.constraint(equalTo: wrapperCellView.leadingAnchor, constant: 16),
                labelMessage.heightAnchor.constraint(equalToConstant: 20),
                labelMessage.widthAnchor.constraint(lessThanOrEqualTo: wrapperCellView.widthAnchor),
                
                labelTime.topAnchor.constraint(equalTo: labelMessage.bottomAnchor, constant: 10),
                labelTime.leadingAnchor.constraint(equalTo: labelMessage.leadingAnchor),
                labelTime.heightAnchor.constraint(equalToConstant: 16),
                labelTime.widthAnchor.constraint(lessThanOrEqualTo: labelMessage.widthAnchor),
                

                wrapperCellView.heightAnchor.constraint(equalToConstant: 72)
            ])
        }

        override func awakeFromNib() {
            super.awakeFromNib()
            // Initialization code
        }

        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)

            // Configure the view for the selected state
        }

    }



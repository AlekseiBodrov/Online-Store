import UIKit

class MainTableViewCell: UITableViewCell {

    let customView = MainTableView.instanceFromNib()

    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    override func layoutSubviews() {
        super.layoutSubviews()
    }


    func configure(with item: Item){
        customView.frame = contentView.bounds
        contentView.addSubview(customView)

        guard let name = item.image,
              let price = item.price,
              let discription = item.description,
              let label = item.name else {return}

        customView.configureImage(with: name)
        customView.configurePrice(with: price)
        customView.configureDiscriptionLabel(with: discription)
        customView.configureLabel(with: label)

    }

}

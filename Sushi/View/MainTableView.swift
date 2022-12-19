import UIKit

class MainTableView: UIView {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var priceView: UIView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var discriptionLabel: UILabel!
    @IBOutlet weak var label: UILabel!

    static func instanceFromNib() -> MainTableView {
        return UINib(nibName: "MainTableView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! MainTableView

    }

    func configureImage(with name: String) {
        imageView.rounded()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true

        imageView.image = UIImage(named: name)
    }

    func configurePrice(with price: Int) {
        priceView.rounded()
        priceView.layer.borderWidth = 1
        priceView.layer.borderColor = UIColor.darkPink.cgColor

        priceLabel.text = "от \(price) руб"
        priceLabel.font = UIFont(name: "ArialMT", size: 13)
        priceLabel.textColor = .darkPink
        priceLabel.contentMode = .center
    }

    func configureDiscriptionLabel(with text: String) {
        discriptionLabel.font = UIFont(name: "ArialMT", size: 13)
        discriptionLabel.numberOfLines = 0
        discriptionLabel.text = text


//        for family: String in UIFont.familyNames {
//            print(family)
//            for names: String in UIFont.fontNames(forFamilyName: family) {
//                print("== \(names)")
//            }
//        }
    }

//    Arial
//    == ArialMT
//    == Arial-ItalicMT
//    == Arial-BoldMT
//    == Arial-BoldItalicMT

    func configureLabel(with text: String) {
        label.text = text
        label.numberOfLines = 2
        label.font = UIFont(name: "Arial-BoldMT", size: 17)
    }
}

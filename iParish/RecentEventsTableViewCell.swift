

import UIKit

class RecentEventsTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

  
    @IBOutlet weak var churchdesc: UILabel!
    @IBOutlet weak var datetime: UILabel!
    @IBOutlet weak var churchname: UILabel!
}

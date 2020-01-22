

import UIKit

class MainControllerViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    @IBOutlet weak var adorationVw: UIView!
    @IBOutlet weak var massVw: UIView!
    @IBOutlet weak var confessionsVw: UIView!
    @IBOutlet weak var chapelsVw: UIView!
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! RecentEventsTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = .white
        self.navigationController?.navigationBar.tintColor = .yellow
        // Do any additional setup after loading the view.
        setupViews()
        doNavBarStyle()
        
        recentEventsTable.dataSource = self
        recentEventsTable.delegate = self
    }
    
    func setupViews(){
        
        headerView.createShadowBg()
        middleView.createShadowBg()
        chapelsVw.createShadowBg()
        massVw.createShadowBg()
        adorationVw.createShadowBg()
        confessionsVw.createShadowBg()
//        headerView.layer.cornerRadius = 7.0
//
//        headerView.layer.shadowOpacity = 0.16
//        headerView.layer.shadowPath = UIBezierPath(rect: headerView.bounds).cgPath
//        headerView.layer.shadowOffset = .zero
//        headerView.layer.shadowRadius = 10.0
//
//        headerView.layer.shadowColor = Utils.hexToUIColor(hex: "939393").cgColor
      
       
        
        chapelsVw.layer.cornerRadius = 7.0
        
    }
    
    func doNavBarStyle(){
       // let navBar = self.navigationController?.navigationBar
        
//        navBar?.isTranslucent = false
//        navBar?.setBackgroundImage(UIImage(), for: .default)
       // navBar?.clipsToBounds = true
    }
    
    @IBOutlet weak var middleView: UIView!
    @IBOutlet weak var recentEventsTable: UITableView!
    @IBOutlet weak var headerView: UIView!
    
}

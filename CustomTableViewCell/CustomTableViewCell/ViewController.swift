//
//  ViewController.swift
//  uitableview
//
//  Created by JAVIER CALATRAVA LLAVERIA on 9/7/15.
//  Copyright © 2015 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var tbvData: UITableView!
    
    var items: [String] = ["We dkfj ld flkasjlfasjlkfj  askfksj kj s sjkjf lasjlfsj lfjljl jlk lk", "Heart asan ,nas ,fn ,masn ,mfnas ,mfn m,sanf,m nnj  asn sa ,ansmfnamf ma nfmnamsdfnma,snfdman,dfmn am nfmnasmdnmsfn masnmf nsmfn mn fdm", "Swift msandmf,an ,mf nasmnf m asnm,fn asmnf kjasnfasnf,mna,mna ,fn ,fn ,mfn,mfan f,amnaf,m nfadm,fn m,fan ,mfan,adf"]
    var images: [String] = ["Pic1","Pic2","Pic3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupUIControls()
    }
    
    func setupUIControls(){
        
        tbvData.delegate=self;
        tbvData.dataSource=self;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK - UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        
        let cell = tbvData.dequeueReusableCellWithIdentifier("CustomCellId", forIndexPath: indexPath) as! CustomTVC
        
        cell.configure(text:self.items[indexPath.row], image: self.images[indexPath.row])
        return cell
        
        
    }
    
    //MARK - UITableViewDelegate
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 200;
        
    }
    
}

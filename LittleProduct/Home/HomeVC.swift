//
//  HomeVC.swift
//  LittleProduct
//
//  Created by hank on 2024/9/24.
//

import UIKit
import XLPagerTabStrip

class HomeVC: ButtonBarPagerTabStripViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        datasource = self
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let followVC = storyboard!.instantiateViewController(identifier: kFollowVCID)
        let nearByVC = storyboard!.instantiateViewController(identifier: kNearByVCID)
        let discoveryVC = storyboard!.instantiateViewController(identifier: kDiscoveryVCID)
        return [followVC,nearByVC,discoveryVC]
    }
}

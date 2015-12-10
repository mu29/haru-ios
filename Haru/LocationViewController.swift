//
//  LocationViewController.swift
//  Haru
//
//  Created by Sunwoo Park on 2015. 12. 10..
//  Copyright © 2015년 Pedaling. All rights reserved.
//

import UIKit
import APLExpandableCollectionView

class LocationViewController: UIViewController, APLExpandableCollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: APLExpandableCollectionView!
    
    var sections:[String]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        sections = ["Section", "Section"]
        
        let sectionInsetX:CGFloat = 0
        let sectionInsetTop:CGFloat = 0
        let collectionViewInsetX:CGFloat = 0
        let collectionViewInsetY:CGFloat = 0
        
        let layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: 70.0, height: 44.0)
        layout.minimumLineSpacing = 0
        layout.sectionInset = UIEdgeInsets(top: sectionInsetTop, left: sectionInsetX, bottom: 0.0, right: sectionInsetX)
        
        self.collectionView.contentInset = UIEdgeInsets(top: collectionViewInsetY, left: collectionViewInsetX, bottom: collectionViewInsetY + sectionInsetTop, right: collectionViewInsetX)
        self.collectionView.allowsMultipleExpandedSections = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - UICollectionViewDataSource
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return self.sections.count
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell:LocationCell = collectionView.dequeueReusableCellWithReuseIdentifier("LocationCell", forIndexPath: indexPath) as! LocationCell
        
        if indexPath.item == 0 {
            cell.label.text = "Section \(indexPath.section + 1)"
        } else {
            cell.label.text = "Item \(indexPath.row)"
        }
        
        return cell
    }

}

//
//  ViewController.swift
//  collectionViewFlowLayout
//
//  Created by sadegh on 9/22/19.
//  Copyright © 2019 sadegh. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let flow = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        
        flow.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        
        flow.minimumInteritemSpacing = 50
        
    }
    let items: [UIImage] = [#imageLiteral(resourceName: "right"),#imageLiteral(resourceName: "right"),#imageLiteral(resourceName: "right"),#imageLiteral(resourceName: "right"),#imageLiteral(resourceName: "right"),#imageLiteral(resourceName: "right"),#imageLiteral(resourceName: "right"),#imageLiteral(resourceName: "right"),#imageLiteral(resourceName: "right"),#imageLiteral(resourceName: "right"),#imageLiteral(resourceName: "right"),#imageLiteral(resourceName: "right"),#imageLiteral(resourceName: "right"),#imageLiteral(resourceName: "right"),#imageLiteral(resourceName: "right"),#imageLiteral(resourceName: "right"),#imageLiteral(resourceName: "right"),#imageLiteral(resourceName: "right")]
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
        
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.imgView.image = items[indexPath.row]
        
        return cell
       
    }
    override func viewDidAppear(_ animated: Bool) {
     
    }

    

}
extension ViewController: UICollectionViewDelegateFlowLayout {

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout
        
        let numberofItem: CGFloat = 3
        
        let collectionViewWidth = self.collectionView.bounds.width
        
        let extraSpace = (numberofItem - 1) * flowLayout.minimumInteritemSpacing
        
        let inset = flowLayout.sectionInset.right + flowLayout.sectionInset.left
        
        let width = Int((collectionViewWidth - extraSpace - inset) / numberofItem)
        
        print(width)
        
        return CGSize(width: width, height: width)
    }
    
    
}


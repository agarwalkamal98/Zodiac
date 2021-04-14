//
//  ViewController.swift
//  ZodiacTaskkk
//
//  Created by kamal agarwal on 01/03/21.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    let Imgarr = ["Pisces","Aries","Libra","Leo","Aquarius","Gemini","Scorpio","Virgo","Sagittarius","Cancer","Taurus","Capricorn"]
    
    let zodName = ["Pisces","Aries","Libra","Leo","Aquarius","Gemini","Scorpio","Virgo","Sagittarius","Cancer","Taurus","Capricorn"]
    
    
    let zodDate =  ["March 21 - April 19","April 20 - May 20","May 21- June 20","June 21 - July 22","July 23 - Aug 22","Aug 23 - Sept 22","Sept 23 - Oct 22","Oct 23 - Nov 21","Nov 22 - Dec 21","Dec 22 - Jan 19","Jan 20 - Feb 18","Feb 21 - March 20"]
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        cell.img.image = UIImage(named: "\(Imgarr[indexPath.row])")
        cell.Lbl1.text = "\(zodName[indexPath.row])"
        cell.Lbl2.text = "\(zodDate[indexPath.row])"
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
       return CGSize(width: floor((collectionView.frame.size.width-2)/3), height: floor((collectionView.frame.size.height-3)/4))
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    

        override func viewDidLoad() {
            super.viewDidLoad()
        }


}


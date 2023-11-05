

import UIKit

class CountryCollectionViewController: UICollectionViewController {

    var name = Country().name
    
    let itemsPerRow: CGFloat = 3
    
    let sectionInserts = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        name.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "countryCell", for: indexPath) as! CountryCollectionViewCell
    
        let imageName = name[indexPath.item]
        
        cell.countryImage.image = UIImage(named: imageName)
        cell.countryLabel.text = imageName
    
        return cell
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension CountryCollectionViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let paddingWidth = sectionInserts.left * (itemsPerRow + 1)
        print(paddingWidth)
        let availableWidth = collectionView.frame.width - paddingWidth
        print(availableWidth)
        let widthPerItem = availableWidth / itemsPerRow
        print(widthPerItem)
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        sectionInserts
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        sectionInserts.left
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        sectionInserts.left
    }

}

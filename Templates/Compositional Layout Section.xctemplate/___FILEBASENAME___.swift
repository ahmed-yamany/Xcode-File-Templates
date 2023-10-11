//___FILEHEADER___

import UIKit
import CompositionalLayoutableSection

class ___FILEBASENAME___CollectionViewSection: CompositionalLayoutableSection {
    typealias ResposeType = <#type#>
    var items: [ResposeType] = []
    override init() {
        super.init()
        delegate = self
        dataSource = self
        layout = self
    }
}
// MARK: - ___FILEBASENAME___ CollectionView Section Data Source
//
extension ___FILEBASENAME___CollectionViewSection: CompositionalLayoutableSectionDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        <#code#>
    }
}
// MARK: - ___FILEBASENAME___ CollectionView Section Layout
extension ___FILEBASENAME___CollectionViewSection: CompositionalLayoutableSectionLayout {
    func itemLayoutInGroup() -> NSCollectionLayoutItem {
        <#code#>
    }
    func groupLayoutInSection() -> NSCollectionLayoutGroup {
        <#code#>
    }
    func sectionLayout(at index: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection {
        <#code#>
    }
}
// MARK: - ___FILEBASENAME___ CollectionView Section Delegate
extension ___FILEBASENAME___CollectionViewSection: CompositionalLayoutableSectionDelegate {
    func registerCell(_ collectionView: UICollectionView) {
        <#code#>
    }
    func registerSupplementaryView(_ collectionView: UICollectionView) {
        <#code#>
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        <#code#>
    }
}

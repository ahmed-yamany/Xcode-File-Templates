//___FILEHEADER___

import UIKit
import CompositionalLayoutableSection

// MARK: - A custom section for displaying ___FILEBASENAME___ in a collection view.
class ___FILEBASENAME___CollectionViewSection: CompositionalLayoutableSection {
    typealias ItemsType = <#code#>
    typealias CellType = ___FILEBASENAME___CollectionViewCell
    // typealias TopSupplementaryViewType = UICollectionReusableView
    // typealias DecorationViewType = UICollectionReusableView
    //
    var items: [ItemsType] = []
    var viewController: UIViewController?
    override init() {
        super.init()
        delegate = self
        dataSource = self
        layout = self
    }
    //
    private var isConfigured = false
    public func configure(owner viewController: UIViewController) {
        guard !isConfigured else { return }
        isConfigured = true
        self.viewController = viewController
    }
}
// MARK: - ___FILEBASENAME___ CollectionView Section Data Source
extension ___FILEBASENAME___CollectionViewSection: CompositionalLayoutableSectionDataSource {
    // number Of Items In Section
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    /// cell For Item At
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(CellType.self, for: indexPath)
        <#code#>
        return cell
    }
    /*
    // view For Supplementary Element Of Kind
     func collectionView(_ collectionView: UICollectionView,
                         viewForSupplementaryElementOfKind kind: String,
                         at indexPath: IndexPath) -> UICollectionReusableView {
         let view = collectionView.dequeueReusableSupplementaryView(TopSupplementaryViewType.self,
                                                                    ofKind: TopSupplementaryViewType.identifier,
                                                                    for: indexPath)
         <#code#>
         return view
     }
     */
}
// MARK: - ___FILEBASENAME___ CollectionView Section Layout
extension ___FILEBASENAME___CollectionViewSection: CompositionalLayoutableSectionLayout {
    var spacing: CGFloat { 8 } // The spacing between items in the section.
    var width: CGFloat { 66 + spacing } // The width of each item in the section.
    var height: CGFloat { 80 } // The height of each item in the section.
    /// - Returns: The layout for an item within the group.
    func itemLayoutInGroup() -> NSCollectionLayoutItem {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        return item
    }
    ///  - Returns: The layout for a group within the section.
    func groupLayoutInSection() -> NSCollectionLayoutGroup {
        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(width), heightDimension: .absolute(height))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [itemLayoutInGroup()])
        // group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: spacing, bottom: 0, trailing: 0)
        return group
    }
    /// Defines the layout for the entire section, including groups and supplementary views.
    func sectionLayout(at index: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection {
        let section = NSCollectionLayoutSection(group: groupLayoutInSection())
        // section.orthogonalScrollingBehavior = .continuous
        // section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: spacing, bottom: 0, trailing: spacing)
        // section.boundarySupplementaryItems = [topSupplementaryItem]
        // let sectionBackground = NSCollectionLayoutDecorationItem.background(elementKind: DecorationViewType.identifier)
        // section.decorationItems = [sectionBackground]
        return section
    }
}
// MARK: - ___FILEBASENAME___ CollectionView Section Delegate
extension ___FILEBASENAME___CollectionViewSection: CompositionalLayoutableSectionDelegate {
    /// Registers the cell type with the given collection view.
    func registerCell(_ collectionView: UICollectionView) {
        collectionView.registerFromNib(CellType.self)
    }
    /*
    /**
     Registers the supplementary view types
     - Note: you can register here more supplementary views for the section by changing 'supplementaryViewOfKind'
     */
     func registerSupplementaryView(_ collectionView: UICollectionView) {
        collectionView.register(TopSupplementaryViewType.self, supplementaryViewOfKind: TopSupplementaryViewType.identifier)
     }
     */
    /*
     /// Registers the Decoration view for the secition
     func registerDecorationView(_ layout: UICollectionViewCompositionalLayout) {
         layout.register(DecorationViewType.self, forDecorationViewOfKind: DecorationViewType.identifier)
     }
     */
    /*
     ///
     func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
     }
     */
}

// MARK: - Private Handelers
extension ___FILEBASENAME___CollectionViewSection {
    /*
    private var topSupplementaryItem: NSCollectionLayoutBoundarySupplementaryItem {
        let supplementarySize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(44))
        return  NSCollectionLayoutBoundarySupplementaryItem(layoutSize: supplementarySize,
                                                            elementKind: TopSupplementaryViewType.identifier,
                                                            alignment: .top)
    }
    */
}

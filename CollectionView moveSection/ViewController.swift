//
//  ViewController.swift
//  CollectionView moveSection
//
//  Created by David Nadoba on 24.01.19.
//  Copyright © 2019 David Nadoba. All rights reserved.
//

import Cocoa

class CollectionViewItem: NSCollectionViewItem {
    override func loadView() {
        let view = NSView()
        view.wantsLayer = true
        view.layer?.backgroundColor = NSColor.red.cgColor
        self.view = view
    }
}

class ViewController: NSViewController {
    @IBOutlet weak var collectionView: NSCollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
    }
    
    @IBAction func moveSection(_ sender: NSButton) {
        collectionView.moveSection(0, toSection: 1)
    }
}

extension ViewController: NSCollectionViewDataSource {
    func numberOfSections(in collectionView: NSCollectionView) -> Int {
        return 2
    }
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        let item = CollectionViewItem()
        return item
    }
}

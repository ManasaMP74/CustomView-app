//
//  MyFirstView.swift
//  test
//
//  Created by Manasa Marlingalar on 07/12/20.
//

import UIKit

class MyFirstView: UIView {
    @IBOutlet weak var label: UILabel!
    @IBOutlet var view: UIView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        view.backgroundColor = UIColor.blue
        loadNib()
    }

    init (labelText: String) {
        super.init(frame: .zero)
        let view = loadNib()
        view.backgroundColor = UIColor.green
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        let view = loadNib()
        view.backgroundColor = UIColor.red
    }

    @discardableResult func loadNib() -> UIView {
        let view = Bundle.main.loadNibNamed("MyFirstView", owner: self, options: nil)?.first as? UIView
        view?.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        view?.frame = bounds
        addSubview(view!)
        return view!
    }
}

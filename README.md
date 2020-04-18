# Preparable

## What is this?
This package is designed to make the class easier to read and write.

## Usage

before
```before.swift
class ViewController: UIViewController {
    let collectionView: UICollectionView = {
        let view = UICollectionView()
        view.backgroundColor = .white
        view.register(Cell.self,forCellWithReuseIdentifier: "cell")
    }()
}
```

after
```after.swift
class ViewController: UIViewController {
    let collectionView = UICollectionView()
        .then {
            $0.backgroundColor = .white
            $0.register(Cell.self,forCellWithReuseIdentifier: "cell")
        }
}
```

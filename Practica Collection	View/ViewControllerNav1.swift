//
//  ViewControllerNav1.swift
//  Practica Collection	View
//
//  Created by usu27 on 17/12/15.
//  Copyright © 2015 usu27. All rights reserved.
//
import UIKit

class ViewControllerNav1: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {
    
    var imagenes:NSArray = [UIImage(named:"mario1.jpg")!,UIImage(named:"mario2.jpg")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView:UICollectionView,numberOfItemsInSection section:Int)->Int{
        
        return 2
        
        // Devuelve el número de elementos que se mostrarán en el collectionView
        
    }
    
    func collectionView(collectionView:UICollectionView,cellForItemAtIndexPath indexPath:NSIndexPath)->UICollectionViewCell {
        let cell2:UICollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("cell2", forIndexPath: indexPath)
        let img = cell2.viewWithTag(1) as! UIImageView
        img.image=imagenes.objectAtIndex(indexPath.row)as! UIImage
        
         return cell2
        
        /*
        
        Devuelve la celda que se debe mostrar en la posición
        indexPath para el collectionView.
        
        Puedes usar los siguientes pasos:
        
        1. Crea una variable cell de tipo UICollectionViewCell con el
        método dequeueReusableCellWithReuseIdentifier del
        collectionView.
        
        2. Crea una UIImageView usando el método cell.viewWithTag(1)
        
        3. Añade una imagen al UIImageView en función del indexPath.
        Usa el NSArray de imágenes que habías creado.
        
        */
       
    }
    
  func collectionView(collectionView: UICollectionView,
        didSelectItemAtIndexPath indexPath: NSIndexPath) {
            
            let imagenSeleccionada = imagenes.objectAtIndex(indexPath.row%6)as? UIImage
            
            let mostrar: ViewController = self.storyboard?.instantiateViewControllerWithIdentifier("Detalle") as! ViewController
            mostrar.imagen = imagenSeleccionada!
            
            self.navigationController?.pushViewController(mostrar, animated: true)
            
    }
}
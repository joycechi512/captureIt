//
//  ViewController.swift
//  captureIt
//
//  Created by Joyce on 7/14/20.
//  Copyright © 2020 Joyce. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    
    var imagePicker = UIImagePickerController()
    @IBOutlet weak var newImage: UIImageView!

    @IBOutlet weak var displayImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
    }

    @IBAction func takeSelfieTapped(_ sender: Any) {
        imagePicker.sourceType = .camera
        
        present(imagePicker, animated: true, completion: nil)
    }
    @IBAction func libraryTapped(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
}

func imagePickerController(_picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
    
    if let selectedImage = info [UIImagePickerController.InfoKey.originalImage] as? UIImage {newImage.image = selectedImage}
    
    imageChoosen.dismiss(animated: true, completion: nil)
}


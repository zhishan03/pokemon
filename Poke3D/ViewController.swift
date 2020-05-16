//
//  ViewController.swift
//  Poke3D
//
//  Created by joy chen on 2020-05-15.
//  Copyright © 2020 joy chen. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        
        sceneView.autoenablesDefaultLighting = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARImageTrackingConfiguration()
        
        if let imageToTrack = ARReferenceImage.referenceImages(inGroupNamed: "Pokemon Cards", bundle: Bundle.main) {
        
            configuration.trackingImages = imageToTrack
        
            configuration.maximumNumberOfTrackedImages = 6
            
            print("Images Sucessfully Added")
        }

        
        
        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }

    // MARK: - ARSCNViewDelegate
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        
        let node = SCNNode()
        
        if let imageAnchor = anchor as? ARImageAnchor {
            
            let plane = SCNPlane(width:
                imageAnchor.referenceImage.physicalSize.width, height:
                imageAnchor.referenceImage.physicalSize.height)
            
            plane.firstMaterial?.diffuse.contents = UIColor(white: 1.0, alpha: 0.5)
            
            let planeNode = SCNNode(geometry: plane)
            
            planeNode.eulerAngles.x = -Float.pi / 2
            
            node.addChildNode(planeNode)
            
            //eevee
            
            if imageAnchor.referenceImage.name == "eevee-card" {
                
                if let pokeScene = SCNScene(named: "art.scnassets/eevee.scn") {
                
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                
                        pokeNode.eulerAngles.x = Float.pi / 2
                
                        planeNode.addChildNode(pokeNode)
                    }
                }
            }
            
            //oddish
            if imageAnchor.referenceImage.name == "oddish-card" {
                
                if let pokeScene = SCNScene(named: "art.scnassets/oddish.scn") {
                
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                
                        pokeNode.eulerAngles.x = Float.pi / 2
                
                        planeNode.addChildNode(pokeNode)
                    }
                }
            }
            
            //dewgong
            if imageAnchor.referenceImage.name == "dewgong-card" {
                
                if let pokeScene = SCNScene(named: "art.scnassets/dewgong/dewgong.scn") {
                
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                
                        pokeNode.eulerAngles.x = Float.pi / 2
                
                        planeNode.addChildNode(pokeNode)
                    }
                }
            }
            
            //pikachu
            if imageAnchor.referenceImage.name == "pikachu-card" {
                
                if let pokeScene = SCNScene(named: "art.scnassets/pikachu/pikachu.scn") {
                
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                
                        pokeNode.eulerAngles.x = Float.pi / 2
                
                        planeNode.addChildNode(pokeNode)
                    }
                }
            }
            
            //persian
            if imageAnchor.referenceImage.name == "persian-card" {
                
                if let pokeScene = SCNScene(named: "art.scnassets/persian/persian.scn") {
                
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                
                        pokeNode.eulerAngles.x = Float.pi / 2
                
                        planeNode.addChildNode(pokeNode)
                    }
                }
            }
            
            //leafeon
            if imageAnchor.referenceImage.name == "leafeon-card" {
                
                if let pokeScene = SCNScene(named: "art.scnassets/leafeon/leafeon.scn") {
                
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                
                        pokeNode.eulerAngles.x = Float.pi / 2
                
                        planeNode.addChildNode(pokeNode)
                    }
                }
            }
            
            //psyduck
            if imageAnchor.referenceImage.name == "psyduck-card" {
                
                if let pokeScene = SCNScene(named: "art.scnassets/psyduck/psyduck.scn") {
                
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                
                        pokeNode.eulerAngles.x = Float.pi / 2
                
                        planeNode.addChildNode(pokeNode)
                    }
                }
            }
            
            if imageAnchor.referenceImage.name == "arbok-card" {
                
                if let pokeScene = SCNScene(named: "art.scnassets/arbok/arbok.scn") {
                
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                
                        pokeNode.eulerAngles.x = Float.pi / 2
                
                        planeNode.addChildNode(pokeNode)
                    }
                }
            }
            
            if imageAnchor.referenceImage.name == "bulbasaur-card" {
                
                if let pokeScene = SCNScene(named: "art.scnassets/bulbasaur/bulbasaur.scn") {
                
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                
                        pokeNode.eulerAngles.x = Float.pi / 2
                
                        planeNode.addChildNode(pokeNode)
                    }
                }
            }
            
            if imageAnchor.referenceImage.name == "ivysaur-card" {
                
                if let pokeScene = SCNScene(named: "art.scnassets/ivysaur/ivysaur.scn") {
                
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                
                        pokeNode.eulerAngles.x = Float.pi / 2
                
                        planeNode.addChildNode(pokeNode)
                    }
                }
            }
        }
        
        
        return node
    
    }
}

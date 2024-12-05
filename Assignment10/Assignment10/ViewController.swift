//
//  ViewController.swift
//  Assignment10
//
//  Created by Джан Влад on 28.11.2024.
//

import UIKit

class ViewController: UIViewController {

   /* override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }*/
    @IBOutlet weak var Name: UILabel!
    
    @IBOutlet weak var ImageofHero: UIImageView!
    @IBOutlet weak var StatsLabel: UILabel!
    
    private var superheroes: [Superhero] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchSuperheroes()
    }
   private func fetchSuperheroes() {
            NetworkingManager.shared.fetchSuperheroes { [weak self] result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let superheroes):
                        self?.superheroes = superheroes
                    case .failure(let error):
                        self?.showError(message: error.localizedDescription)
                    }
                }
            }
        }
    @IBAction func RandomizeButton(_ sender: UIButton) {
        guard !superheroes.isEmpty else { return }
        let randomHero = superheroes.randomElement()
        updateUI(with: randomHero)
    }
    private func updateUI(with superhero: Superhero?) {
          guard let superhero = superhero else { return }
          Name.text = superhero.name
          StatsLabel.text = """
          Full Name: \(superhero.biography.fullName ?? "Unknown")
          Place of Birth: \(superhero.biography.placeOfBirth ?? "Unknown")
          Gender: \(superhero.appearance.gender )
          Race: \(superhero.appearance.race ?? "Unknown")
          Height: \(superhero.appearance.height )
          Work: \(superhero.work.occupation )
          Base: \(superhero.work.base )
          Intelligence: \(superhero.powerstats.intelligence ?? 0)
          Strength: \(superhero.powerstats.strength ?? 0)
          Speed: \(superhero.powerstats.speed ?? 0)
          
          """
          if let imageURL = URL(string: superhero.images.lg) {
              downloadImage(from: imageURL)
          }
      }
    private func downloadImage(from url: URL) {
            URLSession.shared.dataTask(with: url) { data, _, error in
                guard let data = data, error == nil, let image = UIImage(data: data) else { return }
                DispatchQueue.main.async {
                    self.ImageofHero.image = image
                }
            }.resume()
        }
    private func showError(message: String) {
            let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
        }
}


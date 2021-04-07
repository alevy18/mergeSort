//
//  ViewController.swift
//  CustomImageCell
//
//  Created by Aaron Levy on 4/2/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    let picURL1 = "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823__340.jpg"
    let picURL2 = "https://pi.tedcdn.com/r/talkstar-assets.s3.amazonaws.com/production/playlists/playlist_398/reconnect_with_nature.jpg?"
    let picURL3 = "https://i.pinimg.com/736x/50/df/34/50df34b9e93f30269853b96b09c37e3b.jpg"
    let picURL4 = "https://images.unsplash.com/photo-1420593248178-d88870618ca0?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1000&q=80"
    
    var picArr: [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let urlArr = [picURL1, picURL2, picURL3, picURL4]
        
        for url in urlArr{
            let data = try! Data.init(contentsOf: URL.init(string: url)!)
            let image = UIImage.init(data: data)
            picArr.append(image!)
        }
        
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(picArr.count)
        return picArr.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! MyImageCell
        cell.myImg.image = picArr[indexPath.row]
        
        return cell
    }

}


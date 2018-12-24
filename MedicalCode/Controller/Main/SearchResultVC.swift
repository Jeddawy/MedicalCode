//
//  SearchResultVC.swift
//  MedicalCode
//
//  Created by Ibrahim El-geddawy on 12/21/18.
//  Copyright © 2018 Ibrahim El-geddawy. All rights reserved.
//

import UIKit

class SearchResultVC: UIViewController {
    var reuseIdentifire = "DoctorInfoNibCell"
    var arrOfDoctors : [Doctor]!

    @IBOutlet weak var sortBy_textField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewdelegate()
        arrOfDoctors = [Doctor(doctorName: "ibrhim", doctorPlace: "ibrahemya", doctorRating: 7, doctorImage: #imageLiteral(resourceName: "icChooseSpeciality")), Doctor(doctorName: "mahmoud", doctorPlace: "7elmya", doctorRating: 9, doctorImage: #imageLiteral(resourceName: "doctor_logo"))]

        // Do any additional setup after loading the view.
    }
    func tableViewdelegate(){
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib.init(nibName: reuseIdentifire, bundle: nil), forCellReuseIdentifier: reuseIdentifire)
    }
    


}

extension SearchResultVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrOfDoctors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifire, for: indexPath) as? DoctorInfoNibCell else { return UITableViewCell() }
        cell.cellConfiguration(doctor: arrOfDoctors[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 242
    }
    
    
}

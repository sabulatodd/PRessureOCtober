//
//  Ulcer_info.swift
//  PressureUlcer
//
//  Created by Todd Papke on 11/09/17.
//
//  -- auto-generated by JSON2Swift --
//

import Foundation


class Ulcer_info: JSONCompatible {
    var Present_on_Unit_Arrival: Bool
    var Location: String
    var Present_on_Admission: Bool
    var Ulcer_Record_ID: Int
    var survey_ID: Int
    var Hospital_Location_Acquired: String
    var Ulcer_Laterality: String


    required init?(json: [String: Any]?) {
        guard let json = json else {return nil}
        Present_on_Unit_Arrival = json["Present_on_Unit_Arrival"] as? Bool ?? false
        Location = json["Location"] as? String ?? ""
        Present_on_Admission = json["Present_on_Admission"] as? Bool ?? false
        Ulcer_Record_ID = json["Ulcer_Record_ID"] as? Int ?? 0
        survey_ID = json["survey_ID"] as? Int ?? 0
        Hospital_Location_Acquired = json["Hospital_Location_Acquired"] as? String ?? ""
        Ulcer_Laterality = json["Ulcer_Laterality"] as? String ?? ""
    }



    required convenience init() {
        self.init(json: [:])!
    }



    required convenience init?(data: Data?) {
        guard let data = data else {return nil}
        guard let json = (try? JSONSerialization.jsonObject(with: data, options: [])) as? [String: Any] else {return nil}
        self.init(json: json)
    }



    init(Present_on_Unit_Arrival: Bool, Location: String, Present_on_Admission: Bool, Ulcer_Record_ID: Int, survey_ID: Int, Hospital_Location_Acquired: String, Ulcer_Laterality: String) {
        self.Present_on_Unit_Arrival = Present_on_Unit_Arrival
        self.Location = Location
        self.Present_on_Admission = Present_on_Admission
        self.Ulcer_Record_ID = Ulcer_Record_ID
        self.survey_ID = survey_ID
        self.Hospital_Location_Acquired = Hospital_Location_Acquired
        self.Ulcer_Laterality = Ulcer_Laterality
    }



    func jsonDictionary() -> [String: Any] {
        var dict: [String: Any] = [:]
        dict["Present_on_Unit_Arrival"] = Present_on_Unit_Arrival
        dict["Location"] = Location
        dict["Present_on_Admission"] = Present_on_Admission
        dict["Ulcer_Record_ID"] = Ulcer_Record_ID
        dict["survey_ID"] = survey_ID
        dict["Hospital_Location_Acquired"] = Hospital_Location_Acquired
        dict["Ulcer_Laterality"] = Ulcer_Laterality
        return dict
    }



}




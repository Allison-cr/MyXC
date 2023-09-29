import Foundation

struct Consultation: Codable {
    let serviceId: Int
    let code: String
    let clinicId: Int
    let price: Int
    let amount: Int?
    let discount: Int
    let periodMonths: Int?
}


struct ConsultationsData: Codable {
    let consultationsByAmount: [Consultation]
    let consultationsByPeriod: [Consultation]
    let consultationByPeriodDescription: String
    let consultationByPeriodTsoLink: String
    let consultationByAmountDescription: String
    let consultationByAmountTsoLink: String
}


struct Doctor: Codable {
    let doctorId: Int
    let avatar: String
    let doctorName: String
    let specializations: [String]
    let tags: [String]
    let isFavorite: Bool
    let rating: Double
    let clinicId: Int
    let title: String
}

struct DoctorsData: Codable {
    let doctors: [Doctor]
}

struct Clinic: Codable {
    let clinicId: Int
    let clinicTitle: String
    let cityId: Int
    let cityName: String
}

struct ClinicsData: Codable {
    let clinics: [Clinic]
}
class DataManager {
    static func loadConsultationsData(completion: @escaping (Result<ConsultationsData, Error>) -> Void) {
        loadJson(filename: "Cons") { (result: Result<ConsultationsData, Error>) in
            completion(result)
        }
    }
    
    static func loadDoctorsData(completion: @escaping (Result<DoctorsData, Error>) -> Void) {
        loadJson(filename: "doctors") { (result: Result<DoctorsData, Error>) in
            completion(result)
        }
    }
    
    static func loadClinicsData(completion: @escaping (Result<ClinicsData, Error>) -> Void) {
        loadJson(filename: "clinics") { (result: Result<ClinicsData, Error>) in
            completion(result)
        }
    }
    
    private static func loadJson<T: Decodable>(filename: String, completion: @escaping (Result<T, Error>) -> Void) {
        if let path = Bundle.main.path(forResource: filename, ofType: "json") {
            do {
                let jsonData = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let decoder = JSONDecoder()
                let data = try decoder.decode(T.self, from: jsonData)
                completion(.success(data))
            } catch {
                completion(.failure(error))
            }
        } else {
            let error = NSError(domain: "DataManager", code: 404, userInfo: [NSLocalizedDescriptionKey: "File not found"])
            completion(.failure(error))
        }
    }
}

import Foundation

class BuyConsultationViewModel: ObservableObject {
    @Published var consultationsData: ConsultationsData?
    @Published var doctorsData: DoctorsData?
    @Published var clinicsData: ClinicsData?

    func loadData() {
        DataManager.loadConsultationsData { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let data):
                    self.consultationsData = data
                case .failure(let error):
                    print("Failed to load consultations data: \(error.localizedDescription)")
                }
            }
        }

        DataManager.loadDoctorsData { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let data):
                    self.doctorsData = data
                case .failure(let error):
                    print("Failed to load doctors data: \(error.localizedDescription)")
                }
            }
        }

        DataManager.loadClinicsData { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let data):
                    self.clinicsData = data
                case .failure(let error):
                    print("Failed to load clinics data: \(error.localizedDescription)")
                }
            }
        }
    }
}

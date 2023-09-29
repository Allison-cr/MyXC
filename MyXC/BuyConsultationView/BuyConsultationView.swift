import SwiftUI

struct BuyConsultationView: View {
    @StateObject private var viewModel = BuyConsultationViewModel()
    
    var body: some View {
        VStack {
            if let consultations = viewModel.consultationsData?.consultationsByAmount {
                ForEach(consultations, id: \.serviceId) { consultation in
                    Text("Consultation Service ID: \(consultation.serviceId)")
                }
            }
            if let doctors = viewModel.doctorsData?.doctors {
                ForEach(doctors, id: \.doctorId) { doctor in
                    Text("Doctor ID: \(doctor.doctorId)")
                }
            }
            if let clinics = viewModel.clinicsData?.clinics {
                ForEach(clinics, id: \.clinicId) { clinic in
                    Text("Clinic ID: \(clinic.clinicId)")
                }
            }
        }
        .padding()
        .onAppear {
            // Load data when the view appears
            viewModel.loadData()
        }
    }
}

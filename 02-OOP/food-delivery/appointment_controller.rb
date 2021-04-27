class AppointmentController

  def initialize
    # a bunch of stuff
  end

  def create
    doctor_id  = ask_for("doctor")
    date       = ask_for("date")
    patient_id = ask_for("dpatient")
    doctor     = @doctor_repo.find(doctor_id)
    patient    = @patient_repo.find(patient_id)
    Appointment.new(doctor: doctor, patient: patient)
  end
end
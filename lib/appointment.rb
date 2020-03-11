class Appointment
  attr_accessor :date, :patient, :doctor

  @@all = []

  def self.all
    @@all
  end

  def initialize(patient, date, doctor)
    @date = date
    @doctor = doctor
    @patient = patient
    @@all << self
  end

end

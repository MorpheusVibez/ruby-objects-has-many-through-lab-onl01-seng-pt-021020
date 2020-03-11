class Appointment
  attr_accessor :date, :doctor
  attr_reader :patient

  @@all = []

  def self.all
    @@all
  end

  def initialize(patient, date, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end



end

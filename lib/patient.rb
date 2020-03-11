class Patient
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Appointment.new(date, doctor, self)
  end

  def appointments
    Appointment.all.find_all {|app| app.patient == self}
  end
  #
  # def doctors
  #   Appointment.all.select do |appointment|
  #       appointment.doctor
  #   end
  # end
end

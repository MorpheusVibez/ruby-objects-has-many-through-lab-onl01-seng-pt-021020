class Patient
  attr_accessor :name, :doctor
  attr_reader :appointment
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name

    @@all << self
  end

  def new_appointment(date, doctor)
    Appointment.new(date, doctor, self)
  end

  def appointments
    # Appointment.all.select do |app|
    #   app.patient == self
    # end
  end

#   def doctors
#     Appointment.all.select do |appointment|
#         appointment.doctor
#     end
#   end
end

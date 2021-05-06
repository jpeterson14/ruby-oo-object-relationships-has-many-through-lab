class Doctor
    attr_accessor :name
    @@all = []
def initialize(name)
    @name = name
    @@all << self
end
def self.all
    @@all
end

def new_appointment(date,patient)
    apt = Appointment.new(date,patient,self)
end

def appointments
    Appointment.all.select{|appointment| appointment.doctor == self}
end
#The Doctor class needs an instance method, #patients, that iterates over that doctor's Appointments and collects the patient that belongs to each Appointments.
def patients
    patients = []
    self.appointments.each do |appointment|
        # binding.pry
        patients << appointment.patient
    end
    return patients
end
end
class Patient
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(date,doctor)
        apt = Appointment.new(date,self,doctor)
    end
    def self.all
        @@all
    end
    def appointments
        Appointment.all.select{|appointment| appointment.patient == self}
    end

    def doctors
        Appointment.all.map do |appointment|
            appointment.doctor
        end
    end


end
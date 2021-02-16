class AppointmentsView

  def ask_date
    puts "Enter date (dd/mm/yyyy):"
    gets.chomp
  end

  def list(appointments)
    system 'clear'  # This don't work in rake specs
    puts 'Appointments List'
    appointments.each do |appointment|
      puts "#{appointment.date} | Doctor: #{appointment.doctor.name} - Patient: #{appointment.patient.name}"
    end
    puts '-' * 30
    puts "\n\n"
    puts 'Press enter to continue...'
    gets  # This don't work in rake specs
  end


end
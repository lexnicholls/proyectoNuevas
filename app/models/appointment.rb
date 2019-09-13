class Appointment < ApplicationRecord
  belongs_to :office
  belongs_to :doctor
  belongs_to :patient

validates :office, uniqueness: {scope: :start_Time, message: "is ocuppied, try another hour, please." }
validates :office, uniqueness: {scope: :end_Time, message: "is ocuppied, try another hour, please." }

validates :doctor, uniqueness: {scope: :start_Time, message: "is ocuppied now, try later, please." }
validates :doctor, uniqueness: {scope: :end_Time, message: "is ocuppied now, try later, please." }

validates :patient, uniqueness: {scope: :start_Time, message: "already has an appointment right now."}  

validates :patient, uniqueness: {scope: :end_Time, message: "already has an appointment right now."}	
end

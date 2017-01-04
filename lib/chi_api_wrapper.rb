require 'httparty'

class ChiApiWrapper
  BASE_URL = "https://data.cityofchicago.org/resource/62iq-5k5u.json?"
  APP_TOKEN = ENV["APP_TOKEN"]
  SECRET_TOKEN = ENV["SECRET_TOKEN"]

  def self.list_of_services(search)
    url = BASE_URL + "division=" + "Counseling and Case Management Services"
    data = HTTParty.get(url, headers: {"APP_TOKEN" => "APP_TOKEN"})
    resources_list = []
    data.map do |agency_data|
      agency_info = {
        agency: agency_data[:agency],
        division: agency_data[:division],
        program_model: agency_data[:program_model],
        site_name: agency_data[:site_name],
        phone_number: agency_data[:phone_number],
        address: address[:address],
        city: city[:city],
        state: [:state],
        zip: [:zip]
      }
      wrapper =  Resource.new(agency_info)
      resources_list << wrapper
    end
  end
  return resources_list
end

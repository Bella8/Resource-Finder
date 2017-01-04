class Resource

  attr_reader :agency, :division, :program_model, :site_name, :phone_number, :address, :city, :state, :zip

  def initialize(resource_info)
    @agency = resource_info[:agency]
    @division = resource_info[:division]
    @program_model = resource_info[:program_model]
    @site_name = resource_info[:site_name]
    @phone_number = resource_info[:phone_number]
    @address = resource_info[:address]
    @city = respond_info[:city]
    @state = respond_info[:state]
    @zip = respond_info[:zip]
  end

  def self.search(search)
    @resources_data = ChiApiWrapper.list_of_services
    return @resources_data
  end
end

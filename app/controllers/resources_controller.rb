class ResourcesController < ApplicationController
# retun json.
  def index
    @data = Resource.list_of_services
  end

end

class HomeController < ApplicationController

    def index
        ip = is_localhost? ? '142.255.39.125' : request.ip
        coordinates = Geocoder.coordinates(ip)
        @legislators = Adapter::Retriever.new(coordinates).legislators

        #retrieve officials bioguide ID
        #query DB for those officials
    end

    def locate
        #turn form data into long/lat
        #retrieve & display info
    end

    private
    def is_localhost?
        request.ip == ( '127.0.0.1' || '::1' )
    end

end

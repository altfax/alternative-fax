require 'rest-client'
require 'json'

module Adapter
    class Retriever

        def initialize(coordinates)
            @coordinates = coordinates
            @url = 'https://congress.api.sunlightfoundation.com/legislators/locate'
        end

        def call_api
            lat = @coordinates.first
            long = @coordinates.last
            @url += "?latitude=#{lat}&longitude=#{long}"

            query = RestClient.get(@url)
            response = JSON.parse(query)
            response["results"]
        end

        def legislator_ids
            query = call_api
            bio_ids = []
            query.each do |legislator|
                bio_ids.push(legislator["bioguide_id"])
            end
            return bio_ids
        end

        def legislators
            officials = []
            legislator_ids.each do |id|
                official = Official.find_by(bioguide_id: id)
                officials.push(official)
            end
            return officials
        end

    end
end

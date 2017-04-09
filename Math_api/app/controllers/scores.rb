class TestScoresController < ApplicationController
  def index
    @scores = Unirest.get("https://data.cityofnewyork.us/resource/hsry-3x74.json").body[]
  end
end

class ConferencesController < ApplicationController
  def show
    @conference = ConferenceFetcher.get(params[:conference])

    #@conference = OpenStruct.new({hash})

    render :status => 404 if @conference.nil?
  end
end

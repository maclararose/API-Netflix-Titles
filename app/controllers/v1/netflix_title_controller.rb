# frozen_string_literal: true

module V1
  # Modulate for API and CRUD
  class NetflixTitleController < ApplicationController
    def index
      netflix_titles = NetflixTitle.all
      render json: netflix_titles.order(:year)
    end

    def create
      netflix_titles = NetflixTitle.create!(archive_params)
      render json: netflix_titles
    end

    private

    def archive_params
      params.require(:netflix_titles).permit(:title, :genre, :year, :county, :published_at, :description)
    end
  end
end

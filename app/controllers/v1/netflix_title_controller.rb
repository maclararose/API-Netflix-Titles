# frozen_string_literal: true
class V1::NetflixTitleController < ApplicationController
  def index
    netflix_titles = NetflixTitle.all

    render json: netflix_titles
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

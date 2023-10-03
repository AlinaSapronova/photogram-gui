class PhotosController < ApplicationController
  def all_photos
    render({:template => "photos_page/all_photos"})
  end

  def photo_detail
    picture_id = params.fetch("photo_id")
    @picture = Photo.where({:id => picture_id})[0]
    render({:template => "photos_page/photo_detail"})
  end
end

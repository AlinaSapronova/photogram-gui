class PhotosController < ApplicationController
  def all_photos
    render({:template => "photos_page/all_photos"})
  end

  def photo_detail
    picture_id = params.fetch("photo_id")
    @picture = Photo.where({:id => picture_id})[0]
    render({:template => "photos_page/photo_detail"})
  end

  def add_new_photo
   
    new_photo = Photo.new
    new_photo.image = params.fetch("input_image")
    new_photo.caption = params.fetch("input_caption")
    new_photo.owner_id = params.fetch("input_owner_id")

    if new_photo.valid?
      new_photo.save
      redirect_to("/photos/#{new_photo.id}", { :notice => "Photo posted successfully." })
    else
      redirect_to("/photos", { :notice => "Photo failed to post successfully." })
    end

  end

end

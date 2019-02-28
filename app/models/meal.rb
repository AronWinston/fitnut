class Meal < ApplicationRecord
    belongs_to :user
    has_one_attached :image, dependent: :destroy
    # image.attach(params[:image])
end

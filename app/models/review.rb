# encoding: utf-8
class Review
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title
  field :content
  field :actived, type: Integer, default: 1
  field :rating, type: Integer
  field :reviewer_name
  field :reviewer_email
  field :reviewer_location

  belongs_to :product
  belongs_to :variant
  belongs_to :customer
  embedded_in :product

end


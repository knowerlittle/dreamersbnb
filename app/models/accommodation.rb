class Accommodation
  include DataMapper::Resource

  property :id,     Serial
  property :name,   String, required: true
  property :desc,   String, length: 500
  property :price,  Integer, required: true, min: 1

  belongs_to :user
  has n, :inventories, :requests

  def self.requests (accommodation_id)
    Request.all(accommodation_id: accommodation_id)
  end

end

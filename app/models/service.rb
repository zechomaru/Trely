class Service < ActiveRecord::Base
  belongs_to :category
  belongs_to :bundle
  belongs_to :page
  has_attached_file :img, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :img, content_type: /\Aimage\/.*\Z/
  has_attached_file :imghover, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :imghover, content_type: /\Aimage\/.*\Z/
  #has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "0.png"
  #validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end

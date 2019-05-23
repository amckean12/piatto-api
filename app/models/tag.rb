class Tag < ApplicationRecord
  has_many :recipe_tags
  has_many :recipes, :through => :recipe_tags

  def self.add_slugs
   update(slug: to_slug(tag_name))
  end

  def to_param
   slug
 end
end

class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :recipe_tags
  has_many :ingredients, :through => :recipe_ingredients
  has_many :tags, :through => :recipe_tags

  accepts_nested_attributes_for :ingredients, :tags, allow_destroy: true,  reject_if: lambda { |a| a[:content].blank? }

  before_save :find_or_create_tag

  private

#Solved Duplicate Tag issue
  def find_or_create_tag
    self.tags = self.tags.map do |tag|
      Tag.find_or_create_by(tag_name: tag.tag_name, slug: tag.slug)
    end
  end
end

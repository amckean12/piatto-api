class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  #Method to use across your app to ensure that URLs are formatted the same way
  #Uses the Rails methods parameterize (to replace special characters with hyphens) and truncate (to set a max length for the slug)
  def to_slug(string)
    string.parameterize.truncate(80, omission: '')
  end
end

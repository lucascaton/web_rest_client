class Request < ActiveRecord::Base
  include EnumerateIt

  attr_accessible :string_params, :url, :http_verb

  validates :url, presence: true
end

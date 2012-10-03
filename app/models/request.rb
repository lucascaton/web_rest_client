class Request
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  include ActiveModel::MassAssignmentSecurity

  include EnumerateIt

  attr_accessor :string_params, :url, :http_verb
  attr_accessible :string_params, :url, :http_verb

  validates :url, presence: true

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end
end

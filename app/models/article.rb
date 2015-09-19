class Article < ActiveRecord::Base
  default_scope { order(:updated_at => :desc) }

  before_validation do
    if changes.has_key?(:body)
      self.body = body.to_s.rstrip
    end
    self.unique_key ||= SecureRandom.hex.first(8)
    true
  end

  def processor
    Rasl::Processor.new.tap do |e|
      e.assemble(body.to_s)
    end
  end

  def to_param
    unique_key
  end
end

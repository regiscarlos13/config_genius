# frozen_string_literal: true

module ConfigGenius
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end

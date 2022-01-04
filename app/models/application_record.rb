# frozen_string_literal: true

# Service for Record and Base
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

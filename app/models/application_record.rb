class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  after_commit -> { VotesrelayJob.perform_later(self) }
end

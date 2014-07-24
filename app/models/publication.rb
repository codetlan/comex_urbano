class Publication < ActiveRecord::Base
  belongs_to :published, :polymorphic => true
end

class Event < ActiveRecord::Base
  has_event_calendar :start_at_field  => 'event_date', :end_at_field => 'event_date'

  acts_as_indexed :fields => [:name, :text]

  validates :name, :presence => true, :uniqueness => true
  
  belongs_to :image
  belongs_to :file, :class_name => 'Resource'
end

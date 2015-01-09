# == Schema Information
#
# Table name: rooms
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  length     :integer
#  width      :integer
#

class Room < ActiveRecord::Base
	validates :name, presence: true
	validates :length, presence: true, numericality: { greater_than: 0, less_than: 1000 }
	validates :width, presence: true, numericality: { greater_than: 0, less_than: 1000 }
end

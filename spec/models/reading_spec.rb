require 'rails_helper'

RSpec.describe Reading, :type => :model do
  describe 'associations' do
    it { is_expected.to belong_to(:reading_group) }
    it { is_expected.to have_many(:kalibro_ranges) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:label) }
    it { is_expected.to validate_presence_of(:grade) }
    it { is_expected.to validate_presence_of(:color) }
    it { is_expected.to validate_uniqueness_of(:label).
        scoped_to(:reading_group_id).with_message("Should be unique within a Reading Group") }
  end
end

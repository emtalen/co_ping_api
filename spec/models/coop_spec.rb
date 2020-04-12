require 'rails_helper'

RSpec.describe Coop, type: :model do
  it 'should have valid Factory' do
    expect(create(:coop)).to be_valid
  end
  
  describe 'Database table' do
    it { is_expected.to have_db_column :name }
  end
end

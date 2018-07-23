describe Category, 'associations' do
  it { is_expected.to have_many(:place_categories) }
  it { is_expected.to have_many(:places).through(:place_categories) }
end

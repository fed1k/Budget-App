RSpec.describe 'Group', type: :model do
  subject do
    User.new(name: 'Fed', id: 1, email: 'faky@mail.ru', created_at: '2020', updated_at: '2021', password: '1234567')
  end
  before { subject.save }

  it 'name should not be empty' do
    group = Group.new(id: 1, name: 'Grocery', icon: 'grocery', created_at: '2020', updated_at: '2022',
                      user_id: subject.id)
    group.name = nil
    expect(group).to_not be_valid
  end

  it 'icon should not be empty' do
    group = Group.new(id: 1, name: 'Grocery', icon: 'grocery', created_at: '2020', updated_at: '2022',
                      user_id: subject.id)
    group.icon = nil
    expect(group).to_not be_valid
  end
end

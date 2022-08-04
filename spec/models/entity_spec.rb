# frozen_string_literal: true

RSpec.describe 'Entity', type: :model do
  subject do
    User.new(name: 'Fed', id: 1, email: 'faky@mail.ru', created_at: '2020', updated_at: '2021', password: '1234567')
  end
  before { subject.save }

  it 'name should not be empty' do
    group = Group.new(id: 1, name: 'Grocery', icon: 'grocery', created_at: '2020', updated_at: '2022',
                      user_id: subject.id)
    entity = Entity.new(id: 1, name: 'Grocery', amount: 4, created_at: '2020', updated_at: '2022',
                        group_id: group.id, user_id: subject.id)
    entity.name = nil
    expect(entity).to_not be_valid
  end
  it 'amount should not be empty' do
    group = Group.new(id: 1, name: 'Grocery', icon: 'grocery', created_at: '2020', updated_at: '2022',
                      user_id: subject.id)
    entity = Entity.new(id: 1, name: 'Grocery', amount: 4, created_at: '2020', updated_at: '2022',
                        group_id: group.id, user_id: subject.id)
    entity.amount = nil
    expect(entity).to_not be_valid
  end
end

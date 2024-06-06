require 'rails_helper'

describe User, type: :model do
  it 'validates user' do
    u = build_list(:user, 2, state: 'foo', email: 'jhon.doe@foo.bar', event_id: 1234)
    u2 = build(:user, state: 'foo', email: 'jhonny.doe@foo.bar', event_id: 1234)

    u.first.save!

    expect { u.second.save! }.to raise_error(ActiveRecord::RecordInvalid)
    expect { u2.save! }.to_not raise_error
  end
end

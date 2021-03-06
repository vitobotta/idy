# frozen_string_literal: true

require 'rails_helper'

RSpec.describe '#idy_default_salt' do
  describe Abcdefghijklm do
    context 'when class name has a big length' do
      it 'is bases on the first 10 class letter position index on alphabet' do
        expect(described_class.idy_default_salt).to eq '12345678910'
      end
    end
  end  

  describe Namespace::NsModel do
    context 'when model is namespaced into a module' do
      it 'does not take into account the namespace' do
        expect(described_class.idy_default_salt).to eq '141913154512'
      end
    end
  end
end
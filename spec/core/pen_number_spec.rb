
require 'faker'
require 'spec_helper'

require './lib/core/pen_number'

describe Core::PenNumber do
  subject(:pen_number) { described_class.new(number) }
  
  context 'when the number is valid' do
    let(:number) { 123 }

    it 'creates a new pen number instance' do
        expect(pen_number).not_to be_nil
    end
  end

  context 'when the number is not a integer' do
    let(:number) { 123.0 }

    it 'throw an argument error' do
        expect{ described_class.new(number) }.to raise_error(ArgumentError)
    end
  end

  context 'when the number is negative' do
    let(:number) { -1 }

    it 'throw an argument error' do
      expect{ described_class.new(number) }.to raise_error(ArgumentError)
  end
  end
end
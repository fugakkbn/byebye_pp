# frozen_string_literal: true

require 'byebye_pp'

describe 'ByeByePp' do
  it 'has a version number' do
    expect(ByebyePp::VERSION).not_to be_nil
  end

  describe '#bbpp' do
    let(:expected) do
      <<~TEXT
        ========================================
        class: String
        inspect: "test"
      TEXT
    end

    it 'outputs line, class and inspection' do
      test = 'test'

      expect { bbpp test }.to output(expected).to_stdout
    end
  end
end

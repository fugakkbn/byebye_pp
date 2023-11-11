# frozen_string_literal: true

require 'byebye_pp/version'

module ByebyePp
  def bbpp(obj)
    text = <<~TEXT
      #{'=' * 40}
      class: #{obj.class}
      inspect: #{obj.inspect}
    TEXT

    puts text
  end
end

Kernel.include ByebyePp

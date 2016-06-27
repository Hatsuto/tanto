class Game < ActiveRecord::Base
  def parse_instruction(instruction_string)
    instruction_string.split(";").map do |instruction|
      instruction.split(":")
    end
  end
end

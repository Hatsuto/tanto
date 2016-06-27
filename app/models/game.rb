class Game < ActiveRecord::Base
include Gameplay
  def self.parse_instruction(instruction_string)
    instruction_string.split(";").map do |instruction|
      instruction.split(":")
    end
  end

  def create_instruction_hash
    @instruction = {
      "draw" => draw,
      "shuffle" => shuffle,
      "discard" => discard,
      "gain_card" => gain_card,
      "return_card" => return_card
    }
  end
end

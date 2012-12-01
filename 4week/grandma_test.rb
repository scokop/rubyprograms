require 'minitest/autorun'
require_relative 'p026zdeafgm2.rb'

class TestConversation < MiniTest::Unit::TestCase
  def setup
    @grandma = Conversation.new
  end

  def test_hearing
    assert(@grandma.hear('HELLO'),"Grandma can't hear shouting")
    refute(@grandma.hear('hello'),"Grandma can hear whispers")
  end
  def test_goodbye
    refute(@grandma.goodbye('BYEBYEBYE'), "Three BYEs in one input triggers goodbye")
    refute(@grandma.goodbye('BYE BYE BYE'), "Three BYEs in one spaced input triggers goodbye")
    refute(@grandma.goodbye('BYE'),"First BYE triggers wrong result")
    refute(@grandma.goodbye('BYE'),"Second BYE triggers wrong result")
    assert(@grandma.goodbye('BYE'),"Third BYE doesn't end coversation")
 end
end


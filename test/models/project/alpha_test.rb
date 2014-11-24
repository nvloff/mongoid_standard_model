require 'test_helper'

class Project::AlphaTest < ActiveSupport::TestCase
  test 'class' do
    assert_equal 'Project::Alpha', Project::Alpha.name
  end

  test 'init' do
    assert Project::Alpha.new
  end
end

require 'test_helper'

class Project::StandardTest < ActiveSupport::TestCase
  test 'class' do
    assert_equal 'Project::Standard', Project::Standard.name
  end

  test 'init' do
    assert Project::Standard.new
  end
end

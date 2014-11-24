require 'test_helper'

class Project::AlphaTest < ActiveSupport::TestCase
  test 'super' do
    assert_equal 'Project::Standard', Project::Alpha.superclass.name
  end

  test 'init' do
    assert Project::Alpha.new
  end
end

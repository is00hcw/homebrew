require 'testing_env'
require 'requirements/mpi_dependency'

class MPIDependencyTests < Test::Unit::TestCase
  def test_initialize_untangles_tags_and_wrapper_symbols
    wrappers = [:cc, :cxx, :f77]
    tags = [:optional, 'some-other-tag']
    dep = MPIDependency.new(*wrappers + tags)
    assert_equal wrappers, dep.lang_list
    assert_equal tags, dep.tags
  end
end

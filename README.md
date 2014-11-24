```ruby
# app/models/project.rb

class Project
  include Mongoid::Document
end

# app/models/project/standard.rb

class Project
  class Standard < Project
  end
end

# app/models/project/alpha.rb
class Project
  class Alpha < ::Project::Standard
    # uncommenting this leads to NoMethodError for field
    # field :test, type: :string
  end
end

```

```
→ be rake test
Run options: --seed 56277

# Running:

EF..

Finished in 0.004837s, 826.9589 runs/s, 620.2191 assertions/s.

  1) Error:
Project::AlphaTest#test_init:
ArgumentError: wrong number of arguments (0 for 1)
    test/models/project/alpha_test.rb:9:in `new'
    test/models/project/alpha_test.rb:9:in `block in <class:AlphaTest>'


  2) Failure:
Project::AlphaTest#test_super [/Users/nvloff/projects/mongoid_standard_model/test/models/project/alpha_test.rb:5]:
Expected: "Project::Standard"
  Actual: "Mongoid::Fields::Standard"

4 runs, 3 assertions, 1 failures, 1 errors, 0 skips
```

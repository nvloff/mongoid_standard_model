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

```

```sh
→ rake test
Run options: --seed 61003

# Running:

FE

Finished in 0.004091s, 488.8780 runs/s, 244.4390 assertions/s.

  1) Failure:
Project::StandardTest#test_class [/Users/nvloff/projects/mongoid_standard_model/test/models/project/standard_test.rb:5]:
Expected: "Project::Standard"
  Actual: "Mongoid::Fields::Standard"


  2) Error:
Project::StandardTest#test_init:
ArgumentError: wrong number of arguments (0 for 1)
    test/models/project/standard_test.rb:9:in `new'
    test/models/project/standard_test.rb:9:in `block in <class:StandardTest>'

2 runs, 1 assertions, 1 failures, 1 errors, 0 skips
```

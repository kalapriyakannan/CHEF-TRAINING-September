name "starter-role"
description "An example Chef role"
run_list "recipe[starter]"
override_attributes({
  "starter_name" => " kalapriya",
})

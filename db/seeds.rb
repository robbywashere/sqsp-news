case Rails.env
when "development"
  # development-specific seeds ...
  # (anything you need to interactively play around with in the rails console)

when "test"
  # test-specific seeds ...
  # (Consider having your tests set up the data they need
  # themselves instead of seeding it here!)

when "production"
  # production seeds (if any) ...

end

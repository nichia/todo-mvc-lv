# Step 1: Intergrate Basic Theme to Asset Pipeline

[x] / - And see a stubbed out, non-dynamic, page with the theme.  

# Step 2: Allow pople to CRUD lists

[] ListsController
  #index
  - see all their lists
  - doubling as my #new action in that it is presenting the person with a form to create a new list
    / - Index all the lists...
  - create a lists
  - show a lists
  - i need a model
  - i need a controller
  - therefore, i need a generate resource (to generate both model & controller)

Does it impact the DB?
Does it impact my URLS? '/lists/1'

# Step 3: Add Items to a List

# Step .. : Fix Down Arror on Make a List Form

  I want people to be able to create lists. Then they should be able to add items to those lists. They should be able to navigate many lists and see each lists items. (look for nouns: lists, items)
  lists
    has many items

  items
    belongs to a list

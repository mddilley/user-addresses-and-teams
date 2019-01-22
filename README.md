# README

## Objectives

*Describe forms, params, and writer methods as a game of catch

*Use form_for to have Rails generate HTML for us

*Understand what an ActionView::Helpers::FormBuilder object is and what it “knows” about

*Call #local_methods on a FormBuilder object to see all of the methods that are available to it

*Understand that every key in the params hash should correspond to a writer method

*Know what functionality we get for “free” from our association macros, and what functionality we will need to build out ourselves (with custom writers)

*Recognize that the convention is #something_attributes= because there will already be a writer method for #something=, and we don’t want to overwrite that

*Practice building forms in HTML before using the Rails helpers, so that you can be really specific about what exactly you are creating

*Understand that the accepts_nested_attributes_for macro also generates a custom writer, but is much less extensible than building that custom writer yourself

*Instantiate objects in the controller so that fields_for inputs will show up in the view

*Set attributes on objects instantiated in the controller so that the form can introspect on those objects’ attributes and dynamically set labels

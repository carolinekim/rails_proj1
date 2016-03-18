# Q0: Why is this error being thrown?
	The name in the Pokemon class has not yet been initialized.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
	Among the list of pokemons that we know, random ones are selected. The common factor between the possible pokemons that appear is that they appear in the form "A wile Pokemon_name has appeared!".

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
	Allows the button to say "throw a pokeball!". and allows the specific (random) pokemon to be "captured" into the trainer's list of pokemons.


# Question 3: What would you name your own Pokemon?
	... I would name my Pokemon Rhino.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
	Redirected to the current_trainer. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
	When the pokemon is not saved, then the error message occurs.


# Give us feedback on the project and decal below!
This was a fun project

# Extra credit: Link your Heroku deployed app

class PokemonController < ApplicationController
	def create
		@pokemon = Pokemon.create name: params(:name), level: 1, health: 100
		@pokemon.trainer = current_trainer
		@pokemon.save
		if @pokemon.save == false
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to new_path
		else
			redirect_to current_trainer
	end

	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
		redirect_to root_url
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health = @pokemon.health - 10

		if @pokemon.health <= 0
			@pokemon.destroy
		else
			@pokemon.save
		end
		redirect_to current_trainer
	end
	
end

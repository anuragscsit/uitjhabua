
class DepartmentsController < ApplicationController
	
	
	def index
		
	end

	def cse
		
	end


	def mechanical
		
	end

	def sci_humanity
		
	end

	def faculty
    	@faculty = Faculty.all
    end
    
    

end
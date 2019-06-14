class AdmissionController < ApplicationController

	def BTech

	end

	def procedure
		
	end

	def fees_structure
    	@fees = FeesStructure.all
  	end
	
	
end

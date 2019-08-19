class StatsController < ApplicationController
	def appstats
		@statistics = AppStats.new
	end
end

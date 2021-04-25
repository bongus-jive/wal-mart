local oldInit = init or function() end
function init(...)
	oldInit(...)
	player.setUniverseFlag("pat_walmart")
end
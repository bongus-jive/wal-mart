function init()
	storage.stolen = storage.stolen or false
	
	local exists = root.assetJson("/pat/walmartpole.object")
	
	if storage.stolen then
		exists = nil
		animator.setAnimationState("pole", "1")
	end
	
	object.setInteractive(exists ~= nil)
end

function onInteraction(args)
	animator.setAnimationState("pole", "1")
	
	world.spawnItem({name = "pat_walmartpole"}, entity.position())
	
	object.setInteractive(false)
	
	storage.stolen = true
end
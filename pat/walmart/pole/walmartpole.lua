function init()
	storage.stolen = storage.stolen or false
	
	local exists = not not root.assetJson("/versioning.config").pat_walmartpole
	
	if storage.stolen then
		exists = false
		animator.setAnimationState("pole", "1")
	end
	
	object.setInteractive(exists)
end

function onInteraction(args)
	animator.setAnimationState("pole", "1")
	
	world.spawnItem({name = "pat_walmartpole"}, entity.position())
	
	object.setInteractive(false)
	
	storage.stolen = true
end
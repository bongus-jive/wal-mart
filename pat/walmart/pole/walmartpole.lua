function init()
	if storage.stolen then
		animator.setAnimationState("pole", "1")
		return
	end

	local exists = root.assetJson("/versioning.config").pat_walmartpole ~= nil
	object.setInteractive(exists)
end

function onInteraction(args)
	world.spawnItem("pat_walmartpole", entity.position(), nil, nil, {0, 30}, 0.2)
	animator.setAnimationState("pole", "1")
	object.setInteractive(false)
	storage.stolen = true
end

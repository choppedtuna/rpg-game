---@diagnostic disable: empty-block, undefined-global

local BUILD_FOLDER = "builds/"

for _, file in pairs(remodel.readDir(BUILD_FOLDER)) do
	local build = remodel.readPlaceFile(BUILD_FOLDER .. '/' .. file)
	local placeId = build.ServerScriptService.placeId:GetChildren()[1].Name
	
	remodel.writeExistingPlaceAsset(build, placeId)
end
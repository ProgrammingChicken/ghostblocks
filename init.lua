--[[
~ghostblocks~
Code by ProgrammingChicken
Uses textures from enabled texture pack.
ghostblocks are blocks which you can walk through.
you craft them using the ghost-converter.
g-converter converts regular blocks into ghostblocks with fuel and "ghost-essence"
g-essence is obtained by digging coal and stone.
coal gives 0.1 g-essence
stone gives 0.05 g-essence
to convert one block you need 15 g-essence and 4 seconds of fuel.
so you would need to dig 300 stone or 150 coal to make one.
very expensive, but *realistic*.
~ghostblocks~

+=ATTENTION=+
This only supports blocks in default_game and my mods.
Feel free to fork this mod.
just gimme creds yo
]]--

minetest.register_node("ghostblocks:dirt", {
walkable=false,
tiles={"default_dirt.png"},
drop = 'ghostblocks:dirt',
})
minetest.register_node("ghostblocks:dirt_with_grass", {
walkable=false,
tiles={"default_grass.png"},
drop = 'ghostblocks:dirt_with_grass',
})
minetest.register_node("ghostblocks:clay", {
walkable=false,
tiles="default_clay.png"
})
minetest.register_node("ghostblocks:sand", {
walkable=false,
tiles="default_sand.png"
})
minetest.register_node("ghostblocks:stone", {
walkable=false,
tiles="default_stone.png"
})
minetest.register_node("ghostblocks:stone_with_iron", {
walkable=false,
tiles="default_stone.png^default_mineral_iron.png"
})
minetest.register_node("ghostblocks:stone_with_coal", {
walkable=false,
tiles="default_stone.png^default_mineral_coal.png"
})
minetest.register_node("ghostblocks:stone_with_diamond", {
walkable=false,
tiles="default_stone.png^default_mineral_diamond.png"
})
minetest.register_node("ghostblocks:stone_with_mese", {
walkable=false,
tiles="default_stone.png^default_mineral_mese.png"
})
minetest.register_node("ghostblocks:mossycobble", {
walkable=false,
tiles="default_mossycobble.png"
})
minetest.register_node("ghostblocks:cobble", {
walkable=false,
tiles="default_cobble.png"
})
--[[
minetest.register_node("ghostblocks:ghost_converter"{
walkable=true,
on_right_click=function()

end
})
]]--

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
diggable = true,
groups = {cracky=3, stone=1},
})
minetest.register_node("ghostblocks:dirt_with_grass", {
walkable=false,
tiles={"default_grass.png"},
drop = 'ghostblocks:dirt_with_grass',
diggable = true,
groups = {cracky=3, stone=1},
})
minetest.register_node("ghostblocks:clay", {
walkable=false,
tiles={"default_clay.png"},
drop = 'ghostblocks:clay',
diggable=true,
groups = {cracky=3, stone=1},
})
minetest.register_node("ghostblocks:sand", {
walkable=false,
tiles={"default_sand.png"},
drop = 'ghostblocks:sand',
diggable=true,
groups = {cracky=3, stone=1},
})
minetest.register_node("ghostblocks:stone", {
walkable=false,
tiles={"default_stone.png"},
drop = 'ghostblocks:stone',
diggable=true,
groups = {cracky=3, stone=1},
})
minetest.register_node("ghostblocks:stone_with_iron", {
walkable=false,
tiles={"default_stone.png^default_mineral_iron.png"},
drop = 'ghostblocks:stone_with_iron',
diggable=true,
groups = {cracky=3, stone=1},
})
minetest.register_node("ghostblocks:stone_with_coal", {
walkable=false,
tiles={"default_stone.png^default_mineral_coal.png"},
drop = 'ghostblocks:stone_with_coal',
diggable=true,
groups = {cracky=3, stone=1},
})
minetest.register_node("ghostblocks:stone_with_diamond", {
walkable=false,
tiles={"default_stone.png^default_mineral_diamond.png"},
drop = 'ghostblocks:stone_with_diamond',
diggable=true,
groups = {cracky=3, stone=1},
})
minetest.register_node("ghostblocks:stone_with_mese", {
walkable=false,
tiles={"default_stone.png^default_mineral_mese.png"},
drop = 'ghostblocks:stone_with_mese',
diggable=true,
groups = {cracky=3, stone=1},
})
minetest.register_node("ghostblocks:mossycobble", {
walkable=false,
tiles={"default_mossycobble.png"},
drop = 'ghostblocks:mossycobble',
diggable=true,
groups = {cracky=3, stone=1},
})
minetest.register_node("ghostblocks:cobble", {
walkable=false,
tiles={"default_cobble.png"},
drop = 'ghostblocks:cobble',
diggable=true,
groups = {cracky=3, stone=1},
})
--[[
minetest.register_node("ghostblocks:ghost_converter"{
walkable=true,
on_rightclick = function(pos, node, player, itemstack, pointed_thing)
show_formspec(player, "ghostblocks:ghost-converter", "size[8,9;]"..

)end})
]]--

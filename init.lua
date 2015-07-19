--[[
~ghostblocks~
Code by ProgrammingChicken
Uses textures from enabled texture pack, and a few of my textures.
TEXTURES MADE WITH HELIOSPAINT
ghostblocks are blocks which you can walk through.
you craft them using the ghost-converter.
g-converter converts regular blocks into ghostblocks with "ghost-essence" as fuel.
g-essence is made with coalblocks, dirt, and stone. one coalblock covered in dirt gives you a dirty smoot.
To make compressed stone, fill the crafting area with stone.
Surround that in compressed stone, and you get a smoot-stone. 
It's pretty dark, and it has a nice texture, so you might want to use that as a building material too.
To make compressed dirt, fill the crafting area with dirt.
Surround smoot-stone in compressed dirt, and you get a natural block.
Looks like crap, yet it's very useful.
put it in by itself and you get 3 ghost-essence.
to convert one block you need 15 g-essence.
an alternative way is to put potatoblocks from my potato mod in as fuel.
~ghostblocks~

+=ATTENTION=+
This only supports blocks in default_game and my mods.
Feel free to fork this mod.
just gimme creds yo
]]--
--shortcuts
b="stone_with_"
t="stone.png^default_mineral_"
l="block"

--reference
block={"dirt", "dirt_with_grass", "clay", "sand", "gravel", "cobble", "mossycobble", "stone", b.."coal", b.."iron", b.."diamond", b.."mese", b.."copper", b.."gold", "coal"..l, "steel"..l, "diamond"..l, "mese", "copper"..l, "gold"..l, "bronze"..l, "stonebrick", "desert_cobble", "desert_sand", "desert_stonebrick", "desert_stone", "sandstone", "sandstonebrick", "obsidian", "obsidianbrick", "snowblock",}
texture={"dirt", "grass", "clay", "sand", "gravel", "cobble", "mossycobble", "stone", t.."coal", t.."iron", t.."diamond", t.."mese", t.."copper", t.."gold", "coal_"..l, "steel_"..l, "diamond_"..l, "mese_"..l, "copper_"..l, "gold_"..l, "bronze_"..l, "stone_brick", "desert_cobble", "desert_sand", "desert_stone_brick", "desert_stone", "sandstone", "sandstone_brick", "obsidian", "obsidian_brick", "snow_block",}

--ghostblock node registration loops
for i=1, 30 do
  if block[i] == nil then
    break
  end
  minetest.register_node("ghostblocks:"..block[i], {
    walkable=false,
    tiles={"default_"..texture[i]..".png"},
    drop = "ghostblocks:"..block[i],
    diggable = true,
    groups = {cracky=3, stone=1},
  })
end

block ={"natural", "desert_smootstone", "smootstone", "dirtysmoot", "sandysmoot",}
texture ={"natural", "smoot_desert_stone", "smoot_stone", "dirty_smoot", "sandy_smoot",}

for i=1, 30 do
  if block[i] == nil then
    break
  end
  minetest.register_node("ghostblocks:"..block[i], {
    walkable=false,
    tiles={"ghostblocks_"..texture[i]..".png"},
    drop = "ghostblocks:"..block[i],
    diggable = true,
    groups = {cracky=3, stone=1},
  })
end

--ghost-essence materials
minetest.register_node("ghostblocks:dirty_smoot", {
  walkable=true,
  tiles={"ghostblocks_dirty_smoot.png"},
  drop="ghostblocks:dirty_smoot",
  diggable=true,
  groups={cracky=3, stone=1},
  description="Dirty Smoot",
})
minetest.register_node("ghostblocks:sandy_smoot", {
  walkable=true,
  tiles={"ghostblocks_sandy_smoot.png"},
  drop="ghostblocks:sandy_smoot",
  diggable=true,
  groups={cracky=3, stone=1},
  description="Sandy Smoot",
})
minetest.register_node("ghostblocks:compressed_dirt", {
  walkable=true,
  tiles={"default_dirt.png"},
  drop="ghostblocks:compressed_dirt",
  diggable=true,
  groups={cracky=3, stone=1, oddly_breakable_by_hand=5, compressedghost=1,},
  description="Compressed Dirt",
})
minetest.register_node("ghostblocks:compressed_sand", {
  walkable=true,
  tiles={"default_sand.png"},
  drop="ghostblocks:compressed_sand",
  diggable=true,
  groups={cracky=3, stone=1, oddly_breakable_by_hand=5, compressedghost=1,},
  description="Compressed Sand",
})
minetest.register_node("ghostblocks:compressed_stone", {
  walkable=true,
  tiles={"default_stone.png"},
  drop="ghostblocks:compressed_stone",
  diggable=true,
  groups={cracky=3, stone=1},
  description="Compressed Stone",
})
minetest.register_node("ghostblocks:compressed_desert_stone", {
  walkable=true,
  tiles={"default_desert_stone.png"},
  drop="ghostblocks:compressed_desertstone",
  diggable=true,
  groups={cracky=3, stone=1},
  description="Compressed Desert Stone",
})
minetest.register_node("ghostblocks:smoot_stone", {
  walkable=true,
  tiles={"ghostblocks_smoot_stone.png"},
  drop="ghostblocks:smoot_stone",
  diggable=true,
  groups={cracky=3, stone=1, smoot_stone=1},
  description="Smoot Stone",
})
minetest.register_node("ghostblocks:smoot_desert_stone", {
  walkable=true,
  tiles={"ghostblocks_smoot_desert_stone.png"},
  drop="ghostblocks:smoot_desert_stone",
  diggable=true,
  groups={cracky=3, stone=1, smoot_stone=1,},
  description="Smoot Desert Stone",
})
minetest.register_node("ghostblocks:natural", {
  walkable=true,
  tiles={"ghostblocks_natural.png"},
  drop="ghostblocks:natural",
  diggable=true,
  groups={cracky=3, stone=1},
  description="Pure Nature",
})
minetest.register_craftitem("ghostblocks:g_essence", {
  inventory_image="ghostblocks_g_essence.png",
  wield_image="ghostblocks_g_essence.png",
  description="Ghost Essence",
  stack_max=30,
})
--ghost-essence recipes
minetest.register_craft({
  output="ghostblocks:compressed_dirt",
  recipe = {{"default:dirt","default:dirt","default:dirt"},
  {"default:dirt","default:dirt","default:dirt"},
  {"default:dirt","default:dirt","default:dirt"},
}})
minetest.register_craft({
  output="ghostblocks:compressed_sand",
  recipe = {{"default:sand","default:sand","default:sand"},
  {"default:sand","default:sand","default:sand"},
  {"default:sand","default:sand","default:sand"},
}})
minetest.register_craft({
  output="ghostblocks:compressed_stone",
  recipe = {{"default:stone","default:stone","default:stone"},
  {"default:stone","default:stone","default:stone"},
  {"default:stone","default:stone","default:stone"},
}})
minetest.register_craft({
  output="ghostblocks:compressed_desertstone",
  recipe = {{"default:desert_stone","default:desert_stone","default:desert_stone"},
  {"default:desert_stone","default:desert_stone","default:desert_stone"},
  {"default:desert_stone","default:desert_stone","default:desert_stone"},
}})
minetest.register_craft({
  output="ghostblocks:dirty_smoot",
  recipe = {{"default:dirt","default:dirt","default:dirt"},
  {"default:dirt","default:coalblock","default:dirt"},
  {"default:dirt","default:dirt","default:dirt"},
}})
minetest.register_craft({
  output="ghostblocks:sandy_smoot",
  recipe = {{"default:sand","default:sand","default:sand"},
  {"default:sand","default:coalblock","default:sand"},
  {"default:sand","default:sand","default:sand"},
}})
minetest.register_craft({
  output="ghostblocks:compressed_stone",
  recipe = {{"default:stone","default:stone","default:stone"},
  {"default:stone","default:stone","default:stone"},
  {"default:stone","default:stone","default:stone"}
}})
minetest.register_craft({
  output="ghostblocks:natural",
  recipe = {{"group:compressedghost","group:compressedghost","group:compressedghost"},
  {"group:compressedghost","group:smoot_stone","group:compressedghost"},
  {"group:compressedghost","group:compressedghost","group:compressedghost"},
}})
minetest.register_craft({
  type="shapeless",
  output="ghostblocks:g_essence",
  recipe = {"ghostblocks:natural"},
})
--[[
minetest.register_node("ghostblocks:ghost_converter"{
walkable=true,
on_rightclick = function(pos, node, player, itemstack, pointed_thing)
show_formspec(player, "ghostblocks:ghost-converter", "size[8,9;]"..

)end})
]]--

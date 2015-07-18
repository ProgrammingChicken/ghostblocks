--[[
~ghostblocks~
Code by ProgrammingChicken
Uses textures from enabled texture pack.
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

--ghostblock node registration loop
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

--ghost-essence materials
minetest.register_node("ghostblocks:dirty_smoot", {
  walkable=true,
  tiles={"ghostblocks_dirty_smoot"},
  drop="ghostblocks:dirty_smoot",
  diggable=true,
  groups={cracky=3, stone=1},
  desc="Dirty Smoot",
})
--[[minetest.register_node("ghostblocks:smootstone", {
  walkable
})]]--
--ghost-essence recipes
--[[
minetest.register_node("ghostblocks:ghost_converter"{
walkable=true,
on_rightclick = function(pos, node, player, itemstack, pointed_thing)
show_formspec(player, "ghostblocks:ghost-converter", "size[8,9;]"..

)end})
]]--

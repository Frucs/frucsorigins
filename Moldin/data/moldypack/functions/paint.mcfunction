function moldypack:decode
scoreboard players set FrucsA frucsmath 16
function moldypack:encode
function moldypack:decode

execute align xyz run summon marker ~ ~ ~ {Tags:["FrucsMold","FrucsMoldEdge","FrucsMoldGrowth"]}

execute if block ~ ~1 ~ minecraft:air positioned ~ ~1 ~ run function moldypack:paint_top with storage minecraft:frucspainter
execute if block ~ ~1 ~ minecraft:cave_air positioned ~ ~1 ~ run function moldypack:paint_top with storage minecraft:frucspainter
execute if block ~ ~1 ~ #minecraft:buttons positioned ~ ~1 ~ run function moldypack:paint_top with storage minecraft:frucspainter

execute if block ~ ~-1 ~ minecraft:air positioned ~ ~-1 ~ run function moldypack:paint_bottom with storage minecraft:frucspainter
execute if block ~ ~-1 ~ minecraft:cave_air positioned ~ ~-1 ~ run function moldypack:paint_bottom with storage minecraft:frucspainter
execute if block ~ ~-1 ~ #minecraft:buttons positioned ~ ~-1 ~ run function moldypack:paint_bottom with storage minecraft:frucspainter

execute if block ~ ~ ~-1 minecraft:air positioned ~ ~ ~-1 run function moldypack:paint_north with storage minecraft:frucspainter
execute if block ~ ~ ~-1 minecraft:cave_air positioned ~ ~ ~-1 run function moldypack:paint_north with storage minecraft:frucspainter
execute if block ~ ~ ~-1 #minecraft:buttons positioned ~ ~ ~-1 run function moldypack:paint_north with storage minecraft:frucspainter

execute if block ~ ~ ~1 minecraft:air positioned ~ ~ ~1 run function moldypack:paint_south with storage minecraft:frucspainter
execute if block ~ ~ ~1 minecraft:cave_air positioned ~ ~ ~1 run function moldypack:paint_south with storage minecraft:frucspainter
execute if block ~ ~ ~1 #minecraft:buttons positioned ~ ~ ~1 run function moldypack:paint_south with storage minecraft:frucspainter

execute if block ~-1 ~ ~ minecraft:air positioned ~-1 ~ ~ run function moldypack:paint_west with storage minecraft:frucspainter
execute if block ~-1 ~ ~ minecraft:cave_air positioned ~-1 ~ ~ run function moldypack:paint_west with storage minecraft:frucspainter
execute if block ~-1 ~ ~ #minecraft:buttons positioned ~-1 ~ ~ run function moldypack:paint_west with storage minecraft:frucspainter

execute if block ~1 ~ ~ minecraft:air positioned ~1 ~ ~ run function moldypack:paint_east with storage minecraft:frucspainter
execute if block ~1 ~ ~ minecraft:cave_air positioned ~1 ~ ~ run function moldypack:paint_east with storage minecraft:frucspainter
execute if block ~1 ~ ~ #minecraft:buttons positioned ~1 ~ ~ run function moldypack:paint_east with storage minecraft:frucspainter
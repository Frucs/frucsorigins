execute store result storage minecraft:frucspainter color int 1 run data get entity @s background
function moldypack:decode
execute unless score FrucsA frucsmath matches 0..16 run scoreboard players remove FrucsA frucsmath 10
execute if score FrucsA frucsmath matches 0..16 run kill @s
function moldypack:encode
function moldypack:decode
data modify entity @s background set from storage minecraft:frucspainter color
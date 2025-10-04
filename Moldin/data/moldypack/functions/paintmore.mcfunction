scoreboard players set FrucsMult frucsmath 20
scoreboard players set FrucsDiv frucsmath 21
function moldypack:decode
scoreboard players operation FrucsR2 frucsmath = FrucsR frucsmath
scoreboard players operation FrucsG2 frucsmath = FrucsG frucsmath
scoreboard players operation FrucsB2 frucsmath = FrucsB frucsmath
execute store result storage minecraft:frucspainter color int 1 run data get entity @s background
function moldypack:decode

execute unless score FrucsA frucsmath matches -10..-1 run scoreboard players add FrucsA frucsmath 10
scoreboard players operation FrucsR frucsmath *= FrucsMult frucsmath
scoreboard players operation FrucsR frucsmath += FrucsR2 frucsmath
scoreboard players operation FrucsR frucsmath /= FrucsDiv frucsmath
scoreboard players operation FrucsG frucsmath *= FrucsMult frucsmath
scoreboard players operation FrucsG frucsmath += FrucsG2 frucsmath
scoreboard players operation FrucsG frucsmath /= FrucsDiv frucsmath
scoreboard players operation FrucsB frucsmath *= FrucsMult frucsmath
scoreboard players operation FrucsB frucsmath += FrucsB2 frucsmath
scoreboard players operation FrucsB frucsmath /= FrucsDiv frucsmath
function moldypack:encode
function moldypack:decode
data modify entity @s background set from storage minecraft:frucspainter color
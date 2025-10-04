#West
execute align xyz positioned ~-0.0001 ~ ~ if entity @e[tag=FrucsPaint,distance=..0.0001] as @e[tag=FrucsPaint,distance=..0.0001] run tag @s add FrucsColorMore
#North
execute align xyz positioned ~ ~ ~-0.0001 if entity @e[tag=FrucsPaint,distance=..0.0001] as @e[tag=FrucsPaint,distance=..0.0001] run tag @s add FrucsColorMore
#East
execute align xyz positioned ~1.0001 ~ ~1 if entity @e[tag=FrucsPaint,distance=..0.0001] as @e[tag=FrucsPaint,distance=..0.0001] run tag @s add FrucsColorMore
#South
execute align xyz positioned ~1 ~ ~1.0001 if entity @e[tag=FrucsPaint,distance=..0.0001] as @e[tag=FrucsPaint,distance=..0.0001] run tag @s add FrucsColorMore
#Top
execute align xyz positioned ~ ~1.0001 ~1 if entity @e[tag=FrucsPaint,distance=..0.0001] as @e[tag=FrucsPaint,distance=..0.0001] run tag @s add FrucsColorMore
#Bottom
execute align xyz positioned ~ ~-0.0001 ~ if entity @e[tag=FrucsPaint,distance=..0.0001] as @e[tag=FrucsPaint,distance=..0.0001] run tag @s add FrucsColorMore

execute as @e[tag=FrucsColorMore] run function moldypack:paintmore
execute unless entity @e[tag=FrucsColorMore] run function moldypack:paint
execute as @e[tag=FrucsColorMore] run tag @s remove FrucsColorMore
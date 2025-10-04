#West
execute align xyz positioned ~-0.0001 ~ ~ if entity @e[tag=FrucsPaint,distance=..0.0001] as @e[tag=FrucsPaint,distance=..0.0001] run tag @s add FrucsColorLess
#North
execute align xyz positioned ~ ~ ~-0.0001 if entity @e[tag=FrucsPaint,distance=..0.0001] as @e[tag=FrucsPaint,distance=..0.0001] run tag @s add FrucsColorLess
#East
execute align xyz positioned ~1.0001 ~ ~1 if entity @e[tag=FrucsPaint,distance=..0.0001] as @e[tag=FrucsPaint,distance=..0.0001] run tag @s add FrucsColorLess
#South
execute align xyz positioned ~1 ~ ~1.0001 if entity @e[tag=FrucsPaint,distance=..0.0001] as @e[tag=FrucsPaint,distance=..0.0001] run tag @s add FrucsColorLess
#Top
execute align xyz positioned ~ ~1.0001 ~1 if entity @e[tag=FrucsPaint,distance=..0.0001] as @e[tag=FrucsPaint,distance=..0.0001] run tag @s add FrucsColorLess
#Bottom
execute align xyz positioned ~ ~-0.0001 ~ if entity @e[tag=FrucsPaint,distance=..0.0001] as @e[tag=FrucsPaint,distance=..0.0001] run tag @s add FrucsColorLess

execute as @e[tag=FrucsColorLess] run function moldypack:watermore
execute as @e[tag=FrucsColorLess] run tag @s remove FrucsColorLess
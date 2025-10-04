tag @s remove FrucsMoldEdge
execute positioned ~ ~ ~1 align xyz unless entity @e[tag=FrucsMold,distance=..0.05] run function moldypack:moldcheck
execute positioned ~ ~ ~-1 align xyz unless entity @e[tag=FrucsMold,distance=..0.05] run function moldypack:moldcheck
execute positioned ~1 ~ ~ align xyz unless entity @e[tag=FrucsMold,distance=..0.05] run function moldypack:moldcheck
execute positioned ~-1 ~ ~ align xyz unless entity @e[tag=FrucsMold,distance=..0.05] run function moldypack:moldcheck

execute positioned ~ ~1 ~ align xyz unless entity @e[tag=FrucsMold,distance=..0.05] run function moldypack:moldcheck
execute positioned ~ ~-1 ~ align xyz unless entity @e[tag=FrucsMold,distance=..0.05] run function moldypack:moldcheck

execute positioned ~ ~1 ~1 align xyz unless entity @e[tag=FrucsMold,distance=..0.05] run function moldypack:moldcheck
execute positioned ~ ~1 ~-1 align xyz unless entity @e[tag=FrucsMold,distance=..0.05] run function moldypack:moldcheck
execute positioned ~1 ~1 ~ align xyz unless entity @e[tag=FrucsMold,distance=..0.05] run function moldypack:moldcheck
execute positioned ~-1 ~1 ~ align xyz unless entity @e[tag=FrucsMold,distance=..0.05] run function moldypack:moldcheck

execute positioned ~ ~-1 ~1 align xyz unless entity @e[tag=FrucsMold,distance=..0.05] run function moldypack:moldcheck
execute positioned ~ ~-1 ~-1 align xyz unless entity @e[tag=FrucsMold,distance=..0.05] run function moldypack:moldcheck
execute positioned ~1 ~-1 ~ align xyz unless entity @e[tag=FrucsMold,distance=..0.05] run function moldypack:moldcheck
execute positioned ~-1 ~-1 ~ align xyz unless entity @e[tag=FrucsMold,distance=..0.05] run function moldypack:moldcheck
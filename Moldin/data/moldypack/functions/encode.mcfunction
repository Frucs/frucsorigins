# def encode_argb_arithmetic(A, R, G, B):
    # Clamp values to 0–255
## if A < 0: A = 0
## if A > 255: A = 255
## if R < 0: R = 0
## if R > 255: R = 255
## if G < 0: G = 0
## if G > 255: G = 255
## if B < 0: B = 0
## if B > 255: B = 255

## return A*256*256*256 + R*256*256 + G*256 + B

scoreboard players set FrucsZero frucsmath 0
scoreboard players set FrucsMax frucsmath 255
scoreboard players set Frucs256 frucsmath 256
scoreboard players set FrucsResult frucsmath 0

#execute if score FrucsA frucsmath < FrucsZero frucsmath run scoreboard players set FrucsA frucsmath 0
execute if score FrucsA frucsmath > FrucsMax frucsmath run scoreboard players set FrucsA frucsmath 255
execute if score FrucsR frucsmath < FrucsZero frucsmath run scoreboard players set FrucsR frucsmath 0
execute if score FrucsR frucsmath > FrucsMax frucsmath run scoreboard players set FrucsR frucsmath 255
execute if score FrucsG frucsmath < FrucsZero frucsmath run scoreboard players set FrucsG frucsmath 0
execute if score FrucsG frucsmath > FrucsMax frucsmath run scoreboard players set FrucsG frucsmath 255
execute if score FrucsB frucsmath < FrucsZero frucsmath run scoreboard players set FrucsB frucsmath 0
execute if score FrucsB frucsmath > FrucsMax frucsmath run scoreboard players set FrucsB frucsmath 255

scoreboard players operation FrucsA frucsmath *= Frucs256 frucsmath
scoreboard players operation FrucsA frucsmath *= Frucs256 frucsmath
scoreboard players operation FrucsA frucsmath *= Frucs256 frucsmath
scoreboard players operation FrucsResult frucsmath += FrucsA frucsmath

scoreboard players operation FrucsR frucsmath *= Frucs256 frucsmath
scoreboard players operation FrucsR frucsmath *= Frucs256 frucsmath
scoreboard players operation FrucsResult frucsmath += FrucsR frucsmath

scoreboard players operation FrucsG frucsmath *= Frucs256 frucsmath
scoreboard players operation FrucsResult frucsmath += FrucsG frucsmath

scoreboard players operation FrucsResult frucsmath += FrucsB frucsmath

execute store result storage minecraft:frucspainter color int 1 run scoreboard players get FrucsResult frucsmath
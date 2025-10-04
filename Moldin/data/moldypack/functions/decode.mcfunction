## def decode_argb_arithmetic(argb):
## A = argb // (256*256*256)
## remainder = argb - A*256*256*256

## R = remainder // (256*256)
## remainder = remainder - R*256*256

# G = remainder // 256
# B = remainder - G*256

# return A, R, G, B

execute store result score FrucsResult frucsmath run data get storage minecraft:frucspainter color

scoreboard players set FrucsZero frucsmath 0
scoreboard players set FrucsMax frucsmath 255
scoreboard players set Frucs256 frucsmath 256
scoreboard players set Frucs256*256*256 frucsmath 16777216
scoreboard players set Frucs256*256 frucsmath 65536
scoreboard players set Frucs1 frucsmath 1


scoreboard players operation FrucsA frucsmath = FrucsResult frucsmath
scoreboard players operation FrucsA frucsmath /= Frucs256*256*256 frucsmath

scoreboard players operation FrucsRemainder frucsmath = FrucsResult frucsmath
scoreboard players operation FrucsA frucsmath *= Frucs256*256*256 frucsmath
scoreboard players operation FrucsRemainder frucsmath -= FrucsA frucsmath
scoreboard players operation FrucsA frucsmath = FrucsResult frucsmath
scoreboard players operation FrucsA frucsmath /= Frucs256*256*256 frucsmath

scoreboard players operation FrucsR frucsmath = FrucsRemainder frucsmath
scoreboard players operation FrucsR frucsmath /= Frucs256*256 frucsmath
scoreboard players operation FrucsR frucsmath *= Frucs256*256 frucsmath
scoreboard players operation FrucsRemainder frucsmath -= FrucsR frucsmath
scoreboard players operation FrucsR frucsmath /= Frucs256*256 frucsmath

scoreboard players operation FrucsG frucsmath = FrucsRemainder frucsmath
scoreboard players operation FrucsG frucsmath /= Frucs256 frucsmath
scoreboard players operation FrucsG frucsmath *= Frucs256 frucsmath
scoreboard players operation FrucsRemainder frucsmath -= FrucsG frucsmath
scoreboard players operation FrucsG frucsmath /= Frucs256 frucsmath

scoreboard players operation FrucsB frucsmath = FrucsRemainder frucsmath


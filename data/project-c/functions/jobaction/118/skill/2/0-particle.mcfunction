scoreboard players add #043-dummy counter 1
execute positioned ^1 ^ ^ run particle minecraft:enchant ~ ~0.9 ~ 0.01 0.25 0.01 0.1 40
execute unless score #043-dummy counter matches 36.. rotated ~10 ~ run function project-c:jobaction/043/skill/2/0-particle
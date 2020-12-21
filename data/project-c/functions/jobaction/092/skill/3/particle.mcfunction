scoreboard players add #092 counter 1
execute positioned ^1 ^ ^ run particle minecraft:enchant ~ ~0.9 ~ 0.01 0.25 0.01 0.1 4
execute unless score #092 counter matches 36.. rotated ~10 ~ run function project-c:jobaction/043/skill/2/0-particle
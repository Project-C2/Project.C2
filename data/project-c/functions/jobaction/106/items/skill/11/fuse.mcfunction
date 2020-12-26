#スキル11

function project-c:jobaction/106/items/skill/11/replace/check

tag @s remove 106_fuse
effect clear @s
data remove entity @s ActiveEffects
data merge entity @s {Fuse:0s}
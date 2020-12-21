tag @s[tag=031-S3toggle] add 031-S3toggleM
tag @s[tag=031-S3toggle] remove 031-S3toggle
tag @s[tag=!031-S3toggleM] add 031-S3toggle
tag @s[tag=031-S3toggleM] remove 031-S3toggleM
execute if entity @s[tag=SkillReady3] run function project-c:jobaction/031/replaceitem/3
execute if entity @s[tag=SkillReady2] run function project-c:jobaction/031/replaceitem/2
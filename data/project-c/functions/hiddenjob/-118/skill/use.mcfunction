
execute if entity @s[nbt={SelectedItem:{tag:{-118:0b}}},gamemode=!spectator] run function project-c:hiddenjob/-118/skill/0/0

execute if entity @s[nbt={SelectedItem:{tag:{-118:1b}}},scores={CT1=1200..},tag=SkillReady1,gamemode=!spectator] unless score @s counter matches 1.. run function project-c:hiddenjob/-118/skill/fail
execute if entity @s[nbt={SelectedItem:{tag:{-118:2b}}},scores={CT2=1200..},tag=SkillReady2,gamemode=!spectator] unless score @s counter matches 1.. run function project-c:hiddenjob/-118/skill/fail

execute if entity @s[nbt={SelectedItem:{tag:{-118:1b}}},scores={CT1=1200..,counter=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:hiddenjob/-118/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{-118:2b}}},scores={CT2=1200..,counter=1..},tag=SkillReady2,gamemode=!spectator] unless score @s counter_2 matches 1.. run function project-c:hiddenjob/-118/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{-118:3b}}},scores={CT3=1200..},tag=SkillReady3,gamemode=!spectator] run function project-c:hiddenjob/-118/skill/3/0


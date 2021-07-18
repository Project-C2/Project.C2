tag @a[tag=ehp,tag=ehp2] remove ehp
#hurtByNumber代入
scoreboard players operation @a[tag=ehp] hurtByNumber = @s playerNumber
execute store result score @a[tag=ehp,limit=1] hurtSkillNumber run data get entity @s SelectedItemSlot

#戦闘外判定の解除
execute as @a[tag=ehp] if entity @s[tag=Battle,scores={OutCombat=240..}] run effect clear @s regeneration
execute as @a[tag=ehp] if entity @s[tag=Battle,scores={OutCombat=240..}] run tag @s remove Regene
scoreboard players set @a[tag=ehp] OutCombat 0

#特殊処理(特殊カウンター技など)
tag @s add phe_damaged

tag @s remove phe_damaged

#後処理
tag @a[tag=ehp] remove ehp
advancement revoke @s only project-c:wanco_job/phe

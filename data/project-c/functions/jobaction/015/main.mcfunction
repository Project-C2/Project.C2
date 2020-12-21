#実行者     > 職15番
#実行地点   > 実行者の地点

#usedSkillリセット
scoreboard players reset @s usedSkill


#アイテム配布/サウンド再生/SkillReadyタグ付与
execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/015/replaceitem/1


#スキル発動
execute if entity @s[scores={sneak=1..,CT1=1200..},nbt={OnGround:1b,SelectedItem:{tag:{display:{Name:"[\"\",{\"text\":\"x\",\"obfuscated\":true,\"color\":\"dark_purple\"},{\"text\":\"呪い\",\"italic\":true,\"color\":\"light_purple\",\"obfuscated\":false},{\"text\":\"の\",\"obfuscated\":false},{\"text\":\"デコイ人形\",\"color\":\"gray\",\"obfuscated\":false},{\"text\":\"x\",\"italic\":false,\"obfuscated\":true,\"color\":\"dark_purple\"}]"}}}}] run function project-c:jobaction/015/skill/1/0


scoreboard players reset @s sneak
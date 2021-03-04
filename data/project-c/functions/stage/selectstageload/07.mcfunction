summon arrow 0 0 0 {xTile:-950,yTile:0,zTile:-950,NoGravity:1b,Tags:["Loader","Stable"]}
data merge block -113 47 -121 {Command:"/function project-c:stage/selectstageclock/07"}
data merge block -123 32 -120 {Command:"/function project-c:stage/selectstagestart/07"}
data merge block -115 20 -118 {Command:"/tp @a[scores={gameNumber=-1}] -950 75 -950 130 20"}
data merge block -115 23 -121 {Command:"/tp @a[tag=!Joined] -950 75 -950 130 20"}
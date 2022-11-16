#Customize where needed
#Path to NetRadiant
netradiant_path="/home/USERPROFILE/games/netradiant"
#Path to game
gamepath="/home/USERPROFILE/games/openarena"

"$netradiant_path/q3map2.x86" -fs_game truecombat -fs_basepath "$gamepath" -meta -v "cetape.map"
"$netradiant_path/q3map2.x86" -fs_game truecombat -fs_basepath "$gamepath" -vis -v "cetape.map"
"$netradiant_path/q3map2.x86" -fs_game truecombat -fs_basepath "$gamepath" -light -fast -patchshadows -samples 3 -bounce 8 -gamma 2 -compensate 4 -dirty -v "cetape.map"

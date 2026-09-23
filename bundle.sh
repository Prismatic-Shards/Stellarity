read -p "Version: " version

echo "Checking mods metadata:"
grep -r ${version} mod/

read -p "Do you see ${version} in the above list? If not update your mods metadata. "

rm -rf artifacts/${version}
mkdir -p artifacts/${version}

cd datapack/
zip -r ../artifacts/${version}/Stellarity-${version}.zip data/ overlay_data_26_1/ overlay_data_26_2/ overlay_data_1_21_11/ pack.mcmeta pack.png
cp ../artifacts/${version}/Stellarity-${version}.zip ../artifacts/${version}/mod.zip
cd ../music_pack
zip -9 -r ../artifacts/${version}/Stellarity-${version}-Music.zip *
cd ../nullscape_compat
zip -r ../artifacts/${version}/Stellarity-${version}-NSC.zip data/ pack.mcmeta pack.png 
cd ../resource_pack
zip -r  ../artifacts/${version}/Stellarity-${version}-RP.zip *
zip -r ../artifacts/${version}/mod.zip assets/ overlay_assets_26_3/ overlay_assets_26_2/ overlay_assets_26_1/ overlay_assets_1_21_11/
cd ../mod
zip -r ../artifacts/${version}/mod.zip *
cd ../artifacts/${version}
mv mod.zip Stellarity-${version}.jar

cd ..
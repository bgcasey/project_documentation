# set directory to clone GEE git into (should be empty)
cd /Volumes/Projects/climate_downscaling/1_code/GEE

# delete all .js files in directory
rm *.js

# clone gee scripts
git clone https://earthengine.googlesource.com/users/bgcasey/climate_downscaling

# delete .git folder
rm -r climate_downscaling/

# add the .js file extention to files
find climate_downscaling -type f -not -name "*.*" -exec mv "{}" "{}".js \;

# move .js files up a directory
mv -v climate_downscaling/*.js .

# delete now empty gee git folder
rmdir climate_downscaling


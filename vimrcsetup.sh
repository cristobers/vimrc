mkdir temp && cd temp/

printf "grabbing and moving vimrc\n"
curl -o .vimrc https://raw.githubusercontent.com/cristobers/vimrc/main/.vimrc 
rm ~/.vimrc && mv .vimrc ~/.vimrc # if there isnt a .vimrc present, this will break

mkdir -p ~/vim/colors

printf "grabbing the colours\n"
curl -o spacecamp.vim https://raw.githubusercontent.com/jaredgorski/SpaceCamp/master/colors/spacecamp.vim  
mv spacecamp.vim ~/vim/colors

printf "cleaning up\n"
cd .. && rm -rf temp/

printf "should be done :)\n"

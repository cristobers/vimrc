mkdir temp && cd temp/

printf "grabbing and moving vimrc\n"
curl -o .vimrc https://raw.githubusercontent.com/cristobers/vimrc/main/.vimrc 

cat ~/.vimrc > /dev/null 2>&1
if [ $? -eq 0 ]
then
    printf "vimrc present\n"
    rm ~/.vimrc && mv .vimrc ~/.vimrc # if there is a vimrc present, bin it and replace it with the new one
else
    printf "there is no vimrc present\n"
    mv .vimrc ~/.vimrc
fi

mkdir -p ~/.vim/colors

printf "grabbing the colours\n"
curl -o spacecamp.vim https://raw.githubusercontent.com/jaredgorski/SpaceCamp/master/colors/spacecamp.vim  
mv spacecamp.vim ~/.vim/colors

printf "cleaning up\n"
cd .. && rm -rf temp/

printf "should be done :)\n"

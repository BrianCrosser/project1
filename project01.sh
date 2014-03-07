#Project: 1
#File name: project01.sh
#Author: Brian A. Crosser

#Gets all the image names in a directory and its subdirectories then appends them to an array called allFiles.
allFiles=$(ls -R | grep -E "(jpg|png|gif|jpeg)")

#Gets all the image names used in list.txt and appends them to an array called list.
list=$(grep -Po '".*?"' list.xml | rev | cut -c 2- | rev | cut -c 2-)

for file in $allFiles
do
    notFound=1
    for fileName in $list
    do
        #echo $fileName
        #echo $file
        #echo -------------
        if [ $fileName != $file ]
        then
            
            echo $fileName
            
        fi
    done
done



#list=$(ls *.jpg)
#for item in $list;
#do;
#    echo $item;
#    grep $item filename.json;
#done;

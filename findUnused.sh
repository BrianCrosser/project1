#Project: 1
#File name: project01.sh
#Author: Brian A. Crosser

#Gets all the image names in a directory and its subdirectories then appends them to an array called allFiles.
allFiles=$(ls -R | grep -E "(jpg|png|gif|jpeg)")
# echo $allFiles

#Gets all the image names used in list.xml and appends them to an array called list.
list=$(find . | grep -E ".+(txt|json|xml)")
# echo $list

for fileName in $allFiles; do
    result=1
    for file in $list; do
        # echo "Running grep with $fileName $file"
        grep -q $fileName $file
        if [ $? -eq 0 ]; then
            result=0
        fi
    done

    if [ $result -eq 1 ]
    then
        echo $fileName
    fi
done

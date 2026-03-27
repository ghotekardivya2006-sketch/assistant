mkdir LabWork
cd LabWork
mkdir A B C
cd A
mkdir Test

cd ~/LabWork/B

# Create 3 files
touch file1.txt file2.txt file3.txt

# Copy one file to C
cp file1.txt ../C/

# Move one file to A
mv file2.txt ../A/

# Delete one file
rm file3.txt

# Move into directory A
cd ~/LabWork/A

# Display current path
pwd

# Return back to parent directory
cd ..
cd ~/LabWork
tree

sudo apt install tree
# Create file
touch data.txt

# Write lines
echo "Linux is powerful" > data.txt
echo "Linux is open-source" >> data.txt
echo "Linux is widely used" >> data.txt
#!/bin/bash
echo "Enter your name:"
read name
echo "Welcome $name"




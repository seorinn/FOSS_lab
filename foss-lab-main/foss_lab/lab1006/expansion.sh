FOO="Seorin Kim"
STR="/home/course/foss/oss105/aaa.c"
echo $FOO
echo ${FOO:0:3}
echo ${FOO:(-5):3}
echo ${STR%.c}
echo ${STR#/}
echo ${STR##/}

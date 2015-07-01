
echo " ATENÇÃO!!!!!!!!"
echo " NÃO ESQUEÇA DE COLOCAR O artigo em PDF arqui nessa pasta, hen? :-)"
echo "-----------------------------------------------------------------"

FOLDER_NAME="ra161939-ra180070"
ZIP_NAME="trabalho_final.zip"

echo "cleaning last build"
rm -rf $FOLDER_NAME
rm $ZIP_NAME

echo "creating the build folder"
mkdir $FOLDER_NAME

echo "coping the README to folder"
cp README $FOLDER_NAME/

echo "coping cuda implementation"
cp -r ../cuda $FOLDER_NAME/

echo "coping custom makefile to cuda folder"
cp makefiles/cuda-makefile $FOLDER_NAME/cuda/makefile

echo "coping openmp implementation"
cp -r ../openmp $FOLDER_NAME/

echo "coping custom makefile to openmp folder"
cp makefiles/openmp-makefile $FOLDER_NAME/openmp/makefile

echo "coping input files to build folder"
#cp -r input/ $FOLDER_NAME/
mkdir $FOLDER_NAME/input
cp input/points.json $FOLDER_NAME/input/
cp generate_files.py $FOLDER_NAME/input/

echo "copiando arquivo pdf"
cp relatorio.pdf $FOLDER_NAME
cp apresentacao.pdf $FOLDER_NAME

echo "cleaning trashes fles"
rm $FOLDER_NAME/cuda/kmeans.out*
rm $FOLDER_NAME/cuda/CMakeLists.txt
rm -rf $FOLDER_NAME/cuda/.metadata/
rm -rf $FOLDER_NAME/cuda/build/
rm $FOLDER_NAME/openmp/kmeans.out*
rm -rf $FOLDER_NAME/openmp/build/
rm $FOLDER_NAME/openmp/compile.sh
rm $FOLDER_NAME/cuda/src/.cproject
rm $FOLDER_NAME/cuda/src/.project

echo "compacting"
zip -r $ZIP_NAME $FOLDER_NAME

echo "end of build"

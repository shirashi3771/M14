
#Descomprimeix els fàrmacs a la carpeta de fàrmacs
carpeta="docking-$(date +%Y-%m-%d-%H-%M)"
subcarpeta="farmacs"
if [ ! -d "$carpeta" ]; then
mkdir "$carpeta"
fi
comp="$carpeta/$subcarpeta"
if [ ! -d "$comp" ]; then
mkdir "$

#Còpia la proteina a la carpeta de proteina
carpeta="docking-$(date +%Y-%m-%d-%H-%M)"
subcarpeta="proteina"
if [ ! -d "$carpeta" ]; then
mkdir "$carpeta"
fi
comp="$carpeta/$subcarpeta"
if [ ! -d "$comp" ]; then
mkdir "$comp
fi
cp comp/to/proteina.pdb "$comp"

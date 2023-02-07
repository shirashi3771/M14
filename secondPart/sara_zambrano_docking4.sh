

#Crear carpeta
folder="docking-$(date +%Y-%m-%d-%H-%M)"

#Crea una carpeta per a cada parell de fàrmac i proteina
folder="docking-$(date +%Y-%m-%d-%H-%M)"
simulations_folder="simulacions"
farmacs_folder="farmacs"
proteins_folder="proteina"
if [ ! -d "$folder" ]; then
mkdir "$folder"
fi
simulations_path="$folder/$simulations_folder"
if [ ! -d "$simulations_path" ]; then
mkdir "$simulations_path"
fi
for protein in $(ls "$folder/$proteins_folder"); do
protein_base="$(basename "$protein" .pdb)"
for farmac in $(ls "$folder/$farmacs_folder"); do
farmac_base="$(basename "$farmac" .mol)"
mkdir "$simulations_path/$protein_base-$farmac_base"
done
done

MACHINE="apollo"
SYNTHESIZER_DATA_DIR="/research/astrodata/highz/synthesizer/"
$CLOUDY_PATH=$CLOUDY_PATH

while read GRID_NAME; do
  cd ..
  python create_cloudy_input_grid.py -machine $MACHINE -synthesizer_data_dir $SYNTHESIZER_DATA_DIR -grid_name $GRID_NAME -cloudy_path $CLOUDY_PATH
  cd generate_synthesizer_agn_grids
done < grids.txt




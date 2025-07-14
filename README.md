# docker_lib


## Build image
```
chmod +x ./build_docker.sh .sh # do it once only
./build_docker.sh {pkg arg}
```

## Run image and generate container
```
chmod +x ./run_docker.sh .sh # do it once only
./run_docker.sh {pkg arg}
```

## pkg arg
- [raven2](https://github.com/Athenachc/docker_lib/blob/main/dockerfiles/Dockerfile.raven2-gpu): Raven2 simulation on AMBF

  Since the [dataset](https://datadryad.org/dataset/doi:10.5061/dryad.tqjq2bw84) requires human verification to download, please download it manually and place it under your `~/docker_lib/dockerfiles/` directory before building the image.

  After building the image and creating the container, run the following command inside the container to unzip the dataset:


  ```
  unzip raven2_dataset.zip
  cd raven2_dataset

  mkdir -p record_1_different_directions \
         record_2_diff_sparsity \
         record_3_time_decay_unloaded \
         record_3_time_decay_500gload \
         record_3_time_decay_idle \
         record_4_home_decay_no_home_in_training \
         record_4_home_decay_with_home_in_training

  unzip record_1_different_directions.zip -d record_1_different_directions
  unzip record_2_diff_sparsity.zip -d record_2_diff_sparsity
  unzip record_3_time_decay_unloaded.zip -d record_3_time_decay_unloaded
  unzip record_3_time_decay_500gload.zip -d record_3_time_decay_500gload
  unzip record_3_time_decay_idle.zip -d record_3_time_decay_idle
  unzip record_4_home_decay_no_home_in_training.zip -d record_4_home_decay_no_home_in_training
  unzip record_4_home_decay_with_home_in_training.zip -d record_4_home_decay_with_home_in_training 

  pip install --upgrade numpy 

  ```

## docker notes
Feel free to have a look: [here](https://github.com/Athenachc/coding_memo/tree/main/docker)

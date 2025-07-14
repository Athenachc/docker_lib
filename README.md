# docker_lib

## Build image
```
./build_docker.sh {pkg arg}
```

## Run image and generate container
```
./run_docker.sh {pkg arg}
```

## pkg arg
- [raven2](https://github.com/Athenachc/docker_lib/blob/main/dockerfiles/Dockerfile.raven2-gpu): Raven2 simulation on AMBF

  Since the dataset requires human verification to download, we cannot download it via URL.
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

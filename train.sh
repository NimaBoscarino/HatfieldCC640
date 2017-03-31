# Bunch of docker stuff

mkdir $HOME/tf_files
cp Months $HOME/tf_files/Months

cd $HOME
mkdir tf_files
cd tf_files

docker run -it -v $HOME/tf_files:/tf_files  gcr.io/tensorflow/tensorflow:latest-devel
cd /tensorflow
git pull

python tensorflow/examples/image_retraining/retrain.py \
--bottleneck_dir=/tf_files/bottlenecks \
--how_many_training_steps 500 \
--model_dir=/tf_files/inception \
--output_graph=/tf_files/retrained_graph.pb \
--output_labels=/tf_files/retrained_labels.txt \
--image_dir /tf_files/Months

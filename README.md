HatfieldCC640
=============

The Campbell Scientific CC640 camera sends images without metadata like timestamps. Using Tesseract OCR does not work on recognizing the text in the timestamp banner. This attempts to train a neural network to recognize months from the timestamp banner.


Requirements:
- docker
- python 2
- wget (`brew install wget` if on macOS)
- imagemagick (`brew install imagemagick` if on macOS)
- ffmpeg (`brew install ffmpeg` if on macOS)
- sudo pip install keras
- sudo pip install tensorflow

Steps:
1. Download all available CC640 timelapse videos from UAlberta `sh getAllStreams.sh`

2. Split videos into individual frames `sh getAllFrames.sh`

Optional:
Crop all images to tiles `sh cropStillsToAllTiles.sh`

Find tiles under danielTiles.

3. Crop 2010 images to rough month stamp

4. Separate take top 150 images from each month, copy to new folder for training + validation data

5. Augment image data `python keras_warp.py Months`

6. Prepare and launch docker image with `dockerPrep.sh`

7. Now in docker, pump into TensorFlow for bottleneck creation and testing: `sh /tf_files/train.sh`

If you're feeling cool, skip steps 1 - 6 with `sh prepData.sh`, and then do step 7.

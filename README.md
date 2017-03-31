HatfieldCC640
=============

The Campbell Scientific CC640 camera sends images without metadata like timestamps. Using Tesseract OCR does not work on recognizing the text in the timestamp banner. This attempts to train a neural network to recognize months from the timestamp banner.


Requirements:
- docker
- python 2
- wget
- imagemagick
- ffmpeg
- pip install keras

Steps:
1. Download all available CC640 timelapse videos from UAlberta `sh getAllStreams.sh`

2. Split videos into individual frames `sh getAllFrames.sh`

Optional:
Crop all images to tiles `sh cropStillsToAllTiles.sh`

Find tiles under danielTiles.

3. Crop 2010 images to rough month stamp

4. Augment image data

5. Pump into TensorFlow for bottleneck creation and testing
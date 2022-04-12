# Lab 09 Report - Databases

## 1. Verify Your Tensorflow
Tensorflow popup window successful from [checkpoint 1's example code](https://github.com/listeph/oss-repo-template/tree/master/labs/lab-10/python-code/check1.py): \
![](/labs/lab-10/images/check1.png)

## 2. Run a Tensorflow Classification
Here are screenshots I have obtained from following the given Tensorflow Keras tutorial. \
This is the figure obtained at the pre-processing step, displaying the first 25 images from the training set and display the class name below each image: \
![](/labs/lab-10/images/check2-preprocessing.png) \
This is the figure obtained from displaying the first 15 test images, their predicted labels, and the true labels: \
![](/labs/lab-10/images/check2-test-images.png) \
This is the figure obtained from using our trained model for prediction on a single image in `test_images`: \
![](/labs/lab-10/images/check2-image-prediction.png) \
Finally, this is the figure obtained from displaying the test images 9000-9014 as specified in lab check 2 instruction. The code modification can be viewed at [python-code/check2.py](https://github.com/listeph/oss-repo-template/tree/master/labs/lab-10/python-code/check2.py): \
![](/labs/lab-10/images/check2-test-images-9000.png)

## 3. Curate Some Data
The code where I used ImageOps and Image from Pillow to transform images is given in [python-code/check3.py](https://github.com/listeph/oss-repo-template/tree/master/labs/lab-10/python-code/check3.py). The resulting images and their transformed grayscale 28x28 versions are available to view in the [python-code/images folder](https://github.com/listeph/oss-repo-template/tree/master/labs/lab-10/python-code/images)\
The resulting predictions for each of the three images can be shown here: \
![](/labs/lab-10/images/check3-predictions-array.png)
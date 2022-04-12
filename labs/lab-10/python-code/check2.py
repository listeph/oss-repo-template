# TensorFlow and tf.keras
import tensorflow as tf

# Helper libraries
import numpy as np
import matplotlib.pyplot as plt

# Display the image, labeled with the predicted label (blue if accurate to true label, red if not)
def plot_image(i, predictions_array, true_label, img):
  true_label, img = true_label[i], img[i]
  plt.grid(False)
  plt.xticks([])
  plt.yticks([])

  plt.imshow(img, cmap=plt.cm.binary)

  predicted_label = np.argmax(predictions_array)
  if predicted_label == true_label:
    color = 'blue'
  else:
    color = 'red'

  plt.xlabel("{} {:2.0f}% ({})".format(class_names[predicted_label],
                                100*np.max(predictions_array),
                                class_names[true_label]),
                                color=color)

# Bar graph of the full set of 10 class predictions for Model Predictions. 
# Color the predicted label red and the true label blue (override predicted label red if accurate).      
def plot_value_array(i, predictions_array, true_label):
  true_label = true_label[i]
  plt.grid(False)
  plt.xticks(range(10))
  plt.yticks([])
  thisplot = plt.bar(range(10), predictions_array, color="#777777")
  plt.ylim([0, 1])
  predicted_label = np.argmax(predictions_array)

  thisplot[predicted_label].set_color('red')
  thisplot[true_label].set_color('blue')

print(tf.__version__)

# --------------- Import and load the Fashion MNIST data directly from TensorFlow ----------------
fashion_mnist = tf.keras.datasets.fashion_mnist
(train_images, train_labels), (test_images, test_labels) = fashion_mnist.load_data()
# label numbers correspond to their respective classes of clothing
class_names = ['T-shirt/top', 'Trouser', 'Pullover', 'Dress', 'Coat',
               'Sandal', 'Shirt', 'Sneaker', 'Bag', 'Ankle boot']

# ------------------------ Explore the format of the dataset ----------------------
# (60000, 28, 28) --> 60,000 images in the training set, with each image represented as 28 x 28 pixels
print(train_images.shape)
# 60000 --> there are 60,000 corresponding labels in the training set
print(len(train_labels))
# array([9, 0, 0, ..., 3, 0, 5], dtype=uint8) --> each label is a number between 0 and 9
print(train_labels)
# (10000, 28, 28) --> 10,000 images in the test set, each image is represented as 28 x 28 pixels
print(test_images.shape)
# 10000 --> test set contains 10,000 images labels
print(len(test_labels))

# ------------------------------ Preprocess the data ----------------------------
# pixel values fall in the range of 0 to 255
# Scale these values to a range of 0 to 1 before feeding them to the neural network model
train_images = train_images / 255.0
test_images = test_images / 255.0
# verify data is in correct format and that you're ready to build and train the network
# display the first 25 images from the training set and display the class name below each image
plt.figure(figsize=(10,10))
for i in range(25):
    plt.subplot(5,5,i+1)
    plt.xticks([])
    plt.yticks([])
    plt.grid(False)
    plt.imshow(train_images[i], cmap=plt.cm.binary)
    plt.xlabel(class_names[train_labels[i]])
plt.show()

# ------------------------------- Build and train the model ---------------------------------
# set up the layers, which extract representations from the data fed into them
model = tf.keras.Sequential([
    # the Flatten layer transforms the format of the images from a two-dimensional array
    # (of 28 by 28 pixels) to a one-dimensional array (of 28 * 28 = 784 pixels)
    tf.keras.layers.Flatten(input_shape=(28, 28)),
    # two densely connected, or fully connected, neural layers
    tf.keras.layers.Dense(128, activation='relu'),
    tf.keras.layers.Dense(10)
])
# compile the model and add a few more settings
model.compile(optimizer='adam',
              loss=tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True),
              metrics=['accuracy'])
# train the model by feeding it the training data
# as the model trains, the loss and accuracy metrics are displayed
model.fit(train_images, train_labels, epochs=10)
# evaluate accuracy against the test data
test_loss, test_acc = model.evaluate(test_images,  test_labels, verbose=2)
print('\nTest accuracy:', test_acc)

# ------------------------------- Make Predictions from Model ---------------------------------
# attach a softmax layer to convert the model's linear outputs—logits—to probabilities
probability_model = tf.keras.Sequential([model, 
                                         tf.keras.layers.Softmax()])
# predict the label for each image in the testing set into a prediction array of 10 numbers
predictions = probability_model.predict(test_images)
# Plot the first X test images, their predicted labels, and the true labels.
num_rows = 5
num_cols = 3
num_images = num_rows*num_cols
plt.figure(figsize=(2*2*num_cols, 2*num_rows))
# MODIFICATION: for i in range(num_images):
for i in range(9000,9015):
  # MODIFICATION: plt.subplot(num_rows, 2*num_cols, 2*i+1)
  plt.subplot(num_rows, 2*num_cols, 2*(i - 9000)+1)
  plot_image(i, predictions[i], test_labels, test_images)
  # MODIFICATION: plt.subplot(num_rows, 2*num_cols, 2*i+2)
  plt.subplot(num_rows, 2*num_cols, 2*(i-9000)+2)
  plot_value_array(i, predictions[i], test_labels)
plt.tight_layout()
plt.show()

# ----------------------------------- Use the Trained Model -------------------------------------
# Finally, use the trained model to make a prediction about a single image.
# Grab an image from the test dataset.
img = test_images[1]
# (28, 28)
print(img.shape)
# Add the image to a batch where it's the only member.
# tf.keras models are optimized to make predictions on a batch, or collection, of examples at once
img = (np.expand_dims(img,0))
# (1, 28, 28)
print(img.shape)
# now predict the correct label for this image
predictions_single = probability_model.predict(img)
# [[8.26038831e-06 1.10213664e-13 9.98591125e-01 1.16777841e-08 1.29609776e-03 2.54965649e-11 
# 1.04560357e-04 7.70050608e-19 4.55051066e-11 3.53864888e-17]]
print(predictions_single)

plot_value_array(1, predictions_single[0], test_labels)
_ = plt.xticks(range(10), class_names, rotation=45)
plt.show()
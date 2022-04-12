# TensorFlow and tf.keras
import tensorflow as tf

# Helper libraries
import numpy as np
import matplotlib.pyplot as plt
from PIL import Image, ImageOps

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
def plot_value_array(predictions_array, true_label):
  print(predictions_array)
  plt.grid(False)
  plt.xticks(range(10))
  plt.yticks([])
  thisplot = plt.bar(range(10), predictions_array, color="#777777")
  plt.ylim([0, 1])
  predicted_label = np.argmax(predictions_array)
  print(predicted_label)

  thisplot[predicted_label].set_color('red')
  thisplot[true_label].set_color('blue')

print(tf.__version__)

# --------------- Import and load the Fashion MNIST data directly from TensorFlow ----------------
fashion_mnist = tf.keras.datasets.fashion_mnist
(train_images, train_labels), (test_images, test_labels) = fashion_mnist.load_data()
# label numbers correspond to their respective classes of clothing
class_names = ['T-shirt/top', 'Trouser', 'Pullover', 'Dress', 'Coat',
               'Sandal', 'Shirt', 'Sneaker', 'Bag', 'Ankle boot']

# ------------------------------ Preprocess the data ----------------------------
# pixel values fall in the range of 0 to 255
# Scale these values to a range of 0 to 1 before feeding them to the neural network model
train_images = train_images / 255.0
test_images = test_images / 255.0
# verify data is in correct format and that you're ready to build and train the network
# display the first 25 images from the training set and display the class name below each image

'''
plt.figure(figsize=(10,10))
for i in range(25):
    plt.subplot(5,5,i+1)
    plt.xticks([])
    plt.yticks([])
    plt.grid(False)
    plt.imshow(train_images[i], cmap=plt.cm.binary)
    plt.xlabel(class_names[train_labels[i]])
plt.show()
'''

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


# ----------------------------------- Use the Trained Model -------------------------------------
# Check 3: Finally, use the trained model to make a prediction about three given image.

test_images = []
# pic 1 code
img = Image.open("images/pic1.jpg")
resized_img = img.resize((28,28))
grayscale_img = ImageOps.invert(ImageOps.grayscale(resized_img))
grayscale_img.save("images/pic1-edited.jpg")
test_images.append(np.array(grayscale_img))
# pic 2 code
img2 = Image.open("images/pic2.jpg")
resized_img2 = img2.resize((28,28))
grayscale_img2 = ImageOps.invert(ImageOps.grayscale(resized_img2))
grayscale_img2.save("images/pic2-edited.jpg")
test_images.append(np.array(grayscale_img2))
# pic 3 code
img3 = Image.open("images/pic3.jpg")
resized_img3 = img3.resize((28,28))
grayscale_img3 = ImageOps.invert(ImageOps.grayscale(resized_img3))
grayscale_img3.save("images/pic3-edited.jpg")
test_images.append(np.array(grayscale_img3))


# Add the image to a batch where it's the only member.
# tf.keras models are optimized to make predictions on a batch, or collection, of examples at once
np_test_images = np.array(test_images)  / 255.0
np_true_labels = [6, 7, 1]
predictions = probability_model.predict(np_test_images)
print("Resulting predictions array: ")
print(predictions)
for i in range(1,4):
  print("Prediction for pic" + str(i) + ".jpg is " + class_names[np.argmax(predictions[i-1])] + " and the true label is " + class_names[np_true_labels[i-1]])

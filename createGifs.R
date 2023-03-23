# STUDY

## list file names and read in
studyIms <- c("Images/faceIm.jpg", "Images/crossIm.jpg", 
              "Images/poolIm.jpg", "Images/crossIm.jpg")
img_list <- lapply(studyIms, image_read)

## join the images together
img_joined <- image_join(img_list)

## animate at 2 frames per second
img_animated <- image_animate(img_joined, fps = 0.5)

## view animated image
img_animated

# write gif
image_write(image = img_animated, path = "study.gif")


# VIVIDNESS
## list file names and read in
vividIms <- c("Images/faceIm.jpg", "Images/crossIm.jpg", 
              "Images/blackVividIm.jpg", "Images/redVividIm.jpg", 
              "Images/crossIm.jpg")
img_list <- lapply(vividIms, image_read)

## join the images together
img_joined <- image_join(img_list)

## animate at 2 frames per second
img_animated <- image_animate(img_joined, fps = 0.5)

## view animated image
img_animated

# write gif
image_write(image = img_animated, path = "vivid.gif")



# RECALL
recallIm <- c("Images/recall1Im.jpg", 
              "Images/recall2Im.jpg", 
              "Images/recall3Im.jpg")
img_list <- lapply(recallIm, image_read)

## join the images together
img_joined <- image_join(img_list)

## animate at 2 frames per second
img_animated <- image_animate(img_joined, fps = 0.5)

## view animated image
img_animated

# write gif
image_write(image = img_animated, path = "recall.gif")


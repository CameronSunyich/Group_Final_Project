# An Exploration of Music Trends Over Time

## Project Overview
This collaborative effort involves using machine learning to answer a question of interest. 

### Topic
We decided to examine trends within the music industry from 1960-2019. We will compare how individual features like duration, loudness, and danceability have changed over time. 

By looking at artists who have released songs over multiple decades, we plan on comparing their trends to the trends of the overall industry to see if the features of their songs align with overall trends. 

Using unsupervised modeling techniques, we are going to examine clusters of song features by decade to evaluate if songs have become more similar or less similar over time.  

### Reason for Selecting Topic
Nearly everybody enjoys music in some capacity, so an analysis of something so integrated into society seemed interesting. Our hope is that music trends over time could reveal something about how people have changed over the decades. 

### Questions We Hope to Answer
- How individual features have changed over time? We plan to plot the following features by year; tempo, duration, loudness, danceability, energy, and whether or not songs are explict. 

- Are songs more similar or less similar? By creating clusters of songs by decade, we can see if the spread of those clusters changes to be closer together or further apart. 

- Do trends of individual artists follow trends of individual features? We plan on selecting artists who have released songs in 2 or 3 decades and comparing the individual features of their songs to the individual features of the rest of the songs in the same year to compare if the artist's songs follow a similar trend compared to the rest of the industry. 

### Data Source
[Kaggle Data](https://www.kaggle.com/vatsalmavani/music-recommendation-system-using-spotify-dataset/data)

## Machine Learning Model
We will use a K-means algorithm to cluster our data for trends by decade.

## Database
We will be using PostgreSQL to manage our database. 
Data has been successfully imported into pgAdmin. See attached SQL file for table details. 

## Presentation
[Google Slides Presentation](https://docs.google.com/presentation/d/1Zdr2dapoO0zbbEyedpY4m-J9n3LRmr9VZOUt79l3u-4/edit?usp=sharing)

## Dashboard
[Dashboard](link)
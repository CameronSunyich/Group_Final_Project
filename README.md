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

- Are songs getting more similar or less similar? By creating clusters of songs by decade, we can see if the spread of those clusters changes to be closer together or further apart. 

- Do trends of popular songs follow trends of individual features? We plan on selecting the most popular songs in certain decades and comparing the individual features of those songs to the features of the rest of the songs in the same year to compare if the popular songs are noticeably similar to or different from other songs released in the same decade. 

## Data Processing
Preprocessing, data cleaning, and exploratory data analysis was completed in Jupyter Notebook. 

### Data Source
[Kaggle Data](https://www.kaggle.com/vatsalmavani/music-recommendation-system-using-spotify-dataset/data)

## Machine Learning Model
We used a K-means algorithm to cluster our data. Using three principal components and five classes, our data grouped songs based on year, acousticness, danceability, duration, energy, explicit, instrumentalness, loudness, popularity, and tempo. Clusters were used in order to determine song similarity. This was the best way to determine groups of songs and see what combinations of features are common and make songs more or less similar. Three principal components were selected based on the Elbow Curve. 

## Links
Links to external resources are found below.

### Database
We are using PostgreSQL to manage our database. 
Data has been successfully imported into pgAdmin and connected to Jupyter Notebook using SQLAlchemy. 

### Presentation
[Google Slides Presentation](https://docs.google.com/presentation/d/1Zdr2dapoO0zbbEyedpY4m-J9n3LRmr9VZOUt79l3u-4/edit?usp=sharing)

### Dashboard
[Dashboard](https://public.tableau.com/app/profile/cameron.sunyich/viz/SpotifyMusicTrends_16459391586170/FeaturesandPopularArtistbytheDecade?publish=yes)

Tableau dashboard is being used to create a dashboard.

### Interactive Website
[Website](link)

A D3 interactive site is being deployed to select a decade to see relevant graphs. 

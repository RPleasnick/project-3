xt# project-3
Collaboration with Matthew Rindfleisch, Saritha Vulupala, and Renee Pleasnick


**OVERVIEW**

In this project, data from several museums were gathered.  The specific museums where the Carnegie Museum of Art, the Art Institute of Chicago, and the Cleveland Museum of Art.  The project was to see where to find art pieces from the greatest painters.  Since the "greatest painters" are subjective, _101.csv_ file was created by combining lists from 3 different websites (https://theartwolf.com/most-important-painters/, https://www.ranker.com/list/best-painters-of-all-time/ranker-art,  https://mymodernmet.com/greatest-painters-of-all-time/).  The _101.csv_ was used to filter each museums data, and each museum had different challenges.

Carnagie Museum of Art:

Art Institute of Chicago:
Discouraged scraping of website due to the amount of data.  Provided a data dump through their GitHub.  This provided allArtwork.json file and several json files for each piece of art.  The allArtwork.json file had a list of artists and their art pieces and the unique id for each artwork.  The other json files can be found in project-3\api-data\json\artworks".  The files are zipped because there are over 200,000 json files.
The aic.ipynb filters the allArtwork with the list of painters from 101.csv. dataframes are created with each file and merged.  The code then uses a function to extract the creation date for each art piece and merges it to the dataframe.  The dataframe is then written to a CSV file and loaded in database.

Cleveland Museum of Art:



# project-3
Collaborative effort of Matthew Rindfleisch, Saritha Vulupala, and Renee Pleasnick


**OVERVIEW**

In this project, data from several museums were gathered.  The specific museums where the Carnegie Museum of Art, the Art Institute of Chicago, and the Cleveland Museum of Art.  The project was to see where to find art pieces from the greatest painters.  Since the "greatest painters" are subjective, _101.csv_ file was created by combining lists from 3 different websites.  The _101.csv_ was used to filter each museums data, and each museum had different challenges.

Carnegie Museum of Art:
The collection data of the Carnegie Museum of Art in Pittsburgh, Pennsylvania was located in a public archive on GitHub. The data is available in both csv and json format. The repository has been archived by the owner on Mar 12, 2021 and is now read-only. The repo has an helpful readme.md file that outlined the metadata and data structure format and scheme. We downloaded the csv file for the assignment. 

Art Institute of Chicago:
Discouraged scraping of website due to the amount of data.  Provided a data dump through their GitHub.  This provided allArtwork.json file and several json files for each piece of art.  The allArtwork.json file had a list of artists and their art pieces and the unique id for each artwork.  The other json files can be found in project-3\api-data\json\artworks".  The files are zipped because there are over 200,000 json files.  The aic.ipynb filters the allArtwork with the list of painters from 101.csv. dataframes are created with each file and merged.  The code then uses a function to extract the creation date for each art piece and merges it to the dataframe.  The dataframe is then written to a CSV file and loaded in database.

![Screenshot 2024-06-25 160306](https://github.com/RPleasnick/project-3/assets/146039635/bb1cb7b0-8051-48a8-9aaa-ba4e0f71f283)

Cleveland Museum of Art:


**How to Use**
The output of this assignment is a dataset of filtered datasets from all 3 museums in the form of both `csv` files and a sql `VIEW` (called `cle_chi_carn`).  The user may grab a `csv` file and view a pretty rendering of the data using either 'Render CSV' or 'CSV Parser' - instructions on how to run these are in the "References" section.

**Ethical Considerations**

When looking at each of the museums websites, not only did each museum store information differently, each museum had criteria when using their information.  The Art Institute of Chicago discouraged scraping their website and only allowed only the data from there public art to be used.  Utilizing the data dump, only gave the information that was public.

When creating list of "Greatest Painters", several lists were combine to try to lessen biases.  The s used votes to determine who was the "greatest". The license agreement for theartwolf.com stated that, 
'You may access this from theArtWolf for your own personal use subjected to restrictions set in (the) terms and conditions.'


**Sources for Data**

Art institute of Chicago Data Dump:   https://github.com/art-institute-of-chicago/api-data;

Carnegie Museum of Art in Pittsburgh, Pennsylvania: https://github.com/cmoa/collection

101.csv:  https://theartwolf.com/most-important-painters/, 
          https://www.ranker.com/list/best-painters-of-all-time/ranker-art,  
          https://mymodernmet.com/greatest-painters-of-all-time/

**Reference for Code**

- Function to extract creation date from json file came from XPert AI
- Render CSV: to run this program, run `app.py`; companion file need is `templates\home.html`. Source code is from: https://github.com/maksimKorzh/flask-tutorials/tree/master/csv
- Parsing a CSV file with Javascript: run `csv-conversion\index.html`; companion files are all in `csv-conversion`folder. Source code is from: https://www.youtube.com/watch?v=oencyPPBTUQ



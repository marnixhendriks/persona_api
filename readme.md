# (Dutch) Persona API #

This API fetches data for use on a persona. Personas are fictive persons that could be real people. This gives designers, developers and other creatives the possibility to develop products for an imaginary person who seems real. 

## Data ##
The application takes into account the fact that names were popular in a certain period. For example the female name 'Geertruida' lost its popularity in 1960 and therefore it will not be assigned to personas born after that age. Another example is the male name 'Finn'. This name became popular around the year 2000 and will therefore not be assigned to personas born before that year.

#### Sample output: ####
`{"first_name": "Theodorus", "last_name": "Breedveld", "gender": "m", "year_of_birth": 1942, "city": "Roermond"}`

## Setup ##
Run `php artisan migrate` to populate the database. 

## How to use? ##
This is how the URL should look like:

*/api/persona/{gender}/{age group}*


### Using gender (a,m,f) ###
Fetch data for both Male and Female, all ages:

*/api/persona/a* or */api/persona/A*


Fetch data for a Male, all ages:

*/api/persona/m* or */api/persona/M*


Fetch data for a Female, all ages:

*/api/persona/f* or */api/persona/F*

### Using age groups ###
The following age groups are used:

Number :    Age group with min and max age

1 :         5-90 (all ages)

3 :         3-11 

4 :         5-7

6 :         5-45

8 :         8-10

10 :        10-13

11 :        12+

12 :        13-17

14 :        18-24

16 :        24-29

18 :        18-65

21 :        18+

24 :        25-45

25 :        30+

27 :        38-65

28 :        45+

30 :        65+


To get data from a persona (male or female) in the age between 38 and 65 you use:

*/api/persona/a/27*


## Next ##
This is still Work in process. Future implementations will involve the following:
- assigning a profession;
- providing a link to a photo that fits age, profession, gender and eventually origin;
- implementation of foreign names;
- implementation of interests/hobbies;
- implementation of favorite brands;
- small description;
- etc.

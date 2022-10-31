from config import config
import mysql.connector
from mysql.connector import errorcode
import random
from datetime import datetime

# Database connection
try:
    bdd = mysql.connector.connect(**config)
except mysql.connector.Error as err:
  if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
    print("Something is wrong with your user name or password")
  elif err.errno == errorcode.ER_BAD_DB_ERROR:
    print("Database does not exist")
  else:
    print(err)

# The cursor 
cursor = bdd.cursor()

# Futur improvement
# User input group size
# n = input("Quelle taille de groupe souhaitez-vous ? ")
n = 2

# get personnes in database, return a list of tuples
def get_personnes(avecGroupe=False):
    '''This function gets personnes in the database. Returns a list of tuples.
    '''
    # Get personnes in the database
    query_personnes = '''SELECT personnes.id_personne, personnes.prenom_personne, personnes.nom_personne, personnes.email_personne, niveaux.nom_niveau, personnes_groupes.id_groupe, personnes_groupes.date
    FROM personnes
    JOIN niveaux ON personnes.niveau_personne=niveaux.id_niveau
    JOIN personnes_groupes ON personnes_groupes.id_personne = personnes.id_personne
    WHERE personnes_groupes.date = (SELECT MAX(personnes_groupes.date) FROM personnes_groupes);'''
    cursor.execute(query_personnes)
    personnes = cursor.fetchall() # A list of tuples
    return personnes 

personnes = get_personnes()


# Futur improvement
# Check if group is not the same as previews group
# date max
# "SELECT id_personne FROM personnes "
# COUNT distinct DATE 


# Function defining random groups of students
def make_random_groups(l, n):
    '''Pick random groups of n persons
    one person can not be in multiple groups
    every person has to be in a group
    '''
    # Shuffle list of students
    random.shuffle(l)

    # Create empty list of groups
    all_groups = []

    for index in range(0, len(l), n):
        group = l[index:index+n]
        all_groups.append(group)

    # Futur improvement : asign last person to group 
    #  len(l) % n
    # list_len = len(l)

    return all_groups

rand_groups = make_random_groups(personnes, n)

# NOW
# Datetime object containing current date and time
now = datetime.now()
# Datetime formatted and convertted to string for mysql = 'YYYY-MM-DD hh:mm:ss' 
datetime_string = now.strftime('%Y-%m-%d %H:%M:%S')


# Function saving groups of students in database
def save_random_groups(rand_groups):

    '''Function saving groups of students into the database'''

    # iterate through each random group
    for i in range(len(rand_groups)):
        id_group = i + 1
        # iterate through each personne
        for personne in rand_groups[i]:
            # Save each entry into the database
            query_save_group = "INSERT INTO `personnes_groupes` (`id_personne`, `id_groupe`, `date`) VALUES ('{}', '{}', '{}');".format(personne[0], id_group, datetime_string)
            # Execute query
            cursor.execute(query_save_group)
    # Commit to database
    bdd.commit()

# Execute saving function
save_random_groups(rand_groups)

# Print random groups 
def print_personnes(rand_groups):
    '''Print random groupe of students.'''

    # Display header
    header = open('header.txt', 'r')
    header_contents = header.read()
    print("\n")
    print (header_contents)
    header.close()

    for i in range(len(rand_groups)):
        # Print groupe ID
        id_group = i + 1
        print("\n Ceci est le groupe {}".format(id_group))
        for personne in rand_groups[i]:
            # Print group of students
            #  print("-", personne[1], personne[2], "-", personne[3], "- Niveau : ", personne[4])
            print("|| {: >20} || {: >16} || {: >46} || {: >16} ||".format(personne[1], personne[2], personne[3], personne[4]))
        print("-----------------------------------------------------")

print_personnes(rand_groups)

# Futur improvement
# Function printing groups of students from database
# def print_personnes_groups():
#     '''Function saving to database'''
#     personnes = get_personnes()
#     dict_group = {}
#     for personne in personnes : 
#         dict_group[personne[5]] = personne

#     for group, personne in dict_group.items():
#         print(group)
#         print(personne)

# print_personnes_groups()


# Close everything
cursor.close()
bdd.close()
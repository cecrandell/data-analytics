# Mongo Class

## Instructions

- Use the command line to create a `ClassDB` database

## Completed

```
use ClassDB
```

- Insert entries into this database for yourself and the people around you within a collection called `students`

## Completed

```
db.classroom.insert({name: 'Caroline', age: 29, favorite_python_library: 'numpy', hobbies: ['Singing', 'Soccer', 'Reading']})
```

- Each document should have a field of `name` with the person's name, a field of `favoriteLibrary` for the person's favorite Python library, a field of `age` for the person's age, and a field of `hobbies` which will hold a list of that person's hobbies.

## Completed

```
db.classroom.insert({name: 'Rachel', age: 26, favorite_python_library: 'Matplotlib', hobbies: ['Reading', 'Theatre', 'Guitar']})

db.classroom.insert({name: 'Lauren', age: 29, favorite_python_library: 'Pandas', hobbies: ['Birds', 'Puzzles', 'Traveling']})
```

- Use the `find()` commands to get a list of everyone of a specific age before using `name` to collect the entry for a single person.

## Completed

```
db.classroom.find({age: 26}).pretty()

db.classroom.find({name: 'Lauren'}).pretty()
```

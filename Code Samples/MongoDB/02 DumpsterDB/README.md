# DumpsterDB

## Instructions

- Create and use a new database called `Dumpster_DB` using the Mongo shell.

## Completed

```
use Dumpster_DB
```

- Create a collection called `divers` which will contain a string field for `name`, an integer field for `yearsDiving`, a boolean field for `stillDiving`, and an array of strings for `bestFinds`.

## Completed

```
db.divers.insert({"name":"Caroline", "yearsDiving":15, "stillDiving": true, "bestFinds":["Diamond", "Necklace", "Earrings"]})

db.divers.insert({"name":"Elizabeth", "yearsDiving":11, "stillDiving": true, "bestFinds":["Lawnmower", "Gloves"]})

db.divers.insert({"name":"Jonathan", "yearsDiving":2, "stillDiving": true, "bestFinds":["Shark Teeth", "Wig"]})
```

- Update the `yearsDiving` fields for your documents so that they are one greater than their original values.

## Completed

```
db.divers.update({"name":"Caroline"},{$set:{"yearsDiving":16}})
db.divers.update({"name":"Elizabeth"},{$set:{"yearsDiving"12}})
db.divers.update({"name":"Jonathan"},{$set:{"yearsDiving":3}})
```

- Update the `stillDiving` value for one of the documents so that it is now false.

## Completed

```
db.divers.update({"name":"Caroline"},{$set:{"stillDiving": false}})
```

- Push a new value into the `bestFinds` array for one of the documents.

## Completed

```
db.divers.update({"name":"Elizabeth"},{$push:{"bestFinds":"Lamp"}})
```

- Look through the collection, find the diver with the smallest number of `bestFinds`, and remove it from the collection.

## Completed

```
db.divers.remove({"name":"Jonathan"})
```

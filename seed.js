db.dropDatabase();
db.users.insertMany([{name: "james", age: 11}, {name: "donny", age: 23}])

// instructions to run seed.js
// $ mongo
// > use expressapp_prod
// > load("seed.js")

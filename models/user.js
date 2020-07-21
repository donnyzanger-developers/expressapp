var mongoose = require('mongoose');

const userSchema = mongoose.Schema({
    name: {
        type: String,
        unique: true
    },
    age: {
        type: Number
    },
});

module.exports = mongoose.model('user', userSchema);
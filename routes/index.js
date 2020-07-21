var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', async function(req, res, next) {
  const users = await userModel.find();
  console.log(users);
  res.render('index', { title: 'Express', users: users });
});

module.exports = router;

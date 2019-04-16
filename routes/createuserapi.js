var express = require('express');
var router = express.Router();

//this is test comment
//main operation start here
/* GET users listing. */
router.post('/', function (req, res, next) {
  var firstnamevar = req.query.firstname;
  var lastnamevar = req.query.lastname;
  var emailvar = req.query.email;
  var usernamevar = req.query.username;
  var telephonevar = req.query.telephone;
  var passwordvar = req.query.password;
  var usergroupvar = req.query.usergroup;
  //var insertsql = 'INSERT INTO users firstname="'+firstnamevar+'",lastname="'+lastnamevar+'",username="'+usernamevar+'",email="'+emailvar+'",telephone="'+telephonevar+'",password="'+passwordvar+'",usergroup='+usergroupvar;
  var insertsql = "INSERT INTO users (firstname,lastname,username,email,telephone,password,usergroup) VALUES(" + '"' + firstnamevar + '","' + lastnamevar + '","' + usernamevar + '","' + emailvar + '","' + telephonevar + '","' + passwordvar + '","' + usergroupvar + '")';
  console.log(insertsql);
  res.locals.connection.query(insertsql, function (error, results, fields) {
    if (error) throw error;
    res.send(JSON.stringify({
      "status": 200,
      "error": null,
      "response": 'user successfully created!, please check in database',
      "last_insert_id": results.insertId
    }));
  });
});
module.exports = router;
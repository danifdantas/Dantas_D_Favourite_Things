var express = require('express');
var router = express.Router();

var connect = require('../utils/sqlConnect');
var async = require('async');
/* GET home page. */
router.get('/', function (req, res, next) {
  // do a database query and get some of the hero data
  connect.query(`SELECT things_id, title, image FROM things`, (err, result) => {
    if (err) {
      throw err;
      console.log(err);
    } else {
      console.log(result);
      // console.log(result[0].image);
      // let images = result[0].image.split(',');
      // console.log(images);
      res.render('index', { things: result });
    }
  });
});
// Get individual data 
router.get('/:thing', function (req, res, next) {
  var query1 = `SELECT * FROM things WHERE things_id="${req.params.thing}"`;
  var query2 = `SELECT * FROM images WHERE things_id = '${req.params.thing}'`;

  var return_data = {};

  async.parallel([

    function (parallel_done) {
      connect.query(query1, {}, function (err, results) {
        if (err) return parallel_done(err);
        return_data.thing = results;
        parallel_done();
      });
    },
    function (parallel_done) {
      connect.query(query2, {}, function (err, results) {
        if (err) return parallel_done(err);
        return_data.images = results;
        parallel_done();
      });
    }
  ], function (err) {
    if (err) console.log(err);
    console.log(return_data);
    res.render('details', { thing: return_data.thing[0], images: return_data.images });
  });
});


module.exports = router;

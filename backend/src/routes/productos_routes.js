const express = require ('express');
const connection = require('../connection');

const router = express.Router();


router.get( '/', (req, res) => {
    const sql = 'SELECT * FROM productos';

    connection.query(sql, (error, result) => {
        if (error) {
            res.send ('Error al obtener los productos')
        }else {
            res.json (result)
        }
    })
}); 


router.get('/:id', (req, res) => {
    const sql = 'SELECT * FROM productos WHERE id= ?';
  
    connection.query(sql, [req.params.id], (err, result) => {
      if (err) {
        res.send('Error al obtener la publicacion');
      } else {
        res.json(result[0]);
      }
    });
  });

module.exports = router;
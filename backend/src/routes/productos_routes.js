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


router.get( '/:id', (req, res) => {
    const idProducto = req.params.id;

    const sql = `SELECT * FROM productos WHERE id = ?`;

    connection.query(sql, [idProducto], (error, result) => {
        if (error) {
            res.send ('Error al obtener el producto')
        }else {
            res.json (result)
        }
    })
}); 

module.exports = router;
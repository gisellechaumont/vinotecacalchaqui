const express = require ('express');
const connection = require('../connection');

const router = express.Router();


router.get( '/', (req, res) => {
    const sql = 'SELECT * FROM usuarios';

    connection.query(sql, (error, result) => {
        if (error) {
            res.send ('Error al obtener los productos')
        }else {
            res.json (result)
        }
    })
}); 

router.get( '/:id', (req, res) => {
    const idUsuario = req.params.id;
    
    const sql = `SELECT * FROM usuarios WHERE id = ? `;

    connection.query(sql, [idUsuario], (error, result) => {
        if (error) {
            res.send ('Error al obtener el producto')
        }else {
            res.json (result)
        }
    })
}); 

router.post( '/', (req, res) => {
    const sql = `INSERT INTO usuarios(nombre, apellido, email, password) VALUES (?, ?, ?, ? )`;

    const nombre = req.body.nombre
    const apellido = req.body.apellido
    const email = req.body.email
    const password = req.body.password

    connection.query(sql, [nombre, apellido, email, password], (error, result) => {
        if (error) {
            res.send ('Error al insertar usuario')
        } else {
            res.send ('Usuario agregado')
        }
    })
}); 

module.exports = router;
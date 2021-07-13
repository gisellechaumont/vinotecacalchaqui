const express = require('express');
const router = express.Router();
const conexion = require('../connection');

//Iniciar Sesion
router.post('/', (req, res) => {
    console.log(req.body)

    const sql = `SELECT * FROM usuarios WHERE email = ? AND password = ?`;
    
    conexion.query(sql, [req.body.email, req.body.password], (err, result) => {
        if (err) {
          console.log('Error al verificar el usuario');
        } else {
          if (result.length === 1) {
            console.log(result);

            const nombreCompleto = `${result[0].nombre} ${result[0].apellido}`;

            req.session.user = {
            name: nombreCompleto,
            id: result[0].id,
            };
    
            console.log(req.session.user);
    
            }
        }
    });

});

router.delete('/', (req, res) => {
    res.send({message: 'Cerrar sesión'})
});

module.exports = router;
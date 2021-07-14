const express = require('express');
const router = express.Router();
const conexion = require('../connection');


router.get('/check', (req, res) => {
  if (req.session.user) {
    res.json({message: 'ok', data: req.session.user});
  }else {
    res.json ({message: 'Error'})
  }
})


//Iniciar Sesion
router.post('/', (req, res) => {
  console.log('auth login', req.body);

  const sql = `SELECT * FROM usuarios WHERE email = ? AND password = ?`;

  conexion.query(sql, [req.body.email, req.body.password], (err, result) => {
    if (err) {
      console.log();
      res
        .status(500)
        .json({ message: 'Error al verificar el usuario', data: [] });
    } else {
      if (result.length === 1) {
        console.log(result);

        const nombreCompleto = `${result[0].nombre} ${result[0].apellido}`;

        req.session.user = {
          name: nombreCompleto,
          id: result[0].id,
        };

        res
        .status(200)
        .json({ message: 'Usuario valido', data: nombreCompleto });
      } else {
        res
          .status(401)
          .json({ message: 'Error al verificar el usuario o la contraseña', data: [] });
      }
    }
  });
});

router.delete('/', (req, res) => {
  req.session.destroy( (err) => {
    if(err){
      res
      .status(500)
      .json({ message:'Error al cerrar la sesión'});
    }else { 
      res
      .status(200)
      .json({message: 'Sesión cerrada'});
    }
  });
});

module.exports = router;

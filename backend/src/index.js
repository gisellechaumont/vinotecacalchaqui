const express = require('express');
const cors = require('cors')
const session = require('express-session')

//RUTAS
const usuariosRoutes = require('./routes/usuarios_routes');
const productosRoutes = require('./routes/productos_routes');
const authRoutes = require('./routes/auth_routes');

const app = express();

app.use(express.static('public'))

app.use(express.json());

app.use(cors({credentials: true, origin: 'http://localhost:3000'}));

app.use(
    session({
      secret: '123456',
      resave: false,
      saveUninitialized: true,
    })
  );

app.use('/usuarios', usuariosRoutes);
app.use('/productos', productosRoutes);
app.use('/auth', authRoutes);




app.listen(8000, () => {
    console.log('Servidor iniciado exitosamente');
} );
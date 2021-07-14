import React, { useEffect, useState} from 'react';

import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';

import { useParams } from 'react-router-dom';

export default function PubliDetail() {
    const {id} = useParams()
    const [productos, setProductos] = useState(null);

  useEffect(cargarDetalle, []);

  async function cargarDetalle() {
    const url = 'http://localhost:8000/productos/' + id;

    const response = await fetch(url);
    const data = await response.json();

    setProductos(data);
  }

  return (
    <Row className="d-flex justify-content-center">
      {productos && (
        <>
          <Col md={4} className="d-flex justify-content-center mt-4">
            <img
              src={`http://localhost:8000/images/${productos.imagen}`}
              className="img-fluid"
              alt="Producto"
            ></img>
          </Col>
          <Col md={4} className="mt-5">
            <h1>{productos.nombre}</h1>
            <h2>{productos.bodega}</h2>
            <h3>${productos.precio}</h3>
            <p>{productos.descripcion}</p>
          </Col>
        </>
      )}
    </Row>
  );
    
}

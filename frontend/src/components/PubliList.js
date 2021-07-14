import React, { useEffect, useState } from 'react';
import PubliCards from './PubliCards';
import Row from 'react-bootstrap/Row';

export default function PubliList() {
const [productos, setProductos] = useState([]);

  //solo me lo llama una vez
  useEffect(obtenerProd, []);

  async function obtenerProd() {
    const url = 'http://localhost:8000/productos';

    const response = await fetch(url);
    const data = await response.json();

    setProductos(data);
  }

  function obtenerCards() {
    const cards = productos.map((productos) => {
      return (
        <PubliCards
          titulo={productos.nombre}
          imagen={productos.imagen}
          precio={productos.precio}
        />
      );
    });
    return cards;
  }

  return (
    <Row className="row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4">
      {obtenerCards()}
    </Row>
  );
}
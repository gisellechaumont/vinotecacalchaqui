import React from 'react'

//BOOTSTRAP
import Card from 'react-bootstrap/Card'
import Col from 'react-bootstrap/Col'

import {Link} from 'react-router-dom'

export default function PubliCards(props) {
    const imageUrl = `http://localhost:8000/images/${props.imagen}`
    
    const cardImageStyle = {
        height: '40vh',
        objectFit: 'contain'
    };

    return (
    <Col className="my-4">
      <Link to={`/detalles/${props.id}`} className="nav-link">  
      <Card className="h-100">
            <Card.Img variant="top" style={cardImageStyle} src={imageUrl} />
    <Card.Body>
    <Card.Title>{props.titulo}</Card.Title>
  </Card.Body>
  <Card.Footer className="text-muted">
     $ {props.precio}
  </Card.Footer>
</Card>
    </Link>
        </Col>   
 )
}

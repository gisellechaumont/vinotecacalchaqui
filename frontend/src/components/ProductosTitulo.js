import React from 'react'

import Row from 'react-bootstrap/Row'
import Container from 'react-bootstrap/Container'

export default function ProductosTitulo() {
    
    const cardStyle = {
        backgroundColor: '#a3a3a3',
        backgroundColorSize: 'cover',
        fontSize: '3vh',
        padding: '1vh',
        width: '100%',
        height: '5vh',
    }
    return (
    <Container fluid className="d-flex justify-content-center" style={cardStyle}>
   <Row>
            NUESTROS PRODUCTOS
        </Row>
</Container>
)
    
}

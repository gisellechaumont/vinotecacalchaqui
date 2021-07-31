import React from 'react'

import Container from 'react-bootstrap/Container'
import Row from 'react-bootstrap/Row'

export default function Envio() {

    const envioStyle = {
        backgroundColor: '#a3a3a3',
        backgroundColorSize: 'cover',
        fontSize: '3vh',
        padding: '1vh',
        width: '100%',
        height: '5vh',
    }
    return (
        <Container fluid className="d-flex justify-content-center" style={envioStyle}>
        <Row>
            ENVÍO GRATIS A TODO EL PAÍS PARA COMPRAS MAYORES A $5000 
        </Row>
        </Container>

    )
}

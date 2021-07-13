import React from 'react'

import Container from 'react-bootstrap/Container'
import Row from 'react-bootstrap/Row'
import Form from 'react-bootstrap/Form'
import FormControl from 'react-bootstrap/FormControl'
import Button from 'react-bootstrap/Button'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faSearch } from '@fortawesome/free-solid-svg-icons';

export default function SearchBar() {

    const SearchBarStyle = {
      marginTop: '20px'
    }
    return (
      <Container style={SearchBarStyle}>
      <Row className="d-flex justify-content-center"> 
        <Form className="d-flex">
      <FormControl
        type="search"
        placeholder="Qué estás buscando?"
        className="mr-2"
        aria-label="Search"
      />
      <Button variant="outline-success">
      <FontAwesomeIcon color="pink" icon={faSearch} />
      </Button>
    </Form>
    </Row>
    </Container>
 
    )
}

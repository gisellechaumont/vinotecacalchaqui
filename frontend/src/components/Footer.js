import React from 'react'

import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import {faHeart } from '@fortawesome/free-solid-svg-icons'
import {  faGithub, faLinkedin, faInstagram, faTwitter} from '@fortawesome/free-brands-svg-icons';
import Container from 'react-bootstrap/esm/Container';

import Row from 'react-bootstrap/esm/Row';
import Col from 'react-bootstrap/esm/Col';


export default function Footer() {
    return (
    <>
    <Container fluid className="d-flex justify-content-center p-4" style={{backgroundColor: 'black', color: 'white'}}>
    <p>Made with </p> <FontAwesomeIcon color="red" icon={faHeart} /> <p>by Giselle - 2021 </p>
    <a href="https://github.com/gisellechaumont" target="_blank"><FontAwesomeIcon color="white" icon={faGithub} /> </a>
    <a href="https://www.linkedin.com/in/gisellechaumontmohr/" target="_blank"><FontAwesomeIcon color="white" icon={faLinkedin} /> </a>
    <a href="https://instagram.com/gisellechaumont" target="_blank"><FontAwesomeIcon color="white" icon={faInstagram} /> </a>
    <a href="https://twitter.com/gisellech" target="_blank"><FontAwesomeIcon color="white" icon={faTwitter} /> </a>
  
   </Container>
      
    </>
   )
}

import React, {useState} from 'react'

//REACT BOOTSTRAP -
import Modal from 'react-bootstrap/Modal'
import Button from 'react-bootstrap/Button'
import Form from 'react-bootstrap/Form'

export default function LoginModal(props) {
    
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    
    const handleEmailChange = (event) => {
        setEmail(event.target.value);
    };

    const handlePasswordChange = (event) => {
        setPassword(event.target.value);

    };

    const handleAcceptClick = () => {
        props.handleLogin(email, password);
    };

    return (
        <Modal show={props.show} onHide={props.handleCloseLoginModal}>
        <Modal.Header closeButton>
          <Modal.Title>Iniciar sesión</Modal.Title>
        </Modal.Header>
        <Modal.Body>
        <Form>
  <Form.Group>
    <Form.Label>Email </Form.Label>
    <Form.Control type="email" placeholder="Ingrese su email" value={email} onChange={ handleEmailChange } />
    <Form.Text className="text-muted">
    Ingrese un email válido 
    </Form.Text>
</Form.Group>

<Form.Group>
    <Form.Label>Contraseña</Form.Label>
    <Form.Control type="password" placeholder="Ingrese su contraseña" value={password} onChange={ handlePasswordChange } />
</Form.Group>
</Form>
</Modal.Body>
        <Modal.Footer>
        <Button variant="secondary" onClick={props.handleCloseLoginModal}> 
            Cancelar
        </Button>
          <Button variant="primary" onClick={ handleAcceptClick }>
            Aceptar
          </Button>
        </Modal.Footer>
      </Modal>
    )
}

import React from 'react'

import Carousel from 'react-bootstrap/Carousel'

export default function Header() {
    return (
        <>
        <Carousel>
  <Carousel.Item>
    <img
      className="d-block w-100 p-5"
      src="http://localhost:8000/images/carousel1.png"
      alt="First slide"
    />
  </Carousel.Item>
  <Carousel.Item>
    <img
      className="d-block w-100 p-5"
      src="http://localhost:8000/images/carousel2.png"
      alt="Second slide"
    />

  </Carousel.Item>
  <Carousel.Item>
    <img
      className="d-block w-100 p-5"
      src="http://localhost:8000/images/carousel3.png"
      alt="Third slide"
    />

 
  </Carousel.Item>
</Carousel>
</>
    )
}

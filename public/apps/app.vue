<template>
        <MDBCard>
          <MDBCardImg
            src="https://mdbootstrap.com/img/new/standard/nature/184.jpg"
            top
            alt="..."
          />
          <MDBCardBody>
            <MDBCardTitle>Card title</MDBCardTitle>
            <MDBCardText>
              Some quick example text to build on the card title and make up the bulk of the
              card's content.
            </MDBCardText>
            <MDBBtn tag="a" href="#!" color="primary">Button</MDBBtn>
          </MDBCardBody>
        </MDBCard>
</template>

<script>
  import MDBDatepicker from "mdb-vue-ui-kit/modules/MDBDatepicker";

  export default {
    name: 'App',
    components: {
      MDBDatepicker
    }
  };
</script>

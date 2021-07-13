//Code for Bootstrap form validation
let form = document.querySelector('.needs-validation');

form.addEventListener('submit', e => {
    if(!form.checkValidity() === false) {
        e.preventDefault();
        e.stopPropagation();
    }
    form.classList.add('was-validated');
});
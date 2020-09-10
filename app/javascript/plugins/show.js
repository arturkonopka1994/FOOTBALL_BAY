const qrHide = document.querySelector('.qrcode');
const showQr = document.getElementById('show');

showQr.addEventListener('click', (event) => {
  qrHide.classList.toggle("d-none");
});


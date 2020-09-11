const toggler = () => {
  const qrHide = document.querySelector('.qrcode');
  const showQr = document.getElementById('show');
  if (showQr) {
    showQr.addEventListener('click', (event) => {
      qrHide.classList.toggle("d-none");
    });
  }
};

export { toggler }

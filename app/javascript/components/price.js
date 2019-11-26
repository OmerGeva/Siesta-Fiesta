function getTotalPrice() {
  const quantity = document.getElementById('quantity');
  const hourPrice = document.getElementById('hourPrice');
  const totalPrice = document.getElementById('totalPrice');

  quantity.addEventListener('input', (event) => {
    const newTotal = event.target.value * hourPrice.innerText;
    totalPrice.innerText = '$' + newTotal;
  });
}

export { getTotalPrice };

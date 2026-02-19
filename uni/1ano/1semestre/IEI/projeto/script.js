function myFunction() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
      x.className += " w3-show";
    } else { 
      x.className = x.className.replace(" w3-show", "");
    }
  }

function openCap1() {
    window.location.href = "cap1.html";
}

// Adiciona o evento de clique ao botão
document.getElementById('open-cap1').addEventListener('click', openCap1);
document.querySelectorAll('.dropbtn').forEach(button => {
    button.addEventListener('click', function(event) {
        event.preventDefault();
        const dropdown = this.nextElementSibling;
        dropdown.style.display = dropdown.style.display === 'block' ? 'none' : 'block';
    });
});

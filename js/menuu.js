window.onscroll = function() {myFunction()};

// Get the header
var headerr = document.getElementById("myHeader");

// Get the offset position of the navbar
var sticky = headerr.offsetTop;

// Add the sticky class to the header when you reach its scroll position. Remove "sticky" when you leave the scroll position
function myFunction() {
  if (window.pageYOffset > sticky) {
    headerr.classList.add("sticky");
  } else {
    headerr.classList.remove("sticky");
  }
}

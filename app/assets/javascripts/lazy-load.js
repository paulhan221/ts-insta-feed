document.addEventListener('scroll', function (event) {
  var bottomFivePercent = (document.body.scrollHeight - window.innerHeight) * .95;
  if (window.scrollY >= bottomFivePercent) {
    lazyLoad()
  }
});

function lazyLoad() {
  $('.instagram-container').append("<h1>waka</h1>");
}
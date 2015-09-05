document.addEventListener('scroll', function (event) {
  var bottomTenPercent = (document.body.scrollHeight - window.innerHeight) * .9;
  if (window.scrollY >= bottomTenPercent) {
    lazyLoad()
  }
});

function lazyLoad() {
  console.log('waka');
}
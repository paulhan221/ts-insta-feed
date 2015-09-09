fetching = false;

document.addEventListener('scroll', function (event) {
  var bottomFivePercent = (document.body.scrollHeight - window.innerHeight) * .95;
  if (window.scrollY >= bottomFivePercent) {
    if (fetching == false) {
      $('.fetch-pictures').last().click();
      fetching = true;
    }
  }
});



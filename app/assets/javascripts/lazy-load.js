fetching = false;

document.addEventListener('scroll', function (event) {
  var bottomFivePercent = (document.body.scrollHeight - window.innerHeight) * .99;
  if (window.scrollY >= bottomFivePercent) {
    if (fetching == false) {
      $('#loading').css('display', 'block');
      $('.fetch-pictures').last().click();
      fetching = true;
    }
  }
});



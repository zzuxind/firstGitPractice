let ajax = {
    request(url, method, callbak, params) {
      var xhr = new XMLHttpRequest();
      xhr.onreadystatechange = (function (myxhr) {
        return function() {
          if (myxhr.readyState === 4 && myxhr.status === 200) {
            callbak(myxhr);
          }
        }
      })(xhr);
      xhr.open(method, url, true);
      xhr.send(params || '');
    }
  }
  
  function myCallback(xhr) {
    alert(xhr.responseText);
  }
  ajax.request('somefile.txt', 'get', myCallback);
  ajax.request('script.php', 'post', myCallback, 'first=John&last=Smith');
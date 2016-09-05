1. common HTTP status codes
  * **200 = OK =** everything could be processed with no problems, code to aim for! 
  * **300 = Multiple Choices =** requested resource has different choices that cannot be resolved into 1
  * **301 = Moved Permanently =** requested resource has been assigned a new permanent URI, future refs to the resource should use one of the returned URIs
  * **302 = Found =** requested resource temporarily under a different URI. Because redirection might be altered on occasion, client SHOULD continue to use the request-URI for future requests
  * **304 = Not Modified =** the client performed a conditional GET request, accessed is allowed, but document has NOT been modified 
  * **307 = Temporary Redirect =** requested resource temporarily under a different URI. Client SHOULD continue to use Request-URIs for future requests. Response may not be cacheable
  * **400 = Bad request =** request not understood by server, due to bad syntax. SHOULD NOT repeat request without modifications.
  * **401 = Unauthorized =** request requires user authentication. 
  * **403 = Forbidden =** server understood request, but refusing to fill. Request SHOULD NOT be repeated
  * **404 = Not Found =** unable to find anything matching the request URI. Unknown whether temporary or permanent condition.
  * **410 = Gone =** requested resource no longer available and no forwarding address known/given. 
  * **500 = Internal Server Error =** server encountering condition preventing it from fulfilling request
  * **501 = Not Implemented =** server doesn't support functionality to fulfill request
  * **503 = Service Unavailable =** server unable to handle HTTP request at the time. 
  * **550 = Permission Denied =** account currently logged into doesnt have permission to perform request

2. difference between a GET request and a POST request. When each might be used
  * **GET request** used for retrieving(requesting) data via a specified resource/path (html, css, images, etc), 
    * query string is sent in the url 
    * can be cached
    * remain in browser history / can be bookmarked
    * have length restrictions (max url length=2048 chars), only ASCII chars allowed
  * **POST request** used to submit data to be processed to a specified resource
    * query string is sent in the http message body
    * never cached
    * do not remain in browser history
    * no restrictions on data length/type
    * data resubmitted on reload/back buttons

3. What is a cookie? How does it relate to HTTP requests?
  * sent as a header with every HTTP request, small piece of data sent from a site and stored in a user's browser while user is browsing
  * often used to be able to tell if requests are coming from the same user --> 
    * can keep a user logged in
    * session management (shopping carts)
    * personalization (user prefs)
    * tracking (analyzing a users behavior)

###references
* Status codes = 
  * [smartlab software - list of common HTTP status codes](https://www.smartlabsoftware.com/ref/http-status-codes.htm)
  * [w3 - 10 Status code definitions](https://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10)
* get vs post
  * [w3 schools - get vs post](http://www.w3schools.com/tags/ref_httpmethods.asp)

* cookies
  * [MDN - HTTP cookies](https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies)
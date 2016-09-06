#jQuery

##Plan of Attack
1. 10 minutes = Compare Chapter topics from Jon Duckett book and CodeAcademy course
  * take note of those
2. 50 minutes = Research those topics! (actual --> went over)
3. ?? minutes = See if I can find a jQuery livecode
  * code along with it (if found)
4. remainder = Test things out!

##Research
#### How to include jQuery in HTML file (syntax)/basic use guide
* include jQuery script above `</body>` tag. always keep version name in the file name. 
* include second JavaScript file (using jQuery selectors/methods to update content of the HTML page
```html
<script src= "js/jquery-1.11.0.js"></script>
<script src = "js/basic-example.js"></script>
</body>
```

#### common jQuery Selectors --> **finish recording these later!!!**
* cheatsheets --> 
 * [jQuery Quick API Reference](https://oscarotero.com/jquery/)
 * [w3schools jQuery Selectors](http://www.w3schools.com/jquery/jquery_ref_selectors.asp)
* basics
 * `*` selects all elements
 * `#id` selects elements with id
 * `.class` selects elements with class
 * `.class,.class` selects elements with one class or the other
 * `element` selects elements with the tag (aka `("p")` will select all `<p>` elements
 * 'el1,el2,el3` selects multiple elements
* basic filters
* content filters
* visibility filters
* child filters
* hierarchy
* attribute
* forms

#### common jQuery Functions/ DO THINGS WITH YOUR SELECTION!
* cheatsheets -->
 * [eduonix - top 10 jQuery Functions Which You Must Know As a Developer](https://www.eduonix.com/blog/web-programming-tutorials/top-10-jquery-functions-which-you-must-know-as-a-developer/)more effect based
 * [tuts plus - 20 helpful jquery methods you should be using](http://code.tutsplus.com/tutorials/20-helpful-jquery-methods-you-should-be-using--net-10521)
 * p 304 & 305 in jon duckett book
* content filters
 * get/change content
    * `.html()` gets or sets an inner HTML of an element
    * `.text()` gets the combined text of an element and its children
    * `.replaceWith()`
    * `.remove()`
 * elements
    *  `.before()`
    *  `.after()`
    *  `.prepend()`injects an element into the DOM before the selected element
    *  `.append()` inject an element into the DOM after the selected element
    *  `.remove()`
    *  `.clone()`
    *  `.unwrap()`
    *  `.detach()`
    *  `.empty()`
    *  `.add()`
 * attributes
    * `.attr()` gets or sets any attribute of an element
    * `.removeAttr()`
    * `.addClass` / `.removeClass()`
    * `.css()` gets or sets the style attribute of an element
 * form values
    * `val()` gets or sets the value attribute on an element
    * `isNumeric()`
* Finding Elements --> **RECORD THESE LATER!!!!!**
 * general
 * filter/test
 * order in selection
* Dimension/Position --> **RECORD THESE LATER!!!!!!**
 * dimension
 * position
* effects and animation
 * basic
    * `.hide()` hides the selected element
    * `.show()` opposite of hide, shows element (hide function must be used before it)
    * `.toggle()` --> not quite understanding this **LOOK UP MORE LATER** toggles show/hide
 * slide functions
    * `.slideToggle()`
    * `.slideUp()`
    * `.slideDown()`
 * fade
    * `.slideDown()`
    * `slideUp()`
    * `.slideToggle`
 * custom --> **LOOK UP MORE ABOUT THESE LATER**
    * `.delay()` 
    * ` .stop()`
    * `.animate()`

#### common jQuery events --> find a cheatsheet?
* references
 * [w3 schools- jQuery Event Methods](http://www.w3schools.com/jquery/jquery_events.asp) 
* mouse events
 * `.click()` executed when user clicks on the html element
 * `.dblclick()` executed when user doubleclicks on html element
 * `.mouseenter()` executed when mouse pointer enters the html element
 * `.mouseleave()` executed when mouse pointer leaves the html element
 * `.hover()` combines mouseenter and mouseleave
* keyboard events
 * `.keypress()`
 * `.keydown()`
 * `.keyup()`
* form events
 * `.submit()`
 * `.change()`
 * `.focus()` executed when the form field gets focus (????? **LOOK MORE INTO THIS**)
 * `.blur()` executed when the form field loses focus
* document/window events
 * `.load()`
 * `.resize()`
 * `.scroll()`
 * `.unload()`
* `.on()` 




##Notes
###Jon Duckett book's jQuery chapter summary
* jQuery is a JavaScript file you include in your pages
* Once included, it makes it faster and easier to write cross-browser JavaScript (based on 2 steps)
 * Using CSS-style selectors to collect one or more nodes from the DOM tree
 * Using jQuery's built-in methods to work with the elements in that selection
* jQuery's CSS-style selector syntax makes it easier to select elements to work with. It also has methods that make it easier to traverse the DOM
* jQuery makes it easier to handle events because the event methods work across all browsers
* jQuery offers methods that make it quick and simple to achieve a range of tasks that JavaScript programmers commonly need to perform

###CodeAcademy course topics
* jQuery Functions and Selectors
* Modifying HTML elements
* jQuery events (beyond just .click() and .hover() )
* jQuery Effects (beyond just .hide() and .fadeOut() )
* projects
 * make a meme generator using the .keyup event and .text()
 * use .submit event to make an error message appear when fields are filled incorrectly
 * create a commenting service using the .keypress event, .text(), and .appendTo
 * use click events to help a weather service app display hourly forecasts
 * add fildering a a portfolio page using .addClass and .removeClass
 * help a task management app make a to-do list interactive using the .submit event to .appentTo() new items and .click event to .remove() items
 * and [more](https://www.codecademy.com/learn/jquery)
 
##Resources/Refs

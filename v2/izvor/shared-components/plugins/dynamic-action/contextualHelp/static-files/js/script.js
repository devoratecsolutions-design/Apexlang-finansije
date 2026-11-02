/* globals apex,$ */
window.CONTEXTUALHELP = window.CONTEXTUALHELP || {};

//Execute script
CONTEXTUALHELP.main = function(init) { 

   //Call Initialization Code
   if (init && typeof init == 'function') {
        var config = {};
        init.call(this, config);
        const driverObj = window.driver.js.driver(config);
        driverObj.drive();
   }

}
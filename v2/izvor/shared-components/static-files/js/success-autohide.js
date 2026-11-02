window.addEventListener('load', function() {
    var container = document.getElementById('APEX_SUCCESS_MESSAGE');
    if (!container) return;

    function scheduleHide() {
        if ( document.getElementById('t_Alert_Success') ) {
            setTimeout( function() {
                apex.message.hidePageSuccess();
            }, 3000 );
        }
    }

    // slučaj: poruka je već prisutna pri učitavanju stranice
    scheduleHide();

    // slučaj: poruka se ubaci naknadno (npr. posle zatvaranja modala, AJAX refresh regiona...)
    var observer = new MutationObserver(function() {
        scheduleHide();
    });
    observer.observe(container, { childList: true, subtree: true });
});


  

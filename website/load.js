function load(redirect) {
    var container = document.body;
    container.style.marginTop = '2000px';
    container.style.overflow = 'hidden';
    setTimeout(function () {
        window.location.replace(redirect);
    }, 100);
}
document.addEventListener("DOMContentLoaded", function(event) {
    const headers = document.getElementsByClassName("header");

    [].forEach.call(headers, el => {
        el.addEventListener("click", e => {
            e.target.nextElementSibling.classList.toggle("hidden");
        });
    });
});

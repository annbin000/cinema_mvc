document.addEventListener("DOMContentLoaded", function(event) {
    const headers = document.getElementsByClassName("header");

    [].forEach.call(headers, el => {
        el.addEventListener("click", e => {
            $.ajax({
                type: "GET",
                url: '/ComeOut',
                data: {
                    id: e.currentTarget.dataset.cinemaId
                },
                // success: function(data){
                //     alert(data);
                // }
            });
            e.target.nextElementSibling.classList.toggle("hidden");
        });
    });
});
